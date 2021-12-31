import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movii/screens/sign_up_screen.dart';
import 'screens/Search/searchScreen.dart';
import 'screens/Home/innerScreen.dart';
import 'screens/bottom_sheet.dart';
import 'package:movii/screens/homepage.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUp(),
    )
  );
}

class App extends StatefulWidget {

  const App({
    Key? key,
  }) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {

  int selectedIndex=0;
  List<Widget> screenList = [
    InnerScreen(),
    SearchScreen(),
    Container()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: screenList[selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Color(0xff6644B8),
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white.withOpacity(0.5),
            onTap: (index){setState(() {
              selectedIndex = index;
            });},
            currentIndex: selectedIndex,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home_outlined, ), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.search, ), label: 'Search'),
              BottomNavigationBarItem(icon: Icon(Icons.library_add_outlined,), label: 'Favourites')
            ],
          ),
        )
    );
  }
}
