import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movii/global_widgets/custom_button.dart';
import 'package:movii/global_widgets/small_text.dart';

class Bottom_Sheet extends StatefulWidget {

  const Bottom_Sheet({
    Key? key,
  }) : super(key: key);

  @override
  State<Bottom_Sheet> createState() => _Bottom_SheetState();
}

class _Bottom_SheetState extends State<Bottom_Sheet> {
  bool _value1 = false;
  bool _value2 = false;
  bool _value3 = false;
  bool _selected1 = false;
  bool _selected2 = false;
  bool _selected3 = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color(0xFF17082A),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(35),topRight: Radius.circular(35)),
      ),

    child: Column(
     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
     crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
     children: [
       Center(
         child: Container(
           height: height*0.015,
           width: width*0.15,
           decoration: BoxDecoration(
             color:Colors.grey[400],
             borderRadius: BorderRadius.all(Radius.circular(10)),
           ),
         ),
       ),
       SizedBox(height: 15),
       Text("Bohemian Rhapsody",style: GoogleFonts.poppins(
    fontSize: 23,
    color: Colors.white,
    fontWeight: FontWeight.w500,
    )),
       SizedBox(height: 15),
       SmallText(text: "Quality"),
       SizedBox(height: 15),
       Container(
         height: 150,
         child: Row(
           crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             GestureDetector(
               onTap:(){
                 setState(() {
                   _selected1=!_selected1;
                   _selected2=false;
                   _selected3=false;
                 });
               },

               child: Stack(
                 children: [
                   ClipRRect(),
                   Container(
                   width: 90,
                   decoration: BoxDecoration(
                     color: Color(0xFF200F37),
                     borderRadius: BorderRadius.all(Radius.circular(20)),
                     border: _selected1?Border.all(
                       color: Color(0xFFFF8FC6),
                       width: 2
                     ):null,
                   ),
                   child: Center(
                     child: Text("720 p",
                         style: GoogleFonts.poppins(
                             fontSize: 18,
                             color: Colors.white,
                             fontWeight: FontWeight.w700,
                            )),
                   ),
                 ),
                 ]
               ),
             ),
             GestureDetector(
               onTap:(){
                 setState(() {
                   _selected2=!_selected2;
                   _selected1=false;
                   _selected3=false;
                 });
               },

               child: Container(
                 width: 90,
                 decoration: BoxDecoration(
                   color: Color(0xFF200F37),
                   borderRadius: BorderRadius.all(Radius.circular(20)),
                   border: _selected2?Border.all(
                       color: Color(0xFFFF8FC6),
                       width: 2
                   ):null,
                 ),
                 child: Center(
                   child: Text("720 p",
                       style: GoogleFonts.poppins(
                         fontSize: 18,
                         color: Colors.white,
                         fontWeight: FontWeight.w700,
                       )),
                 ),
               ),
             ),
             GestureDetector(
               onTap:(){
                 setState(() {
                   _selected3=!_selected3;
                   _selected1=false;
                   _selected2=false;
                 });
               },

               child: Container(
                 width: 90,
                 decoration: BoxDecoration(
                   color: Color(0xFF200F37),
                   borderRadius: BorderRadius.all(Radius.circular(20)),
                   border: _selected3?Border.all(
                       color: Color(0xFFFF8FC6),
                       width: 2
                   ):null,
                 ),
                 child: Center(
                   child: Text("720 p",
                       style: GoogleFonts.poppins(
                         fontSize: 18,
                         color: Colors.white,
                         fontWeight: FontWeight.w700,
                       )),
                 ),
               ),
             ),
           ],
         ),
       ),
       SizedBox(height: 15),
       SmallText(text: "Voice acting"),
       Column(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Text("Russian",
                     style: GoogleFonts.poppins(
                         fontSize: 22,
                         color: Colors.white,
                         fontWeight: FontWeight.w500)),
                 Spacer(),
                  Center(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      _value1 = !_value1;
                      _value2=false;
                      _value3=false;
                    });
                  },
                  child: Container(
                    decoration:_value1? BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color(0xFF5442B6) ): null,
                    child: Padding(

                      padding: const EdgeInsets.all(5),
                      child: _value1
                          ? Icon(
                        Icons.check,
                        size: 36,
                        color: Colors.white,
                      )
                          : Icon(
                        Icons.check_box_outline_blank,
                        size: 36,
                        color: Color(0xFF5442B6),
                      ),
                    ),
                  ),
                )),

               ],
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Text("Russian",
                     style: GoogleFonts.poppins(
                         fontSize: 22,
                         color: Colors.white,
                         fontWeight: FontWeight.w500)),
                 Spacer(),
                  Center(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      _value2 = !_value2;
                      _value1=false;
                      _value3=false;
                    });
                  },
                  child: Container(
                    decoration:_value2? BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color(0xFF5442B6) ): null,
                    child: Padding(

                      padding: const EdgeInsets.all(5),
                      child: _value2
                          ? Icon(
                        Icons.check,
                        size: 36,
                        color: Colors.white,
                      )
                          : Icon(
                        Icons.check_box_outline_blank,
                        size: 36,
                        color: Color(0xFF5442B6),
                      ),
                    ),
                  ),
                )),

               ],
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Text("Russian",
                     style: GoogleFonts.poppins(
                         fontSize: 22,
                         color: Colors.white,
                         fontWeight: FontWeight.w500)),
                 Spacer(),
                  Center(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      _value3 = !_value3;
                      _value1=false;
                      _value2=false;
                    });
                  },
                  child: Container(
                    decoration:_value3? BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color(0xFF5442B6) ): null,
                    child: Padding(

                      padding: const EdgeInsets.all(5),
                      child: _value3
                          ? Icon(
                        Icons.check,
                        size: 36,
                        color: Colors.white,
                      )
                          : Icon(
                        Icons.check_box_outline_blank,
                        size: 36,
                        color: Color(0xFF5442B6),
                      ),
                    ),
                  ),
                )),

               ],
             ),
           ),
         ],
       ),
       Center(
         child: InkWell(
           onTap: () {},
           child: Container(
             padding: EdgeInsets.all(6),

             height: 65,
             width: 400,

             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(20),
               color: Color(0xff6644B8),
             ),
             child: Column(
               children: [

                 Text(
                   "Download movie",
                   style: GoogleFonts.poppins(
                       fontSize: 20,
                       color: Colors.white,
                       fontWeight: FontWeight.w600,
                       letterSpacing: 0.9),
                 ),
                 Text(
                   "946 Mb",
                   style: GoogleFonts.poppins(
                       fontSize: 13,
                       color: Colors.white,
                       fontWeight: FontWeight.w200,
                       letterSpacing: 0.9),
                 ),
               ],
             ),
           ),
         ),
       )
     ],
    ),
    );
  }
}
