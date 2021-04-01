import 'package:flutter/material.dart';
import 'splash.dart';

void main() {
  runApp(MyAssetsApp());
}

class MyAssetsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Return ke class name
      home: SplashScreen(
      ),
    );
  }
}