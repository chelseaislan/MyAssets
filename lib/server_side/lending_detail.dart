import 'package:flutter/material.dart';

class LendingDetail extends StatefulWidget {
  @override
  _LendingDetailState createState() => _LendingDetailState();
}

class _LendingDetailState extends State<LendingDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Pendanaan 12 Bulan",
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(
        children: [
          // First Detail Container
          Container(
            color: Colors.white,
            child: Column(
              children: [
                trxNumberContainer(),
                currentFundingCard(),
                earningsContainer()
              ],
            ),
          ),
          SizedBox(height: 20),
          autoContinueContainer(),
          SizedBox(height: 20),
          thirdDetailContainer("Coupons", "No Coupons"),
          thirdDetailContainer("Funding Time", "32/02/2021, 10:00"),
          thirdDetailContainer("Maturity Date", "31/02/2022"),
          SizedBox(height: 20),
          fourthDetailContainer(
              "Borrower Details", Icons.keyboard_arrow_right_rounded),
          fourthDetailContainer("P2P Lending Terms and Conditions",
              Icons.keyboard_arrow_right_rounded),
        ],
      ),
    );
  }

  Container fourthDetailContainer(text, icon) {
    return Container(
      color: Colors.white,
      child: Container(
        margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(
                  color: Colors.grey[700], fontWeight: FontWeight.w600),
            ),
            Icon(
              icon,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }

  Container thirdDetailContainer(text, value) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  text,
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.grey[700]),
                ),
                Text(
                  value,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container autoContinueContainer() {
    return Container(
      color: Colors.white,
      child: Container(
        margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Pendanaan 12 Bulan",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                Switch(
                  value: false,
                  onChanged: (value) {},
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: EdgeInsets.only(bottom: 3),
                          child: Text("It will Auto Continue as:")),
                      Text(
                        "Pendanaan 12 Bulan",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.orange[700]),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.keyboard_arrow_right_rounded,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container earningsContainer() {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              earningsColumn("Deposit", "Rp 3.000.000"),
              earningsColumn("Total Earnings", "Rp 98.026"),
            ],
          ),
          Column(
            children: [
              earningsColumn("Return Rate", "22.0%"),
              earningsColumn("Total Earnings", "Rp 3.660.000"),
            ],
          ),
        ],
      ),
    );
  }

  Column earningsColumn(text, amount) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(margin: EdgeInsets.only(bottom: 3), child: Text(text)),
        Container(
          margin: EdgeInsets.only(bottom: 15),
          child: Text(
            amount,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.orange[700]),
          ),
        ),
      ],
    );
  }

  Card currentFundingCard() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: Colors.blue[900],
      margin: EdgeInsets.fromLTRB(20, 10, 20, 20),
      child: Container(
        margin: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 5),
              alignment: Alignment.center,
              child: Text(
                "Current Funding",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                "Rp 3.235.135",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container trxNumberContainer() {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Transaction No: 209940",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
          ),
          Text(
            "Transaction Records",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
