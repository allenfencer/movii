import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movii/global_widgets/custom_button.dart';
import 'package:movii/global_widgets/custom_title_text.dart';
import 'package:movii/global_widgets/small_text.dart';
import 'package:movii/models/apis/register_model.dart';
import 'package:movii/screens/otp_screen.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();

  Future<Registration> postData(String phoneNumber, String fullname) async {
    String url = 'http://65.2.157.128/movies/register/';
    final response = await http.post(
      Uri.parse(url),
      headers: {'Content-Type': 'application/json'},
      body: {
        'username': phoneNumber,
        'full_name': fullname,
      },
    );
    print(response.statusCode);
    if (response.statusCode == 200) {
      print(response.body);
      return Registration.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Could not connect to server at the moment');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff17082A),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 60,
                ),
                Center(
                  child: TitleText(
                    title1: 'Sign Up',
                    title2: '',
                  ),
                ),
                SmallText(
                  text: 'Name',
                  fontSize: 18,
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  clipBehavior: Clip.antiAlias,
                  child: TextField(
                    controller: fullNameController,
                    keyboardType: TextInputType.name,
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: Colors.grey[300],
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.8),
                    decoration: InputDecoration(
                      errorText: fullNameController.text.isEmpty
                          ? 'Enter your name'
                          : '',
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 18),
                      fillColor: Color(0xff848484).withOpacity(0.7),
                      filled: true,
                      border: InputBorder.none,
                      hintStyle: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Colors.grey[300],
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.8),
                      hintText: 'Enter Your Name',
                    ),
                  ),
                ),
                SmallText(
                  text: 'Phone Number',
                  fontSize: 18,
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  clipBehavior: Clip.antiAlias,
                  child: TextField(
                    controller: phoneNumberController,
                    keyboardType: TextInputType.number,
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: Colors.grey[300],
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.8),
                    decoration: InputDecoration(
                        errorText: phoneNumberController.text.isEmpty
                            ? 'Enter your phone number'
                            : '',
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 18),
                        fillColor: Color(0xff848484).withOpacity(0.7),
                        filled: true,
                        border: InputBorder.none,
                        prefixStyle: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Colors.grey[300],
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.8),
                        prefixText: '+91 '),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.25,
                ),
                Center(
                  child: CustomButton(
                    btnText: 'Go',
                    onTap: () async {
                      await postData(phoneNumberController.text,
                              fullNameController.text)
                          .whenComplete(() => Get.to(() => OTPScreen()));
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
