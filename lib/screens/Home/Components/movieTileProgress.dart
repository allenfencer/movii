import 'package:flutter/material.dart';
import 'package:movii/screens/homepage.dart';

class MovieTileProgress extends StatelessWidget {
  const MovieTileProgress({
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
      child: Container(

        margin: EdgeInsets.all(5),
        width: 120,
        child: Column(
          children: [
            SizedBox(
                height: 180,
                child: Image.asset('assets/images/bg.png', fit: BoxFit.cover,)
            ),
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(5, 10, 5, 5),
                  color: Color(0xff6644B8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.info_outline, color: Colors.white,),
                      Icon(Icons.more_vert_outlined, color: Colors.white,)
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      flex:67,
                      child: Container(
                        height: 5,
                        color: Color(0XFFEE1520),
                      ),
                    ),
                    Expanded(
                      flex:100-67,
                      child: Container(
                        height: 5,
                        color: Color(0X28969D9B),
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}