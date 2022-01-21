import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movii/screens/login_screen.dart';
import 'package:movii/screens/splash.dart';
import 'screens/Search/searchScreen.dart';
import 'screens/Home/innerScreen.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splash(),
  ));
}

class App extends StatefulWidget {
  final String refreshToken;
  const App({Key? key, required this.refreshToken}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int selectedIndex = 0;
  List<Widget> screenList = [InnerScreen(), SearchScreen(), Container()];

  void checkForToken() {
    if (widget.refreshToken.isEmpty || widget.refreshToken == null) {
      Get.to(() => LoginPage());
    }
  }

  @override
  void initState() {
    checkForToken();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: screenList[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff6644B8),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.5),
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.library_add_outlined,
              ),
              label: 'Favourites')
        ],
      ),
    ));
  }
}
