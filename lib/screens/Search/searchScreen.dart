import 'package:flutter/material.dart';
import 'package:movii/global_widgets/movie_card_list.dart';

import 'Components/searchBar.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
            color: Color(0xff17082A),
            width: double.infinity,
            height: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SearchBar(),
                  MovieCardList()
                ],
              ),
            ),
          )
      ),
    );
  }
}

