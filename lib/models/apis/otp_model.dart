// To parse this JSON data, do
//
//     final otp = otpFromJson(jsonString);

import 'dart:convert';

Otp otpFromJson(String str) => Otp.fromJson(json.decode(str));

String otpToJson(Otp data) => json.encode(data.toJson());

class Otp {
    Otp({
        this.success,
        this.response,
        this.details,
    });

    bool? success;
    Response? response;
    Details? details;

    factory Otp.fromJson(Map<String, dynamic> json) => Otp(
        success: json["success"],
        response: Response.fromJson(json["response"]),
        details: Details.fromJson(json["details"]),
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "response": response?.toJson(),
        "details": details?.toJson(),
    };
}

class Details {
    Details({
        this.message,
    });

    String? message;

    factory Details.fromJson(Map<String, dynamic> json) => Details(
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "message": message,
    };
}

class Response {
    Response({
        this.refresh,
        this.access,
        this.user,
    });

    String? refresh;
    String? access;
    User? user;

    factory Response.fromJson(Map<String, dynamic> json) => Response(
        refresh: json["refresh"],
        access: json["access"],
        user: User.fromJson(json["user"]),
    );

    Map<String, dynamic> toJson() => {
        "refresh": refresh,
        "access": access,
        "user": user?.toJson(),
    };
}

class User {
    User({
        this.userId,
        this.fullName,
        this.phone,
    });

    int? userId;
    String? fullName;
    String? phone;

    factory User.fromJson(Map<String, dynamic> json) => User(
        userId: json["user_id"],
        fullName: json["full_name"],
        phone: json["phone"],
    );

    Map<String, dynamic> toJson() => {
        "user_id": userId,
        "full_name": fullName,
        "phone": phone,
    };
}
