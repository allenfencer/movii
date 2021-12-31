import 'package:flutter/material.dart';
import 'package:movii/screens/bottom_sheet.dart';

class CustomIcon extends StatelessWidget {
  final Color color;
  final IconData icon;
  const CustomIcon({Key? key, required this.color, required this.icon})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          backgroundColor: Colors.transparent,
          isScrollControlled: true,
            context: context,
            builder: ( BuildContext context) {
              return Bottom_Sheet();
            },
        );

      },
      child: Container(
        clipBehavior: Clip.antiAlias,
        padding: EdgeInsets.all(5),
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: color),
        child: Center(
          child: Icon(
            icon,
            color: Colors.white,
            size: 35,
          ),
        ),
      ),
    );
  }
}

