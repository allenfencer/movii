import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movii/global_widgets/custom_button.dart';
import 'package:movii/global_widgets/custom_title_text.dart';
import 'package:movii/global_widgets/small_text.dart';
import 'package:movii/main.dart';
import 'package:movii/screens/otp_screen.dart';
import 'package:movii/services/api_services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController phoneNumberController = TextEditingController();

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
                    title1: 'Login',
                    title2: '',
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
                      prefixText: '+91 ',
                      prefixStyle: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.grey[300],
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.8),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.4,
                ),
                Center(
                  child: CustomButton(
                    btnText: 'Go',
                    onTap: () {
                      print('user is trying to login');
                      SignUpSevice loginUser = SignUpSevice();
                      loginUser
                          .loginUser(phoneNumberController.text)
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
