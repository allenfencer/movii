// To parse this JSON data, do
//
//     final login = loginFromJson(jsonString);

import 'dart:convert';

Login loginFromJson(String str) => Login.fromJson(json.decode(str));

String loginToJson(Login data) => json.encode(data.toJson());

class Login {
  Login({
    this.username,
  });

  String? username;

  factory Login.fromJson(Map<String, dynamic> json) => Login(
        username: json["username"],
      );

  Map<String, dynamic> toJson() => {
        "username": username,
      };
}
