import 'package:flutter/material.dart';
import 'package:flutter_myassets/nav_bar.dart';

class VATransfer extends StatefulWidget {
  @override
  _VATransferState createState() => _VATransferState();
}

class _VATransferState extends State<VATransfer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Transfer to VA",
            style: TextStyle(fontSize: 16, color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: ListView(
        children: [
          // Top Container
          Container(
            color: Colors.white,
            child: Column(
              children: [
                remainingTimeContainer(),
                pleaseTransferContainer(context),
                vaNumberContainer(),
              ],
            ),
          ),
          SizedBox(height: 25),
          bottomContainer("Amount to Pay", "Rp 3.000.000"),
          bottomContainer("Product Name", "Pendanaan 12 Bulan"),
          bottomContainer("Return Rate", "22.0%"),
          bottomContainer("Expected Return", "Rp660.000"),
          Container(
            margin: EdgeInsets.fromLTRB(20, 15, 20, 15),
            height: 45,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.orange[700],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return NavBar();
                  }));
                },
                child: Text(
                  "Confirm",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
          )
        ],
      ),
    );
  }

  Container bottomContainer(title, detail) {
    return Container(
      color: Colors.white,
      child: Container(
        margin: EdgeInsets.fromLTRB(20, 15, 20, 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey[700]),
            ),
            Text(
              detail,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }

  Container vaNumberContainer() {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 0, 10, 15),
      child: Card(
        color: Colors.grey[200],
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          margin: EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "09208493093535",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
              GestureDetector(onTap: () {}, child: Text("Copy")),
            ],
          ),
        ),
      ),
    );
  }

  Container pleaseTransferContainer(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(height: 13),
                    Text("Permata Virtual Account",
                        style: TextStyle(fontWeight: FontWeight.w600)),
                  ],
                ),
                Image.asset(
                  "images/baper.png",
                  width: MediaQuery.of(context).size.width * 0.25,
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 15),
            child: Text(
              "Please transfer to the following Virtual Account Number through ATM, Internet Banking or Mobile Banking applications:",
            ),
          )
        ],
      ),
    );
  }

  Container remainingTimeContainer() {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 0, 10, 5),
      child: Card(
        elevation: 0,
        color: Colors.blue[900],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          margin: EdgeInsets.fromLTRB(15, 20, 15, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Remaining time to transfer:",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "3:12:47",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
