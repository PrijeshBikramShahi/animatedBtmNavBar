import 'package:btmnavbar/login.dart';
import 'package:btmnavbar/navbar.dart';
import 'package:btmnavbar/utils/privacy.dart';
import 'package:btmnavbar/utils/tandc.dart';
import 'package:flutter/material.dart';

class SignUpUI extends StatefulWidget {
  const SignUpUI({Key? key}) : super(key: key);

  @override
  State<SignUpUI> createState() => _SignUpUIState();
}

class _SignUpUIState extends State<SignUpUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Column(
            children: [
              Container(
                height: 270,
                width: 400,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://cdn.pixabay.com/photo/2021/06/20/09/56/lionfish-6350449_960_720.png"))),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, bottom: 15),
            child: Row(
              children: [
                Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Column(
              children: [
                TextField(
                  textInputAction: TextInputAction.next,
                  // cursorColor: Colors.red,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      // errorBorder: OutlineInputBorder(),
                      icon: Icon(Icons.email_rounded),
                      labelText: "E-mail"),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      icon: Icon(Icons.person), labelText: "Full Name"),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      icon: Icon(Icons.phone_android), labelText: "Mobile"),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "By signing up, you're agreeing to our  ",
                      style:
                          TextStyle(color: Color.fromARGB(255, 110, 110, 110)),
                    ),
                    InkWell(
                      child: Text(
                        "Terms & Conditions",
                        style: TextStyle(color: Colors.lightBlue),
                      ),
                      focusColor: Colors.lightBlue,
                      autofocus: true,
                      highlightColor: Colors.lightBlue,
                      onTap: (() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TermsConditions()),
                        );
                      }),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                      "and  ",
                      style:
                          TextStyle(color: Color.fromARGB(255, 110, 110, 110)),
                    ),
                    InkWell(
                      child: Text(
                        "Privacy Policy",
                        style: TextStyle(color: Colors.lightBlue),
                      ),
                      focusColor: Colors.lightBlue,
                      autofocus: true,
                      highlightColor: Colors.lightBlue,
                      onTap: (() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PrivacyPolicy()),
                        );
                      }),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Container(
              width: 335,
              color: Color.fromARGB(255, 23, 38, 250),
              child: MaterialButton(
                splashColor: Colors.lightBlue,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NavBar()),
                  );
                },
                child: Text("Continue"),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 115),
            child: Row(
              children: [
                Text("Joined us before?"),
                InkWell(
                  splashColor: Colors.blue,
                  child: Text(
                    "  Login",
                    style: TextStyle(color: Colors.blue),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginUI()));
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
