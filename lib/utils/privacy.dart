import 'package:btmnavbar/signup.dart';
import 'package:flutter/material.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SignUpUI()));
          },
          child: Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: Text("Privacy Policy"),
      ),
    );
  }
}
