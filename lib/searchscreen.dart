import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class seaScreen extends StatefulWidget {
  const seaScreen({Key? key}) : super(key: key);

  @override
  State<seaScreen> createState() => _seaScreenState();
}

class _seaScreenState extends State<seaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("search"),
      ),
    );
  }
}
