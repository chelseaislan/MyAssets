import 'package:flutter/material.dart';
import 'package:flutter_myassets/server_side/start_lending.dart';

class ProductDetail extends StatefulWidget {
  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text(
            "Product Details",
            style: TextStyle(fontSize: 16),
          ),
          centerTitle: true,
          backgroundColor: Colors.orange[700],
          elevation: 0,
        ),
        body: Container(
          child: ListView(
            children: [
              detailsContainer(),
              Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Text(
                  "More about this product",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        detailCardContents(
                            Icons.people_rounded, "Borrower Details"),
                        detailCardContents(Icons.security_rounded,
                            "Default Loan Prevention Insurance"),
                        detailCardContents(
                            Icons.list_alt_rounded, "Terms and Conditions"),
                        detailCardContents(Icons.settings_applications_rounded,
                            "Auto Continue Lending Settings"),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 45,
                margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return StartLending();
                      }));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange[700],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                    ),
                    child: Text(
                      "Start Lending",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
              )
            ],
          ),
        ));
  }

  Container detailCardContents(icon, text) => Container(
        margin: EdgeInsets.only(top: 3),
        child: Container(
          margin: EdgeInsets.only(bottom: 10),
          child: Row(
            children: [
              Icon(
                icon,
                color: Colors.orange[700],
              ),
              Container(
                margin: EdgeInsets.only(left: 15),
                child: Text(
                  text,
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ],
          ),
        ),
      );

  Container detailsContainer() => Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.orange[700], Colors.grey[200]],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 5),
                    child: Text(
                      "Pendanaan 12 Bulan",
                      style: TextStyle(fontSize: 12),
                    )),
                Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Text(
                      "22.0%",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange[700]),
                    )),
                Container(
                    padding: EdgeInsets.fromLTRB(20, 3, 20, 3),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey[50],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "Interest rate p.a.",
                      style: TextStyle(fontSize: 12, color: Colors.black54),
                    )),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Total Amount",
                            style:
                                TextStyle(color: Colors.black54, fontSize: 12),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 20),
                            child: Text(
                              "Rp 1.000.000.000",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Starting Amount",
                            style:
                                TextStyle(color: Colors.black54, fontSize: 12),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 20),
                            child: Text(
                              "Rp 3.000.000",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
