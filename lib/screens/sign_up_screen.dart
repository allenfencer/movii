import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movii/global_widgets/custom_button.dart';
import 'package:movii/global_widgets/custom_title_text.dart';
import 'package:movii/global_widgets/small_text.dart';
import 'package:movii/models/apis/otp_model.dart';
import 'package:movii/screens/otp_screen.dart';
import 'package:movii/services/api_services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController fullNameCOntroller = TextEditingController();
 
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
                    controller: fullNameCOntroller,
                    keyboardType: TextInputType.name,
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: Colors.grey[300],
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.8),
                    decoration: InputDecoration(
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
                    onTap: () {
                      debugPrint('signing in user');
                      SignUpSevice postRequest = SignUpSevice();
                      postRequest
                          .postUserData(phoneNumberController.text,
                              fullNameCOntroller.text)
                          .whenComplete(() => Get.to(() => OTPScreen(
                                phoneNumber: phoneNumberController.text,
                              )));
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
