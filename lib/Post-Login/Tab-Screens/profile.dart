import 'package:btmnavbar/Pre-Login/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfTab extends StatefulWidget {
  const ProfTab({Key? key}) : super(key: key);

  @override
  State<ProfTab> createState() => _ProfTabState();
}

class _ProfTabState extends State<ProfTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(children: [
            Text("profile tab"),
          ]),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => LoginUI()));
            },
            child: Text("Logout"),
          )
        ],
      ),
    );
  }
}
