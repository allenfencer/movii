import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCard extends StatefulWidget {
  final double rating;
  final Icon? l1;
  final Icon? l2;
  final Icon? l3;
  final Icon? l4;
  final String h1;
  final String h2;
  final String h3;
  final String? h4;
  final String t1;
  final String t2;
  final String t3;
  final String? t4;
  final Widget? ratingbar;

  const CustomCard(
      {Key? key,
      required this.rating,
      this.ratingbar,
      required this.h1,
      required this.h2,
      required this.h3,
      this.h4,
      this.l1,
      this.l2,
      this.l3,
      this.l4,
      required this.t1,
      required this.t2,
      required this.t3,
      this.t4})
      : super(key: key);

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      margin: EdgeInsets.only(left: 18, top: 25, right: 18),
      padding: EdgeInsets.all(8),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xff210F37),
      ),
      child: Column(
        children: [
          ListTile(
            title: RatingBar.builder(
              initialRating: widget.rating / 2,
              minRating: 1,
              ignoreGestures: true,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemSize: 28,
              itemCount: 5,
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              updateOnDrag: false,
              onRatingUpdate: (rate) {},
            ),
            trailing: Text(
              widget.rating.toString(),
              style: GoogleFonts.poppins(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: widget.l1,
            title: Text(
              widget.h1,
              style: GoogleFonts.poppins(fontSize: 20, color: Colors.grey),
            ),
            trailing: Text(
              widget.t1,
              style: GoogleFonts.poppins(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: widget.l2,
            title: Text(
              widget.h2,
              style: GoogleFonts.poppins(fontSize: 20, color: Colors.grey),
            ),
            trailing: Text(
              widget.t2,
              style: GoogleFonts.poppins(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: widget.l3,
            title: Text(
              widget.h3,
              style: GoogleFonts.poppins(fontSize: 20, color: Colors.grey),
            ),
            trailing: Text(
              widget.t3,
              style: GoogleFonts.poppins(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: widget.l4,
            title: Text(
              widget.h4.toString(),
              style: GoogleFonts.poppins(fontSize: 20, color: Colors.grey),
            ),
            trailing: Text(
              widget.t4.toString(),
              style: GoogleFonts.poppins(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
