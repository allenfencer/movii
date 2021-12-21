import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movii/components/icon_row.dart';
import 'package:movii/global_widgets/custom_button.dart';
import 'package:movii/global_widgets/custom_card.dart';
import 'package:movii/global_widgets/custom_icon.dart';
import 'package:movii/global_widgets/custom_title_text.dart';
import 'package:movii/global_widgets/rating_star.dart';
import 'package:movii/global_widgets/small_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xff17082A),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                    height: height * 0.75,
                    width: width,
                    child: Image.asset(
                      'assets/images/bg.png',
                      color: Colors.black.withOpacity(0.25),
                      colorBlendMode: BlendMode.darken,
                      fit: BoxFit.fill,
                    )),
                Positioned(
                    left: 40,
                    top: height * 0.3,
                    child: CustomIcon(
                        icon: Icons.play_arrow_rounded,
                        color: Colors.white.withOpacity(0.2))),
                Positioned(left: 40, top: height * 0.4, child: TitleText()),
                Positioned(
                    left: 40,
                    top: height * 0.55,
                    child: SmallText(
                      text: 'Drama, Music',
                    )),
                Positioned(
                    left: 40,
                    right: 40,
                    top: height * 0.64,
                    child: CustomButton(
                      btnText: 'Watch Movie',
                    ))
              ],
            ),
            IconRow(),
            CustomCard(
              rating: 8.6,
              h1: 'IMDb',
              t1: '8.2',
              h2: 'Poster',
              t2: '8.4',
              h3: 'Cinema',
              t3: '8.8',
              h4: 'Search',
              t4: '',
            ),
            RatingStar(),
          ],
        ),
      ),
    );
  }
}
