import 'package:flutter/material.dart';
import 'package:btmnavbar/navbar.dart';

class Homepage extends StatefulWidget {
  // const Homepage({Key? key, required String color}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  // final color;
  // _HomepageState();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body: Center(
        child: Text("hoem1"),
      ),
    );
  }
}
