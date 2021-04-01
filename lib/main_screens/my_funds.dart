import 'package:flutter/material.dart';

class MyFunds extends StatefulWidget {
  @override
  _MyFundsState createState() => _MyFundsState();
}

// Disini bakal ada detail pendanaan apa aja yg diambil
// Kalo kosong kasih gambar
class _MyFundsState extends State<MyFunds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "My Funds",
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Center(child: Text("My Funds Screen")),
    );
  }
}
