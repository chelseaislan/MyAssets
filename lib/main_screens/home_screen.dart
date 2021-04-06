import 'package:flutter/material.dart';

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
                  homeLendingCard("12 Bulan", "24.0", "3298"),
                  homeLendingCard("6 Bulan", "19.0", "9573"),
                  homeLendingCard("3 Bulan", "17.5", "7492"),
                  homeLendingCard("2 Bulan", "17.0", "5542"),
                  homeLendingCard("1 Bulan", "16.0", "6896"),
                  homeLendingCard("15 Hari", "15.0", "10384"),
                ],
              )
            ],
          ),
        ));
  }

  Container homeLendingCard(tenor, rate, order) => Container(
        margin: EdgeInsets.symmetric(vertical: 2),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Container(
            margin: EdgeInsets.fromLTRB(15, 10, 15, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Pendanaan $tenor",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "$rate%",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange[700]),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange[700],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        onPressed: () {},
                        child: Text("Fund"))
                  ],
                ),
                Text(
                  "$order Pesanan Dibayar",
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
        ),
      );
}
