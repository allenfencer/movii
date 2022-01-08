// To parse this JSON data, do
//
//     final registration = registrationFromJson(jsonString);

import 'dart:convert';

Registration registrationFromJson(String str) =>
    Registration.fromJson(json.decode(str));

String registrationToJson(Registration data) => json.encode(data.toJson());

class Registration {
  Registration({
    this.username,
    this.fullName,
  });

  String? username;
  String? fullName;

  factory Registration.fromJson(Map<String, dynamic> json) => Registration(
        username: json["username"],
        fullName: json["full_name"],
      );

  Map<String, dynamic> toJson() => {
        "username": username,
        "full_name": fullName,
      };
}
