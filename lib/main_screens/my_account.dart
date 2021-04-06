import 'package:flutter/material.dart';
import 'package:flutter_myassets/onboarding/splash.dart';

class MyAccount extends StatefulWidget {
  @override
  _MyAccountState createState() => _MyAccountState();
}

// Edit avatar, email, phone, info2 sama log out
class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text(
            "My Account",
            style: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications_rounded),
              color: Colors.black,
            )
          ],
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 20),
                      child: profileDetailsRow(context)),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 15, 0, 5),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            accountCardContents(
                                Icons.confirmation_num_rounded, "My Coupons"),
                            accountCardContents(
                                Icons.note_add_rounded, "My Tasks"),
                            accountCardContents(
                                Icons.money_rounded, "My Privileges"),
                            accountCardContents(Icons.person_pin_rounded,
                                "My Relationship Manager"),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            accountCardContents(
                                Icons.edit_rounded, "Edit Profile"),
                            accountCardContents(
                                Icons.settings_rounded, "Account Settings"),
                            accountCardContents(
                                Icons.format_list_numbered_rounded,
                                "My Referral Code"),
                            accountCardContents(
                                Icons.call_rounded, "CS & FAQ"),
                            accountCardContents(
                                Icons.info_outline_rounded, "About MyAssets"),
                            GestureDetector(
                                onTap: () {
                                  Navigator.pushReplacement(context,
                                      MaterialPageRoute(builder: (context) {
                                    return SplashScreen();
                                  }));
                                },
                                child: accountCardContents(
                                    Icons.logout, "Log Out")),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }

  Container accountCardContents(icon, text) => Container(
        margin: EdgeInsets.only(top: 5),
        child: Container(
          margin: EdgeInsets.only(bottom: 15),
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
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      );

  Row profileDetailsRow(BuildContext context) => Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10),
            child: CircleAvatar(
              radius: MediaQuery.of(context).size.aspectRatio * 80,
              foregroundImage: AssetImage("images/profpic.png"),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 3),
                  child: Text(
                    "Lana Del Rey 1",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 3),
                  child: Text(
                    "085574670577",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 3),
                  child: Text(
                    "lanadelrey@gmail.com",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      );
}
