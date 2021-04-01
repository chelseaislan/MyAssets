import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_myassets/nav_bar.dart';
import 'package:flutter_myassets/login_page.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

// Email, phone, password sama reff code kalo ada
class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Image.asset(
            "images/header_small.png",
            fit: BoxFit.cover,
            height: 30.0,
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: ListView(
          children: [
            Container(
                margin: EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Center(
                        child: Image(
                          image: AssetImage("images/signup.png"),
                          width: MediaQuery.of(context).size.width * 0.8,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Text(
                        "Hello there!",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 30),
                      child: Text(
                        "Create a new MyAssets account and start growing your assets!",
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: signupEmailField(
                            "Email Address*", Icons.email_rounded)),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: signupPhoneField(
                          "Phone Number*", Icons.phone_in_talk_rounded),
                    ),
                    Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: signupPassField(
                            "Password*", Icons.vpn_key_rounded)),
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: signupRefField("Referral Code (Optional)",
                          Icons.confirmation_number_rounded),
                    ),
                    Container(
                        margin: EdgeInsets.only(bottom: 20),
                        child: Text(
                          "By creating a new account, you agree to the Terms and Privacy Policy.",
                          style: TextStyle(fontStyle: FontStyle.italic),
                        )),
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(
                              onPressed: () {
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder: (context) {
                                  return LoginPage();
                                }));
                              },
                              child: Text("Have an account?",
                                  style: TextStyle(color: Colors.black))),
                          TextButton(
                              onPressed: () {
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder: (context) {
                                  return NavBar();
                                }));
                              },
                              child: Text("SIGN UP",
                                  style: TextStyle(color: Colors.black))),
                        ],
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }

  TextField signupEmailField(hintText, icon) {
    return TextField(
      onChanged: (value) {
        setState(() {});
      },
      decoration: InputDecoration(
          fillColor: Colors.grey[100],
          filled: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          hintText: hintText,
          suffixIcon: Icon(icon)),
      keyboardType: TextInputType.emailAddress,
    );
  }

  TextField signupPhoneField(hintText, icon) {
    return TextField(
      onChanged: (value) {
        setState(() {});
      },
      decoration: InputDecoration(
          fillColor: Colors.grey[100],
          filled: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          hintText: hintText,
          suffixIcon: Icon(icon)),
      keyboardType: TextInputType.phone,
      inputFormatters: [LengthLimitingTextInputFormatter(14)],
    );
  }

  TextField signupPassField(hintText, icon) {
    return TextField(
      obscureText: true,
      onChanged: (value) {
        setState(() {});
      },
      decoration: InputDecoration(
          fillColor: Colors.grey[100],
          filled: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          hintText: hintText,
          suffixIcon: Icon(icon)),
    );
  }

  TextField signupRefField(hintText, icon) {
    return TextField(
      obscureText: true,
      onChanged: (value) {
        setState(() {});
      },
      decoration: InputDecoration(
          fillColor: Colors.grey[100],
          filled: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          hintText: hintText,
          suffixIcon: Icon(icon)),
    );
  }
}
