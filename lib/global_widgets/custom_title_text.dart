import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleText extends StatelessWidget {
  final String? title1;
  final String? title2;
  final double? fontSize;
  const TitleText({Key? key, this.fontSize, this.title1, this.title2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 0, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$title1\n$title2',
            style: GoogleFonts.poppins(
                fontSize: fontSize ?? 40,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.9),
          ),
          // Text(
          //   title2.toString(),
          //   style: GoogleFonts.poppins(
          //       fontSize: fontSize ?? 40,
          //       color: Colors.white,
          //       fontWeight: FontWeight.bold,
          //       letterSpacing: 0.9),
          // ),
        ],
      ),
    );
  }
}
