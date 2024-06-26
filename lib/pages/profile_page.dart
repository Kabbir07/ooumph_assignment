import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ooumph_assingment/widgets/apeal_circle.dart';
import 'package:ooumph_assingment/widgets/humanity_cirlce.dart';
import 'package:ooumph_assingment/widgets/iq_circle.dart';
import 'package:ooumph_assingment/widgets/social_cirlce.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.grey.shade200,
          body: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(Icons.arrow_back_ios_new),
                    const Column(
                      children: [
                        Text(
                          "(0.0 vibes)",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                        ),
                        Text(
                          "4.2",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        const Text(
                          "IQ",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                        ),
                        IqCircle()
                      ],
                    ),
                    Column(
                      children: [
                        const Text(
                          "Apeal",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                        ),
                        ApealCircle()
                      ],
                    ),
                    Column(
                      children: [
                        const Text(
                          "Social",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                        ),
                        SocialCircle()
                      ],
                    ),
                    Column(
                      children: [
                        const Text(
                          "Humanity",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                        ),
                        HumanityCircle()
                      ],
                    ),
                    const Column(
                      children: [
                        Text(
                          "Vibes\nMatch",
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "70%",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
                Container(
                  width: double.infinity,
                  // height: 200,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3))
                      ],
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Flexible(
                              flex: 1,
                              child: Container(
                                width: 100,
                                height: 100,
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
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 60,
                            ),
                            Flexible(
                              flex: 3,
                              child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Charlotte Nolan",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black87),
                                          ),
                                          Text("@charlottnolan880",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black54))
                                        ],
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white60,
                                            boxShadow: const [
                                              BoxShadow(
                                                  color: Colors.black12,
                                                  spreadRadius: 5,
                                                  blurRadius: 7,
                                                  offset: Offset(0, 3))
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "Edit Profile",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.blue.shade400),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 25,
                                  ),
                                  const Text(
                                    "Things may come to those who wait,but only the things will come to those who love.",
                                    style: TextStyle(
                                        color: Colors.black54,
                                        height: 1,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        const Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.badge,
                                  color: Colors.black54,
                                  size: 16,
                                ),
                                Text(
                                  "CEO, Ooumph",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black54),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.home,
                                  color: Colors.black54,
                                  size: 16,
                                ),
                                Text(
                                  "Lucknow, India",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ],
                        ),
                        Container(
                          // color: Colors.red,
                          alignment: Alignment.centerRight,
                          child: Column(
                            children: [
                              const SizedBox(
                                width: 200,
                                height: 20,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "vibers : 5.2k",
                                      style: TextStyle(
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black54),
                                    ),
                                    Text("Posts : 25",
                                        style: TextStyle(
                                            fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black54))
                                  ],
                                ),
                              ),
                              Container(
                                width: 240,
                                height: 90,
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(40)),
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Stack(
                                      children: [
                                        Container(
                                          alignment: Alignment.centerRight,
                                          width: 200,
                                          height: 60,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: const [
                                                BoxShadow(
                                                    color: Colors.white,
                                                    spreadRadius: 5,
                                                    blurRadius: 7,
                                                    offset: Offset(-10, 10)),
                                                BoxShadow(
                                                    color: Color.fromARGB(
                                                        31, 106, 105, 105),
                                                    spreadRadius: 5,
                                                    blurRadius: 7,
                                                    offset: Offset(10, -10))
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(40)),
                                          child: const Padding(
                                            padding: EdgeInsets.only(right: 20),
                                            child: Text("2.3k",
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black54)),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.centerRight,
                                          margin:
                                              const EdgeInsets.only(right: 10),
                                          width: 140,
                                          height: 60,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: const [
                                                BoxShadow(
                                                    color: Colors.black12,
                                                    spreadRadius: 5,
                                                    blurRadius: 7,
                                                    offset: Offset(0, 3))
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(40)),
                                          child: const Padding(
                                            padding: EdgeInsets.only(right: 20),
                                            child: Text("2.3k",
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black54)),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          margin:
                                              const EdgeInsets.only(right: 10),
                                          width: 80,
                                          height: 60,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: const [
                                                BoxShadow(
                                                    color: Colors.black12,
                                                    spreadRadius: 5,
                                                    blurRadius: 7,
                                                    offset: Offset(0, 3))
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(40)),
                                          child: const Text("15",
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black54)),
                                        ),
                                      ],
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(left: 20, right: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            "Inner",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black54),
                                          ),
                                          Text("Outer",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black54)),
                                          Text("Universe",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black54))
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 80,
                          child: Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                      decoration: BoxDecoration(
                                          gradient: RadialGradient(colors: [
                                            Colors.grey.shade100,
                                            Colors.grey.shade200
                                          ]),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.shade300,
                                              spreadRadius: 1,
                                              blurRadius: 5,
                                              offset: const Offset(10, 10),
                                            ),
                                            const BoxShadow(
                                              color: Colors.white,
                                              spreadRadius: 1,
                                              blurRadius: 5,
                                              offset: Offset(-10, -10),
                                            ),
                                          ]),
                                      child: const Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.people_sharp,
                                            color: Colors.black54,
                                          ),
                                          Text(
                                            "People",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black54),
                                          )
                                        ],
                                      )),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                      decoration: BoxDecoration(
                                          gradient: RadialGradient(colors: [
                                            Colors.grey.shade100,
                                            Colors.grey.shade200
                                          ]),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.shade300,
                                              spreadRadius: 1,
                                              blurRadius: 5,
                                              offset: const Offset(10, 10),
                                            ),
                                            const BoxShadow(
                                              color: Colors.white,
                                              spreadRadius: 1,
                                              blurRadius: 5,
                                              offset: Offset(-10, -10),
                                            ),
                                          ]),
                                      child: const Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.content_copy,
                                            color: Colors.pink,
                                          ),
                                          Text("Content",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.pink))
                                        ],
                                      )),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                      decoration: BoxDecoration(
                                          gradient: RadialGradient(colors: [
                                            Colors.grey.shade100,
                                            Colors.grey.shade200
                                          ]),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.shade300,
                                              spreadRadius: 1,
                                              blurRadius: 5,
                                              offset: const Offset(10, 10),
                                            ),
                                            const BoxShadow(
                                              color: Colors.white,
                                              spreadRadius: 1,
                                              blurRadius: 5,
                                              offset: Offset(-10, -10),
                                            ),
                                          ]),
                                      child: const Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.groups,
                                            color: Colors.black54,
                                          ),
                                          Text("Comunity",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black54))
                                        ],
                                      )),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        gradient: RadialGradient(colors: [
                                          Colors.grey.shade100,
                                          Colors.grey.shade200
                                        ]),
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.shade300,
                                            spreadRadius: 1,
                                            blurRadius: 5,
                                            offset: const Offset(10, 10),
                                          ),
                                          const BoxShadow(
                                            color: Colors.white,
                                            spreadRadius: 1,
                                            blurRadius: 5,
                                            offset: Offset(-10, -10),
                                          ),
                                        ]),
                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.shopify,
                                          color: Colors.black54,
                                        ),
                                        Text("Shop",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black54))
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TabBar(
                          dividerColor: Colors.grey.shade400,
                          dividerHeight: 2,
                          unselectedLabelColor: Colors.grey,
                          indicatorWeight: 4,
                          indicatorColor: Colors.pink,
                          labelColor: Colors.pink,
                          labelStyle: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                          isScrollable: true,
                          tabs: const [
                            Tab(
                              child: Row(
                                children: [
                                  Icon(Icons.people_sharp),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text('Truth'),
                                ],
                              ),
                            ),
                            Tab(
                              child: Row(
                                children: [
                                  Icon(Icons.people_sharp),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text('Fun'),
                                ],
                              ),
                            ),
                            Tab(
                              child: Row(
                                children: [
                                  Icon(Icons.people_sharp),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text('Debate'),
                                ],
                              ),
                            ),
                            Tab(
                              child: Row(
                                children: [
                                  Icon(Icons.people_sharp),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text('Opportunity'),
                                ],
                              ),
                            ),
                          ],
                          controller: _tabController,
                          indicatorSize: TabBarIndicatorSize.tab,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        gradient: RadialGradient(colors: [
                                          Colors.grey.shade100,
                                          Colors.grey.shade200
                                        ]),
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.shade300,
                                            spreadRadius: 1,
                                            blurRadius: 5,
                                            offset: const Offset(10, 10),
                                          ),
                                          const BoxShadow(
                                            color: Colors.white,
                                            spreadRadius: 1,
                                            blurRadius: 5,
                                            offset: Offset(-10, -10),
                                          ),
                                        ]),
                                    child: Row(
                                      // mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        // Icon(
                                        //   Icons.groups,
                                        //   color: Colors.black54,
                                        // ),
                                        Container(
                                          height: 30,
                                          width: 30,
                                          decoration: const BoxDecoration(
                                              color: Colors.red,
                                              shape: BoxShape.circle),
                                          child: Image.asset(
                                              "assets/images/ooump_logo.png"),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Text("Seaarch",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black54))
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        gradient: RadialGradient(colors: [
                                          Colors.grey.shade100,
                                          Colors.grey.shade200
                                        ]),
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.shade300,
                                            spreadRadius: 1,
                                            blurRadius: 5,
                                            offset: const Offset(10, 10),
                                          ),
                                          const BoxShadow(
                                            color: Colors.white,
                                            spreadRadius: 1,
                                            blurRadius: 5,
                                            offset: Offset(-10, -10),
                                          ),
                                        ]),
                                    child: Row(
                                      // mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        // Icon(
                                        //   Icons.groups,
                                        //   color: Colors.black54,
                                        // ),
                                        Container(
                                          height: 30,
                                          width: 30,
                                          decoration: const BoxDecoration(
                                              color: Colors.red,
                                              shape: BoxShape.circle),
                                          child: Image.asset(
                                              "assets/images/ooump_logo.png"),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Text("Circle",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black54))
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        gradient: RadialGradient(colors: [
                                          Colors.grey.shade100,
                                          Colors.grey.shade200
                                        ]),
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.shade300,
                                            spreadRadius: 1,
                                            blurRadius: 5,
                                            offset: const Offset(10, 10),
                                          ),
                                          const BoxShadow(
                                            color: Colors.white,
                                            spreadRadius: 1,
                                            blurRadius: 5,
                                            offset: Offset(-10, -10),
                                          ),
                                        ]),
                                    child: Row(
                                      // mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        // Icon(
                                        //   Icons.groups,
                                        //   color: Colors.black54,
                                        // ),
                                        Container(
                                          height: 30,
                                          width: 30,
                                          decoration: const BoxDecoration(
                                              color: Colors.red,
                                              shape: BoxShape.circle),
                                          child: Image.asset(
                                              "assets/images/ooump_logo.png"),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Text("Universe",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black54))
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                          ),
                          itemCount: 3,
                          shrinkWrap: true,
                          primary: false,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Container(
                                // padding: EdgeInsets.all(10),
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                    // color: Colors.amber,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      right: 0,
                                      left: 0,
                                      top: 0,
                                      bottom: 0,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          "assets/images/unp_img.jpg",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                        right: 4,
                                        top: 4,
                                        child: Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                              // color: Colors.black12,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey.shade600,
                                                  spreadRadius: 1,
                                                  blurRadius: 5,
                                                  // offset: Offset(10, 10),
                                                ),
                                              ],
                                              shape: BoxShape.circle),
                                          child: const Center(
                                            child: Text(
                                              "1.1",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15),
                                            ),
                                          ),
                                        ))
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          // floatingActionButton: FloatingActionButton.extended(
          //   elevation: 4.0,
          //   icon: const Icon(Icons.add),
          //   label: const Text('Add a task'),
          //   onPressed: () {},
          // ),
          // floatingActionButtonLocation:
          //     FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomAppBar(
            // hasNotch: false,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.home_outlined),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  child: Icon(
                    Icons.add_circle,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.favorite_outline_sharp),
                  onPressed: () {},
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    // gradient: RadialGradient(
                    //     colors: [Colors.grey.shade100, Colors.grey.shade200]),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Repo",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.amber.shade600)),
                          const Text("99K",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black54)),
                        ],
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: const BoxDecoration(
                            color: Colors.red, shape: BoxShape.circle),
                        child: Image.asset("assets/images/ooump_logo.png"),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
