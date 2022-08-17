import 'package:btmnavbar/navbar.dart';
import 'package:btmnavbar/signup.dart';
import 'package:btmnavbar/utils/forgot.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginUI extends StatefulWidget {
  LoginUI({Key? key}) : super(key: key);
  var googleLogo =
      "https://imgs.search.brave.com/2cuD8SyH7gweZOpb4AgRbiyDLgUQtZHwkBYqKgauXiQ/rs:fit:1000:1000:1/g:ce/aHR0cHM6Ly93d3cu/ZnJlZXBuZ2xvZ29z/LmNvbS91cGxvYWRz/L2dvb2dsZS1sb2dv/LXBuZy9nb29nbGUt/bG9nby1pY29uLXBu/Zy10cmFuc3BhcmVu/dC1iYWNrZ3JvdW5k/LW9zdGVvcGF0aHkt/MTYucG5n";
  @override
  State<LoginUI> createState() => _LoginUIState();
}

class _LoginUIState extends State<LoginUI> {
  int pressCount = 0;
  bool _hidePassword = true;
  var iconVar = Icon(Icons.visibility);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 70),
                child: Container(
                  child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpUI()));
                      },
                      child: Icon(Icons.arrow_back)),
                ),
              )
            ],
          ),
          Column(
            children: [
              Container(
                height: 220,
                width: 400,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://cdn.pixabay.com/photo/2022/06/24/17/35/relaxation-7282116_960_720.jpg"))),
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
                  "Log In",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
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
                  textInputAction: TextInputAction.done,
                  obscureText: _hidePassword,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      suffixIcon: InkWell(
                        onTap: () {
                          _hidePassword = !_hidePassword;
                          pressCount++;
                          if (pressCount % 2 != 0) {
                            setState(() {
                              iconVar = Icon(Icons.visibility_off);
                            });
                          } else {
                            setState(() {
                              iconVar = Icon(Icons.visibility);
                            });
                          }
                        },
                        child: iconVar,
                      ),
                      icon: Icon(Icons.lock),
                      labelText: "Password"),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 35, top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Password()));
                  },
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Container(
              width: 335,
              color: Color.fromARGB(255, 23, 38, 250),
              child: MaterialButton(
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NavBar()),
                  );
                },
                child: Text("Login"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35, right: 35, top: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 2,
                  width: 140,
                  color: Colors.grey,
                ),
                Text("OR"),
                Container(
                  height: 2,
                  width: 140,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Container(
              width: 335,
              color: Color.fromARGB(255, 23, 38, 250),
              child: MaterialButton(
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NavBar()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://imgs.search.brave.com/2cuD8SyH7gweZOpb4AgRbiyDLgUQtZHwkBYqKgauXiQ/rs:fit:1000:1000:1/g:ce/aHR0cHM6Ly93d3cu/ZnJlZXBuZ2xvZ29z/LmNvbS91cGxvYWRz/L2dvb2dsZS1sb2dv/LXBuZy9nb29nbGUt/bG9nby1pY29uLXBu/Zy10cmFuc3BhcmVu/dC1iYWNrZ3JvdW5k/LW9zdGVvcGF0aHkt/MTYucG5n"))),
                      ),
                      Text("Login with Google"),
                    ],
                  ),
                ),
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
                Text("New to Logistics?"),
                InkWell(
                  child: Text(
                    "  Register",
                    style: TextStyle(color: Colors.blue),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUpUI()));
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
