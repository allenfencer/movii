import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:movii/global_widgets/customButton.dart';
import 'package:movii/global_widgets/custom_button.dart';
import 'package:movii/screens/splash.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../homepage.dart';
import 'Components/movieTileProgress.dart';
import 'Components/movieTileRegular.dart';

class InnerScreen extends StatelessWidget {
  const InnerScreen({Key? key}) : super(key: key);

  void clearStoredData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove('refresh');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      color: Color(0xFF17082A),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(children: [
              SizedBox(
                  width: double.infinity,
                  height: 500,
                  child: Image.asset(
                    'assets/images/bg.png',
                    fit: BoxFit.cover,
                  )),
              Container(
                height: 500,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment
                        .bottomCenter, // 10% of the width, so there are ten blinds.
                    colors: <Color>[
                      Color(0x00000000),
                      Color(0xff000000)
                    ], // red to yellow
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 500,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      'Stranger Things',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 35),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'data',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 12),
                          ),
                          Text(
                            'data',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 12),
                          ),
                          Text(
                            'data',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 12),
                          ),
                          Text(
                            'data',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Icon(
                                Icons.check,
                                color: Colors.white,
                              ),
                              Text(
                                'My List',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          ButtonMain(
                            btnTxt: 'Play',
                            color: Colors.white,
                            foregroundColour: Colors.black,
                            leading: true,
                            leadingIcon: Icons.play_arrow,
                          ),
                          GestureDetector(
                            onTap: () {
                              clearStoredData();
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Splash()),
                              );
                            },
                            child: Column(
                              children: [
                                Icon(
                                  Icons.login,
                                  color: Colors.white,
                                ),
                                Text(
                                  'Logout',
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
            ]), //Top Area
            MovieRow(
              title: 'Continue watching for Elon',
              progress: true,
            ),
            MovieRow(
              title: 'My List',
            ),
            MovieRow(
              title: 'Europe Movie',
            ),
            MovieRow(
              title: 'Romance/Drama',
            ),
            MovieRow(
              title: 'Action/Thriller',
            ),
          ],
        ),
      ),
    ));
  }
}

class MovieRow extends StatelessWidget {
  final bool progress;
  final String title;

  const MovieRow({
    this.progress = false,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 16.0),
          child: Text(
            title,
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        // SingleChildScrollView(
        //   physics: BouncingScrollPhysics(),
        //   scrollDirection: Axis.horizontal,
        //   child: Row(
        //     children: [
        //       SizedBox(width: 16,),
        //       MovieTileRegular(),
        //       MovieTileRegular(),
        //       MovieTileRegular(),
        //       MovieTileRegular(),
        //       MovieTileRegular(),
        //     ],
        //   ),
        // ),
        Container(
          constraints: BoxConstraints(
            maxHeight: progress ? 240 : 200,
          ),
          child: AnimationLimiter(
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: false,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return SizedBox(
                    width: 16.0,
                  );
                } else {
                  return progress
                      ? AnimationConfiguration.staggeredList(
                          position: index,
                          duration: Duration(milliseconds: 800),
                          child: SlideAnimation(
                              horizontalOffset: 200,
                              child: MovieTileProgress()),
                        )
                      : AnimationConfiguration.staggeredList(
                          position: index,
                          duration: Duration(milliseconds: 800),
                          child: SlideAnimation(
                            horizontalOffset: 200,
                            child: MovieTileRegular(),
                          ));
                }
              },
              itemCount: 10 + 1,
            ),
          ),
        )
      ],
    );
  }
}
