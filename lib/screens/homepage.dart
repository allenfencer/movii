import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movii/components/description_card.dart';
import 'package:movii/components/icon_row.dart';
import 'package:movii/components/promo_card.dart';
import 'package:movii/global_widgets/custom_button.dart';
import 'package:movii/global_widgets/custom_card.dart';
import 'package:movii/global_widgets/custom_icon.dart';
import 'package:movii/global_widgets/custom_list_card.dart';
import 'package:movii/global_widgets/custom_title_text.dart';
import 'package:movii/global_widgets/movie_card.dart';
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
          crossAxisAlignment: CrossAxisAlignment.start,
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
                      color: Colors.white.withOpacity(0.2)),
                ),
                Positioned(
                  top: 0,
                  bottom: 0,
                  child: Container(
                    height: 400,
                    width: width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xff17082A)
                                .withRed(0)
                                .withGreen(8)
                                .withBlue(42)
                                .withAlpha(0),
                            Color(0xff17082A),
                          ]),
                    ),
                  ),
                ),
                Positioned(
                    left: 40,
                    top: height * 0.38,
                    child: TitleText(
                      title1: 'Bohemian',
                      title2: 'Rhapsody',
                    )),
                Positioned(
                    left: 45,
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
            CustomListCard(
              l1: Icon(
                FontAwesomeIcons.calendar,
                color: Color(0xffF79E44),
                size: 30,
              ),
              l2: Icon(
                FontAwesomeIcons.globeAmericas,
                color: Color(0xffF79E44),
                size: 30,
              ),
              l3: Icon(
                FontAwesomeIcons.clock,
                color: Color(0xffF79E44),
                size: 30,
              ),
              l4: Icon(
                FontAwesomeIcons.volumeUp,
                color: Color(0xffF79E44),
                size: 30,
              ),
              rating: 8.6,
              h1: '2018',
              t1: '',
              h2: 'USA',
              t2: '',
              h3: '125 MNH',
              t3: '',
              h4: 'Rus | En',
              t4: '',
            ),
            PromoCard(),
            DescriptionCard(),
            RatingStar(),
            Padding(
              padding: const EdgeInsets.only(top: 28.0, left: 20),
              child: Text('Similar Movies',
                  style: GoogleFonts.poppins(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.w700)),
            ),
            MovieCard(),
          ],
        ),
      ),
    );
  }
}
