import 'dart:ui';

import 'package:btmnavbar/home.dart';
import 'package:btmnavbar/profile.dart';
import 'package:btmnavbar/searchscreen.dart';
import 'package:btmnavbar/shop.dart';
import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

class NavBar extends StatefulWidget {
  // const NavBar({Key? key,) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int pressCount = 0;
  int _btmNavBarIndex = 0;
  var flIcon = Icons.dark_mode;
  var hereColor = Colors.black;
  var themData = ThemeData.light();
  var btmColor = Color.fromARGB(255, 241, 241, 241);
  List itemList = [
    Icons.home,
    Icons.home,
    Icons.home,
    Icons.home,
  ];
  List functionList = [
    Homepage(),
    seaScreen(),
    ShopTab(),
    ProfTab(),
  ];

  void _themeChanger() {
    pressCount++;
    if (pressCount % 2 == 0) {
      setState(() {
        themData = ThemeData.light();
        // bodyColor = Colors.white;
        hereColor = Colors.black;
        btmColor = Color.fromARGB(255, 241, 241, 241);
        flIcon = Icons.dark_mode;
      });
    } else {
      setState(() {
        themData = ThemeData.dark(); // bodyColor = Colors.black;
        hereColor = Colors.white;
        btmColor = Color.fromARGB(255, 34, 34, 34);
        flIcon = Icons.light_mode;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // print(hereColor);
    return Theme(
      data: themData,
      child: Scaffold(
        // backgroundColor: hereColor,
        body: Container(
          child: functionList.elementAt(_btmNavBarIndex),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          foregroundColor: hereColor,
          child: Icon(flIcon),
          backgroundColor: btmColor,
          splashColor: Colors.orange,
          hoverColor: Colors.red,
          focusColor: Colors.red,
          autofocus: true,
          elevation: 10,
          highlightElevation: 6,
          isExtended: true,
          onPressed: _themeChanger,
        ),
        bottomNavigationBar: AnimatedBottomNavigationBar(
            hideAnimationCurve: Curves.bounceInOut,
            splashSpeedInMilliseconds: 250,
            splashRadius: 30,
            leftCornerRadius: 10,
            rightCornerRadius: 10,
            splashColor: Colors.orange,
            activeColor: Colors.red,
            inactiveColor: hereColor,
            backgroundColor: btmColor,
            // backgroundGradient: Gradient(colors: [Colors.red,Colors.orange,],stops: [10,20],transform: gradi),
            gapLocation: GapLocation.center,
            notchMargin: 10,
            notchSmoothness: NotchSmoothness.softEdge,
            icons: [
              Icons.home,
              Icons.search,
              Icons.shop,
              Icons.person,
            ],
            activeIndex: _btmNavBarIndex,
            onTap: (index) {
              print("pressed");
              setState(() {
                _btmNavBarIndex = index;
              });
            }),
      ),
    );
  }
}
