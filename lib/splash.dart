import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_myassets/login_page.dart';

// Gimana caranya biar bisa langsung ke next page
// tanpa perlu bikin button
class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage("images/splash.png"),
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 0.5,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.4,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 1.0,
                      primary: Colors.orange[700],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return LoginPage();
                    }));
                  },
                  child: Text(
                    "Continue",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
            )
          ],
        )),
      ),
    );
  }
}
