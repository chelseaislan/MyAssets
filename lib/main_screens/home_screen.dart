import 'package:flutter/material.dart';
import 'package:flutter_myassets/server_side/product_detail.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

// Disini bakal ada pilihan pendanaan dari 15 hari ke 1 tahun
// 15 1 2 3 6 12
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Image.asset("images/header_small.png",
              fit: BoxFit.cover, height: 30.0),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: ListView(
            children: [
              Column(
                children: [
                  Container(
                      margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
                      child: Image(image: AssetImage("images/banner.png"))),
                  homeLendingContainer("12", "22.0", "3298"),
                  homeLendingContainer("6", "19.0", "9573"),
                  homeLendingContainer("3", "17.5", "7492"),
                  homeLendingContainer("2", "17.0", "5542"),
                  homeLendingContainer("1", "16.0", "6896"),
                ],
              )
            ],
          ),
        ));
  }

  Container homeLendingContainer(tenor, rate, order) => Container(
        margin: EdgeInsets.symmetric(vertical: 3),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Container(
            margin: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Pendanaan $tenor Bulan",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "$rate%",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange[700]),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange[700],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return ProductDetail();
                          }));
                        },
                        child: Text("Fund"))
                  ],
                ),
                Text(
                  "$order Pesanan Dibayar",
                  style: TextStyle(fontSize: 13),
                ),
              ],
            ),
          ),
        ),
      );
}
