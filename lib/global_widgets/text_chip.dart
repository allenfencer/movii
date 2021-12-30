import 'package:flutter/material.dart';
import 'package:movii/global_widgets/small_text.dart';

class TextChip extends StatelessWidget {
  final String textChip;
  const TextChip({Key? key, required this.textChip}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      padding: EdgeInsets.symmetric(horizontal: 22, vertical: 12),
      margin: EdgeInsets.only(right: 5, top: 5, bottom: 1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0xff36274B),
      ),
      child: SmallText(
        text: textChip,
        fontSize: 14,
      ),
    );
  }
}
