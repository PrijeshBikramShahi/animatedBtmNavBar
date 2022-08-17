import 'package:btmnavbar/login.dart';
import 'package:btmnavbar/signup.dart';
import 'package:btmnavbar/navbar.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignUpUI(),
    );
  }
}
