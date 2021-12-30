import 'package:flutter/material.dart';

import '../../homepage.dart';

class MovieTileRegular extends StatelessWidget {
  const MovieTileRegular({
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
      child: Align(
        alignment: Alignment.topLeft,
        child: Container(
            margin: EdgeInsets.all(5),
            height: 180, width: 120,
            constraints: BoxConstraints(
                minHeight: 180,
                maxHeight: 180
            ),
            child: Image.asset('assets/images/bg.png', fit: BoxFit.cover,)
        ),
      ),
    );
  }
}