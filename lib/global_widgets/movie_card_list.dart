import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movii/models/movie_data.dart';

import 'movie_card.dart';

class MovieCardList extends StatelessWidget {
  const MovieCardList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.only(top: 15),
        itemCount: Movie.movieList.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, index) {
          return MovieCard(movieList: Movie.movieList, index: index);
        });
  }
}


