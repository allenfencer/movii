import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movii/models/movie_data.dart';
import 'package:movii/screens/homepage.dart';

class MovieCard extends StatelessWidget {

  final List<Movie> movieList;
  final int index;

  const MovieCard({
    required this.movieList,
    required this.index,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        height: 260,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 180,
              width: MediaQuery.of(context).size.width,
              clipBehavior: Clip.antiAlias,
              decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(18)),
              child: Image.asset(
                movieList[index].imgLoc,
                fit: BoxFit.fitWidth,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                movieList[index].movieName,
                style: GoogleFonts.poppins(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, bottom: 5),
              child: RatingBar.builder(
                initialRating:
                (movieList[index].rating.floorToDouble()) / 2,
                minRating: 1,
                ignoreGestures: true,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemSize: 22,
                itemCount: 5,
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                updateOnDrag: false,
                onRatingUpdate: (rate) {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}