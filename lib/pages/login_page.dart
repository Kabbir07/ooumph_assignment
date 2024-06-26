import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:math' as math;

import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:ooumph_assingment/models/loginDataModel.dart';
import 'package:ooumph_assingment/pages/profile_page.dart';
import 'package:ooumph_assingment/widgets/loading_dialog.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var switchVal = false;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final String loginMutation = """
mutation LoginByUsernameEmailPhone( \$password: String!,\$usernameEmailPhone: String!) {
    loginByUsernameEmailPhone(password: \$password, usernameEmailPhone: \$usernameEmailPhone ) {
        token
        user {
            id    
            username
            firstName
            lastName
            email
            isStaff
            isActive
            dateJoined
        }
    }
}
  """;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text(
                'OOUMPH',
                style: TextStyle(
                  fontFamily: "Outfit-ExtraBold",
                  fontSize: 50,
                  color: Colors.white70,
                  // shadows: ,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(4.0, 3.0),
                      blurRadius: 8.0,
                      color: Color.fromARGB(255, 154, 150, 150),
                    ),
                  ],
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.8),
                        offset: const Offset(-10, -10),
                        blurRadius: 10,
                      ),
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.8),
                        offset: const Offset(10, 10),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Image.asset(
                      "assets/images/ooump_logo.png",
                      // height: ,
                      // color: Color(Colors.grey.value),
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Apply Account',
                style: TextStyle(
                  // fontFamily: "Lato",
                  fontSize: 20,
                  letterSpacing: 2,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              // Textfield
              Container(
                decoration: ShapeDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.grey.shade300, Colors.white],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: const [0.0, 0.3],
                    tileMode: TileMode.clamp,
                  ),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextField(
                    controller: emailController,
                    expands: false,
                    style: const TextStyle(color: Colors.black),
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(12.0),
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.black54,
                        ),
                        hintText: 'Email',
                        hintStyle: TextStyle(color: Colors.black45),
                        border: InputBorder.none),
                  ),
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              // Textfield
              Container(
                decoration: ShapeDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.grey.shade300, Colors.white],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: const [0.0, 0.3],
                    tileMode: TileMode.clamp,
                  ),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextField(
                    controller: passwordController,
                    expands: false,
                    style: const TextStyle(color: Colors.black),
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(12.0),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.black54,
                        ),
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.black45),
                        border: InputBorder.none),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Transform.scale(
                    scale: 0.7,
                    child: CupertinoSwitch(
                        // trackColor: Colors.grey,
                        thumbColor: Colors.grey,
                        value: switchVal,
                        onChanged: (value) {
                          setState(() {
                            switchVal = value;
                          });
                        }),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "I accept all the terms and conditions",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black54),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),

              Mutation(
                options: MutationOptions(
                  document: gql(loginMutation),
                  onCompleted: (dynamic resultData) {
                    Get.back();
                    var data = resultData['loginByUsernameEmailPhone'];
                    print(data);

                    Get.to(() => const ProfilePage());
                  },
                  onError: (OperationException? error) {
                    print('Login failed: ${error?.graphqlErrors}');
                    Get.back();
                    // Get.to(() => const ProfilePage());
                  },
                ),
                builder: (RunMutation runMutation, QueryResult? result) {
                  return GestureDetector(
                    onTap: () {
                      runMutation({
                        'password': passwordController.text.trim().toString(),
                        'usernameEmailPhone':
                            emailController.text.trim().toString()
                      });
                      if (emailController.text.isNotEmpty &&
                          passwordController.text.isNotEmpty) {
                        showDialog(
                          context: context,
                          builder: (ctx) => const LoadingDialog(),
                        );
                      }
                    },
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(22)),
                        gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: [
                            Colors.red,
                            Colors.blue,
                            Colors.green,
                            Colors.lightGreenAccent,
                          ],
                        ),
                      ),
                      child: Padding(
                          padding: const EdgeInsets.fromLTRB(3, 1, 3, 4),
                          child: Container(
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  color: Colors.white),
                              child: const Center(
                                  child: Text(
                                'Continue',
                                style: TextStyle(
                                    fontFamily: "Lato",
                                    fontSize: 20,
                                    color: Colors.black38,
                                    fontWeight: FontWeight.bold),
                              )))),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 2,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    "Or",
                    style: TextStyle(
                        color: Colors.grey.shade800,
                        fontFamily: "Outfit-ExtraBold",
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: Container(
                      height: 2,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Or create Account using social media",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade600),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.8),
                            offset: const Offset(-10, -10),
                            blurRadius: 10,
                          ),
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.8),
                            offset: const Offset(10, 10),
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Image.asset(
                          "assets/images/fb.png",
                          // height: ,
                          color: Color(Colors.grey.value),
                        ),
                      )),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.8),
                            offset: const Offset(-10, -10),
                            blurRadius: 10,
                          ),
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.8),
                            offset: const Offset(10, 10),
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Image.asset(
                          "assets/images/google.png",
                          // height: ,
                          color: Color(Colors.grey.value),
                        ),
                      )),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.8),
                            offset: const Offset(-10, -10),
                            blurRadius: 10,
                          ),
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.8),
                            offset: const Offset(10, 10),
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Image.asset(
                          "assets/images/apple.png",
                          // height: ,
                          color: Color(Colors.grey.value),
                        ),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
