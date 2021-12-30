import 'package:flutter/material.dart';

class ButtonMain extends StatelessWidget {

  final bool leading;
  final IconData? leadingIcon;
  final bool lagging;
  final String btnTxt;
  final IconData? laggingIcon;
  final Color color;
  final Color foregroundColour;

  const ButtonMain({
    this.leading=false,
    this.leadingIcon,
    this.lagging=false,
    this.laggingIcon,
    required this.btnTxt,
    required this.color,
    required this.foregroundColour
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){},
      child: Row(
        children: [
          leading?Icon(leadingIcon, color: foregroundColour, ):Container(),
          Text(btnTxt, style: TextStyle(color: foregroundColour),),
          lagging?Icon(laggingIcon, color: foregroundColour,):Container(),
        ],
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(color),
      ),
    );
  }
}
