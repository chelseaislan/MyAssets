import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

// Masukin email terus bakal dikirim email sama firebase
class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_rounded),
            color: Colors.black,
          ),
          title: Image.asset(
            "images/header_small.png",
            fit: BoxFit.cover,
            height: 30.0,
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
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
                          image: AssetImage("images/forgot.png"),
                          width: MediaQuery.of(context).size.width * 0.8,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Text(
                        "Forgot your password?",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 30),
                      child: Text(
                        "Please input your email address to get a reset password link.",
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(bottom: 20),
                        child: forgotPassEmailField(
                            "Email Address", Icons.email_rounded)),
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Center(
                        child: TextButton(
                            onPressed: () {},
                            child: Text("RESET PASSWORD",
                                style: TextStyle(color: Colors.black))),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }

  TextField forgotPassEmailField(hintText, icon) {
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
}
