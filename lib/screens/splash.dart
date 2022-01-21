import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movii/global_widgets/custom_button.dart';
import 'package:movii/global_widgets/custom_title_text.dart';
import 'package:movii/global_widgets/small_text.dart';
import 'package:movii/main.dart';
import 'package:movii/screens/login_screen.dart';
import 'package:movii/screens/sign_up_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  String? refreshToken;

  Future<void> getStoredRefreshToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    print(refreshToken);
    refreshToken = prefs.getString('refresh');
  }

  @override
  void initState() {
    getStoredRefreshToken().then((value) {
      if (refreshToken != null) {
        Get.to(() => App(refreshToken: refreshToken!));
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff17082A),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 60,
              ),
              Center(
                child: TitleText(
                  title1: 'movii',
                  title2: '',
                ),
              ),
              Column(
                children: [
                  Center(
                    child: CustomButton(
                      btnText: 'Sign Up',
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignUp()));
                      },
                    ),
                  ),
                  SizedBox(height: 15),
                  Center(
                    child: CustomButton(
                      btnText: 'Login',
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                    ),
                  ),
                  SizedBox(height: 50)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
