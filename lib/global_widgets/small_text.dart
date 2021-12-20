import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SmallText extends StatelessWidget {
  final String text;
  const SmallText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.poppins(
            fontSize: 22,
            color: Colors.grey[300],
            fontWeight: FontWeight.w400,
            letterSpacing: 0.8));
  }
}
