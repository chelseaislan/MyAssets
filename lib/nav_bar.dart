import 'package:flutter/material.dart';
import 'package:flutter_myassets/main_screens/home_screen.dart';
import 'package:flutter_myassets/main_screens/my_account.dart';
import 'package:flutter_myassets/main_screens/my_funds.dart';

// Bottom Navbar dipisah dari body
// Index 0: home screen
class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  // Add navbar logics and onitemtap
  // Buat file baru terus panggil ke widgetoptions selected index
  var _selectedIndex = 0;
  var _widgetOptions = [
    HomeScreen(),
    MyFunds(),
    MyAccount(),
  ];

  void _onItemTap(var index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Disini cuma perlu bottom navigation bar,
  // gak perlu ada appbar sama yang lain-lain
  // body nya cuma buat manggil index, jadi sistemnya kayak fragment
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // Biar tiap screen nya beda tiap index
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 10,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet_rounded),
            label: "Funds",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_rounded),
            label: "Account",
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
    );
  }
}
