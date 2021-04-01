import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Image.asset("images/header_small.png",
            fit: BoxFit.cover, height: 30.0),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Center(child: Text("Home Screen")),
    );
  }
}
