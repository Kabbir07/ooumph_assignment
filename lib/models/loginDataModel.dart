class LoginDataModel {
  Data? data;

  LoginDataModel({this.data});

  LoginDataModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  LoginByUsernameEmailPhone? loginByUsernameEmailPhone;

  Data({this.loginByUsernameEmailPhone});

  Data.fromJson(Map<String, dynamic> json) {
    loginByUsernameEmailPhone = json['loginByUsernameEmailPhone'] != null
        ? new LoginByUsernameEmailPhone.fromJson(
            json['loginByUsernameEmailPhone'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.loginByUsernameEmailPhone != null) {
      data['loginByUsernameEmailPhone'] =
          this.loginByUsernameEmailPhone!.toJson();
    }
    return data;
  }
}

class LoginByUsernameEmailPhone {
  String? token;
  User? user;

  LoginByUsernameEmailPhone({this.token, this.user});

  LoginByUsernameEmailPhone.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    return data;
  }
}

class User {
  String? id;
  String? username;
  String? firstName;
  String? lastName;
  String? email;
  bool? isStaff;
  bool? isActive;
  String? dateJoined;

  User(
      {this.id,
      this.username,
      this.firstName,
      this.lastName,
      this.email,
      this.isStaff,
      this.isActive,
      this.dateJoined});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    email = json['email'];
    isStaff = json['isStaff'];
    isActive = json['isActive'];
    dateJoined = json['dateJoined'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['username'] = this.username;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['email'] = this.email;
    data['isStaff'] = this.isStaff;
    data['isActive'] = this.isActive;
    data['dateJoined'] = this.dateJoined;
    return data;
  }
}
