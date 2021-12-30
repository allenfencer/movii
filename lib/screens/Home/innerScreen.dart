import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movii/global_widgets/customButton.dart';
import 'package:movii/global_widgets/custom_button.dart';

class InnerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Color(0xFF17082A),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    SizedBox(
                      width: double.infinity,
                        height: 500,
                        child: Image.asset('assets/images/bg.png', fit: BoxFit.cover,)
                    ),
                    Container(
                      height: 500,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end:
                          Alignment.bottomCenter,// 10% of the width, so there are ten blinds.
                          colors: <Color>[
                            Color(0x00000000),
                            Color(0xff000000)
                          ], // red to yellow
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 500,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(height: 50,),
                          Text('Stranger Things', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 35),),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('data',style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal, fontSize: 12),),
                                Text('data',style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal, fontSize: 12),),
                                Text('data',style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal, fontSize: 12),),
                                Text('data',style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal, fontSize: 12),),

                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [

                                Column(
                                  children: [
                                    Icon(Icons.check, color: Colors.white,),
                                    Text('My List', style: TextStyle(color: Colors.white),)
                                  ],
                                ),
                                ButtonMain(btnTxt: 'Play', color: Colors.white, foregroundColour: Colors.black, leading: true, leadingIcon: Icons.play_arrow,),
                                Column(
                                  children: [
                                    Icon(Icons.info_outline, color: Colors.white,),
                                    Text('Info', style: TextStyle(color: Colors.white),)
                                  ],
                                ),

                              ],
                            ),
                          ),
                          SizedBox(height: 50,),
                      ],
                  ),
                    ),
                  ]
                ), //Top Area
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, top: 16.0),
                      child: Text('Continue watching for Elon', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(height: 20,),
                    SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          SizedBox(width: 16,),
                          InProcessCard(),
                          Container(
                              margin: EdgeInsets.all(5),
                              height: 180, width: 120,
                              child: Image.asset('assets/images/bg.png', fit: BoxFit.cover,)
                          ),
                          Container(
                              margin: EdgeInsets.all(5),
                              height: 180, width: 120,
                              child: Image.asset('assets/images/bg.png', fit: BoxFit.cover,)
                          ),
                          Container(
                              margin: EdgeInsets.all(5),
                              height: 180, width: 120,
                              child: Image.asset('assets/images/bg.png', fit: BoxFit.cover,)
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, top: 16.0),
                      child: Text('Continue watching for Elon', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(height: 20,),
                    SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          SizedBox(width: 16,),
                          InProcessCard(),
                          Container(
                              margin: EdgeInsets.all(5),
                              height: 180, width: 120,
                              child: Image.asset('assets/images/bg.png', fit: BoxFit.cover,)
                          ),
                          Container(
                              margin: EdgeInsets.all(5),
                              height: 180, width: 120,
                              child: Image.asset('assets/images/bg.png', fit: BoxFit.cover,)
                          ),
                          Container(
                              margin: EdgeInsets.all(5),
                              height: 180, width: 120,
                              child: Image.asset('assets/images/bg.png', fit: BoxFit.cover,)
                          ),
                        ],
                      ),
                    )
                  ],
                ),

              ],
            ),
          ),
        )
    );
  }
}

class InProcessCard extends StatelessWidget {
  const InProcessCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

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
    );
  }
}
