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
      return registrationFromJson(await response.stream.bytesToString());
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
      print(await response.stream.bytesToString());
      return loginFromJson(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
      throw Exception('Failed to login user data');
    }
  }

  Future<Token> checkValidity(String refreshToken) async {
    String urlName = '/movies/token-refresh/';

    var headers = {'Content-Type': 'application/json'};
    var request = http.Request('POST', Uri.parse(baseUrl + urlName));
    request.body = json.encode({"refresh": refreshToken});
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print('checking validity');
      print(await response.stream.bytesToString());
      return tokenFromJson(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
      throw Exception('Cannot get tokens at the moment');
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
      // print(await response.stream.bytesToString());
      return otpFromJson(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
      throw Exception('Could not send data');
    }
  }
}
