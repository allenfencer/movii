import 'package:flutter/material.dart';
import 'package:movii/global_widgets/custom_icon.dart';

class IconRow extends StatelessWidget {
  const IconRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 25),
      decoration:
          BoxDecoration(color: Colors.black.withOpacity(0.1), boxShadow: [
        BoxShadow(
            blurRadius: 45,
            color: Color(0xff17082A),
            spreadRadius: 10,
            offset: Offset(0, -10)),
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomIcon(
            icon: Icons.arrow_downward_rounded,
            color: Color(0xff200F37),
          ),
          CustomIcon(
            icon: Icons.favorite_border,
            color: Color(0xff200F37),
          ),
          CustomIcon(
            icon: Icons.ios_share_sharp,
            color: Color(0xff200F37),
          ),
        ],
      ),
    );
  }
}
