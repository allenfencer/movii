// To parse this JSON data, do
//
//     final token = tokenFromJson(jsonString);

import 'dart:convert';

Token tokenFromJson(String str) => Token.fromJson(json.decode(str));

String tokenToJson(Token data) => json.encode(data.toJson());

class Token {
    Token({
        this.refresh,
    });

    String? refresh;

    factory Token.fromJson(Map<String, dynamic> json) => Token(
        refresh: json["refresh"],
    );

    Map<String, dynamic> toJson() => {
        "refresh": refresh,
    };
}
