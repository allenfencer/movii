import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:movii/models/apis/login_model.dart';
import 'package:movii/models/apis/otp_model.dart';
import 'package:movii/models/apis/register_model.dart';
import 'package:movii/models/apis/token_model.dart';

String baseUrl = 'http://65.2.157.128';

class SignUpSevice {
  Future<Registration> postUserData(String phoneNumber, String fullname) async {
    String urlName = '/movies/register/';
    var headers = {'Content-Type': 'application/json'};
    var request = http.Request('POST', Uri.parse(baseUrl + urlName));
    request.body = jsonEncode({"username": phoneNumber, "full_name": fullname});
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();
    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
      return registrationFromJson(request.body);
    } else {
      print(response.reasonPhrase);
      throw Exception('Could not send data to the server');
    }
  }

  Future<Login> loginUser(String phoneNumber) async {
    print('welcome to login datat');
    String urlName = '/movies/login/';
    var headers = {'Content-Type': 'application/json'};
    var request = http.Request('POST', Uri.parse(baseUrl + urlName));
    request.body = json.encode({"username": phoneNumber});
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.first);
      print(await response.stream.bytesToString());
      return loginFromJson(request.body);
    } else {
      print(response.reasonPhrase);
      throw Exception('Failed to login user data');
    }
  }

  Future<Token> postRefreshToken() async {
    var headers = {'Content-Type': 'application/json'};
    var request = http.Request(
        'POST', Uri.parse('http://127.0.0.1:8000/api/token-refresh/'));
    request.body = json.encode({
      "refresh":
          "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTU3NTE5Mjk5MiwianRpIjoiM2JhMTM5ZjJjOTM3NDJhYzk0NTNmMDg4NTRlZThkYTMiLCJ1c2VyX2lkIjo0fQ.JNhkbVREAeboNTlcGB7u-2plF0Cd97eyUymFgVqSHh0tampered"
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
      return tokenFromJson(request.body);
    } else {
      print(response.reasonPhrase);
      throw Exception('CAnnot get tokens at the moment');
    }
  }
}

class OtpService {
  Future<Otp> getOtp(String phoneNumber, String otp) async {
    String urlName = '/movies/otp/';
    var headers = {'Content-Type': 'application/json'};
    var request = http.Request('POST', Uri.parse(baseUrl + urlName));
    request.body = json.encode({"username": phoneNumber, "password": otp});
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();
    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
      return otpFromJson(request.body);
    } else {
      print(response.reasonPhrase);
      throw Exception('Could not send data');
    }
  }
}
