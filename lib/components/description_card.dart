import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movii/global_widgets/small_text.dart';
import 'package:movii/global_widgets/text_chip.dart';
import 'package:movii/models/current_movie_detail.dart';

class DescriptionCard extends StatelessWidget {
  const DescriptionCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
      margin: EdgeInsets.only(left: 15, right: 15, bottom: 20, top: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0xff210F37),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Description',
            style: descriptionTextStyle,
          ),
          SizedBox(
            height: 8,
          ),
          SmallText(
            text: CurrentMovie.currentRunningMovie.description,
            fontSize: 16,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Director',
            style: descriptionTextStyle,
          ),
          TextChip(
              textChip:
                  CurrentMovie.currentRunningMovie.directorName.toUpperCase()),
          SizedBox(
            height: 15,
          ),
          Text(
            'Cast',
            style: descriptionTextStyle,
          ),
          Wrap(
            alignment: WrapAlignment.start,
            children: CurrentMovie.currentRunningMovie.castNames
                .map((cast) => TextChip(textChip: cast.toUpperCase()))
                .toList(),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Genre',
            style: descriptionTextStyle,
          ),
          Wrap(
            alignment: WrapAlignment.start,
            children: CurrentMovie.currentRunningMovie.genre
                .map((item) => TextChip(textChip: item.toUpperCase()))
                .toList(),
          ),
        ],
      ),
    );
  }
}

TextStyle descriptionTextStyle = GoogleFonts.poppins(
    fontSize: 22, color: Colors.white, fontWeight: FontWeight.w600);
