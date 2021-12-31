import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String btnText;
  final Color? btnColor;
  final VoidCallback? onTap;
  const CustomButton({Key? key, required this.btnText, this.btnColor,this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 60,
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: btnColor ?? Color(0xff6644B8),
        ),
        child: Text(
          btnText,
          style: GoogleFonts.poppins(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.9),
        ),
      ),
    );
  }
}
