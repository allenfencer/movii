import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movii/global_widgets/custom_button.dart';
import 'package:movii/global_widgets/custom_title_text.dart';
import 'package:movii/global_widgets/small_text.dart';
import 'package:get/get.dart';
import 'package:movii/models/apis/otp_model.dart';
import 'package:movii/services/api_services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../main.dart';

class OTPScreen extends StatefulWidget {
  final String? phoneNumber;
  const OTPScreen({Key? key, this.phoneNumber}) : super(key: key);

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  TextEditingController otpController = TextEditingController();
  late String refreshToken;
  late String accessToken;
  String? rtFromSharedPref;

  void storeRefresh(String rt) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('refresh', rt);
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
                    title1: 'Enter OTP',
                    title2: '',
                  ),
                ),
                Center(
                  child: SmallText(
                    text: 'Enter 4 digit OTP sent to\nyour mobile number.',
                    fontSize: 18,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  clipBehavior: Clip.antiAlias,
                  child: TextField(
                    controller: otpController,
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
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.4,
                ),
                Center(
                  child: CustomButton(
                    btnText: 'Go',
                    onTap: () async {
                      setState(() {});
                      OtpService fetchOtp = OtpService();
                      Otp token = Otp();
                      SignUpSevice refreshValidity = SignUpSevice();
                      token = await fetchOtp.getOtp(
                          widget.phoneNumber.toString(), otpController.text);
                      refreshToken = token.response!.refresh.toString();
                      accessToken = token.response!.access.toString();
                      storeRefresh(refreshToken);
                      refreshValidity.checkValidity(refreshToken);
                      Get.to(() => App(
                            refreshToken: refreshToken,
                          ));
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
