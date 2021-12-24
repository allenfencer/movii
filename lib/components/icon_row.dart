import 'package:flutter/material.dart';
import 'package:movii/global_widgets/custom_icon.dart';

class IconRow extends StatelessWidget {
  const IconRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.only(top: 25),
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
