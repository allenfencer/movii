import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:movii/models/movie_data.dart';

import 'movie_card.dart';

class MovieCardList extends StatelessWidget {
  final Axis? axisDirection;
  const MovieCardList({Key? key, this.axisDirection}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: ListView.builder(
          padding: EdgeInsets.only(top: 15),
          itemCount: Movie.movieList.length,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          scrollDirection: axisDirection ?? Axis.vertical,
          itemBuilder: (BuildContext context, index) {
            return AnimationConfiguration.staggeredList(
                duration: Duration(milliseconds: 700),
                position: index,
                child: SlideAnimation(
                    verticalOffset: 300,
                    child:
                        MovieCard(movieList: Movie.movieList, index: index)));
          }),
    );
  }
}
