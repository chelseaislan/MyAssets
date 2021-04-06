import 'package:flutter/material.dart';
import 'onboarding/splash.dart';

void main() {
  runApp(MyAssetsApp());
}

class MyAssetsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Return ke class name
      // Mulai ke splash kalo masih guest, kalo udah login
      // langsung ke navigation
      home: SplashScreen(
      ),
    );
  }
}