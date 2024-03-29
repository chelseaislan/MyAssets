import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_myassets/onboarding/forgot_password.dart';
import 'package:flutter_myassets/nav_bar.dart';
import 'package:flutter_myassets/onboarding/signup_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

// Email sama password
class _LoginPageState extends State<LoginPage> {
  TextEditingController controller = TextEditingController();
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
                          image: AssetImage("images/login.png"),
                          width: MediaQuery.of(context).size.width * 0.8,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Text(
                        "Welcome back!",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 30),
                      child: Text(
                        "Login to your MyAssets account.",
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: loginEmailField(
                            "Email Address", Icons.email_rounded)),
                    Container(
                        margin: EdgeInsets.only(bottom: 20),
                        child:
                            loginPassField("Password", Icons.vpn_key_rounded)),
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 45,
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushReplacement(context,
                                      MaterialPageRoute(builder: (context) {
                                    return NavBar();
                                  }));
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.orange[700],
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20))),
                                child: Text(
                                  "LOG IN",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pushReplacement(context,
                                        MaterialPageRoute(builder: (context) {
                                      return SignupPage();
                                    }));
                                  },
                                  child: Text("Sign Up",
                                      style: TextStyle(color: Colors.black))),
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return ForgotPassword();
                                    }));
                                  },
                                  child: Text("Reset Password",
                                      style: TextStyle(color: Colors.black))),
                            ],
                          ),
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

  TextField loginEmailField(hintText, icon) {
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

  TextField loginPassField(hintText, icon) {
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
