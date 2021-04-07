import 'package:flutter/material.dart';
import 'package:flutter_myassets/server_side/va_transfer.dart';

class StartLending extends StatefulWidget {
  @override
  _StartLendingState createState() => _StartLendingState();
}

class _StartLendingState extends State<StartLending> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Start Lending",
            style: TextStyle(fontSize: 16, color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.white,
            child: Column(
              children: [
                firstCardContainer(),
                secondCardContainer(context),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Lending Amount",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
                textAmountContainer(),
                thirdContainer("Maturity Amount", "Rp 1.234.567"),
                thirdContainer("Maturity Date", "32/02/2012"),
                thirdContainer("Coupons Available", "None"),
              ],
            ),
          ),
          SizedBox(height: 20),
          fourthContainer(),
          SizedBox(height: 20),
          Container(
            color: Colors.white,
            child: Container(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Text(
                        "I agree to the Terms and Conditions of Asetku and general P2P Lending rules."),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 10, 20, 20),
                    height: 45,
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return VATransfer();
                        }));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange[700],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                      ),
                      child: Text("Confirm Your Lending",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Container fourthContainer() {
    return Container(
      color: Colors.white,
      child: Container(
        margin: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Payment Method",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            Text("Permata VA",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.orange[700])),
          ],
        ),
      ),
    );
  }

  Container thirdContainer(title, value) {
    return Container(
        margin: EdgeInsets.fromLTRB(20, 10, 20, 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title,
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                Text(value,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.orange[700])),
              ],
            ),
          ],
        ));
  }

  Container textAmountContainer() {
    return Container(
        margin: EdgeInsets.fromLTRB(20, 15, 20, 20),
        child: TextFormField(
          initialValue: "3000000",
          textAlign: TextAlign.left,
          decoration: InputDecoration(
            fillColor: Colors.grey[200],
            filled: true,
            prefixIcon: IconButton(
              onPressed: () {},
              icon: Icon(Icons.remove_rounded),
              color: Colors.black,
            ),
            suffixIcon: IconButton(
              onPressed: () {},
              icon: Icon(Icons.add_rounded),
              color: Colors.black,
            ),
            prefixText: "Rp ",
            prefixStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.grey[200], width: 3)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.grey[200], width: 3)),
          ),
          keyboardType: TextInputType.phone,
        ));
  }

  Container secondCardContainer(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
      child: Card(
        elevation: 0,
        color: Colors.deepOrange[50],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.all(10),
          child: Text(
            "STACO protects your principal, happy lending!",
            style: TextStyle(color: Colors.orange[900], fontSize: 12),
          ),
        ),
      ),
    );
  }

  Container firstCardContainer() {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 0, 10, 5),
      child: Card(
        elevation: 0,
        color: Colors.blue[900],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          margin: EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Pendanaan 12 Bulan",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "12 Bulan",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Text(
                "22.0%",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
