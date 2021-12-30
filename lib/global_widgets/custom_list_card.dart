import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomListCard extends StatelessWidget {
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

  const CustomListCard(
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
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      margin: EdgeInsets.symmetric(horizontal: 18, vertical: 15),
      padding: EdgeInsets.all(8),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xff210F37),
      ),
      child: Column(
        children: [
          ListTile(
            leading: l1,
            title: Text(
              h1,
              style: GoogleFonts.poppins(fontSize: 20, color: Colors.grey),
            ),
            trailing: Text(
              t1,
              style: GoogleFonts.poppins(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: l2,
            title: Text(
              h2,
              style: GoogleFonts.poppins(fontSize: 20, color: Colors.grey),
            ),
            trailing: Text(
              t2,
              style: GoogleFonts.poppins(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: l3,
            title: Text(
              h3,
              style: GoogleFonts.poppins(fontSize: 20, color: Colors.grey),
            ),
            trailing: Text(
              t3,
              style: GoogleFonts.poppins(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: l4,
            title: Text(
              h4.toString(),
              style: GoogleFonts.poppins(fontSize: 20, color: Colors.grey),
            ),
            trailing: Text(
              t4.toString(),
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
