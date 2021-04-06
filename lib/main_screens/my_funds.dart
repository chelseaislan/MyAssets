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
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text(
            "My Active Assets",
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.blueGrey[600],
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.history_rounded))
          ],
        ),
        body: Container(
          child: ListView(
            children: [
              fundsContainer(),
              Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Text(
                  "My Portfolio",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Column(
                  children: [
                    activeLendingContainer("12", "3.243.000", "3.000", "102"),
                    activeLendingContainer("12", "3.243.000", "3.000", "102"),
                    activeLendingContainer("12", "3.243.000", "3.000", "102"),
                    activeLendingContainer("12", "3.243.000", "3.000", "102"),
                    activeLendingContainer("12", "3.243.000", "3.000", "102"),
                    activeLendingContainer("12", "3.243.000", "3.000", "102"),
                  ],
                ),
              )
            ],
          ),
        ));
  }

  Container activeLendingContainer(
          tenorAsset, productAsset, dailyAsset, remainingDays) =>
      Container(
          margin: EdgeInsets.symmetric(vertical: 3),
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 5),
                    child: Text(
                      "Pendanaan $tenorAsset Bulan",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Rp $productAsset",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "+Rp $dailyAsset",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.orange[700]),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Text(
                      "Matured in $remainingDays days",
                      style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                    ),
                  ),
                ],
              ),
            ),
          ));

  Container fundsContainer() => Container(
        color: Colors.blueGrey[600],
        child: Column(
          children: [
            Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
                child: Text(
                  "Rp 10.000.000",
                  style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
            Container(
              margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Total Earnings",
                        style: TextStyle(color: Colors.white),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 30),
                        child: Text(
                          "+Rp 300.000",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 60),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Yesterday's Earnings",
                        style: TextStyle(color: Colors.white),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 30),
                        child: Text(
                          "+Rp 15.000",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
