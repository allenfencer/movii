import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'screens/Home/innerScreen.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: InnerScreen(),
    )
  );
}
