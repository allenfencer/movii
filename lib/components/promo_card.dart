import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movii/global_widgets/custom_button.dart';
import 'package:movii/global_widgets/custom_title_text.dart';

class PromoCard extends StatelessWidget {
  const PromoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      clipBehavior: Clip.antiAlias,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(left: 18, right: 18, top: 10, bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          Image.asset('assets/images/promo.png'),
          Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff321758)
                      .withRed(50)
                      .withGreen(23)
                      .withBlue(88)
                      .withAlpha(0),
                  Color(0xff321758),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 120,
            left: 15,
            right: 15,
            child: Text('25,000 films\nand soap operas for free',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.w500)),
          ),
          Positioned(
              left: 25,
              right: 25,
              bottom: 25,
              child: CustomButton(
                btnText: 'Learn More',
                btnColor: Color(0xffFF8FC6),
              ))
        ],
      ),
    );
  }
}
