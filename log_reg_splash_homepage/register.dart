import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:flutter_application_1/login.dart';

class Register extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

final userController = TextEditingController();
final emailController = TextEditingController();
final passwordController = TextEditingController();
// final TextEditingController _name = TextEditingController();
// final TextEditingController _email = TextEditingController();
// final TextEditingController _password = TextEditingController();

// bool isLoading = false;

@override
void dispose() {
  userController.dispose();
  emailController.dispose();
  passwordController.dispose();
}

class StartState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  initWidget() {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  height: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(90),
                        bottomRight: Radius.circular(90)),
                    color: new Color(0xffF5591F),
                    gradient: LinearGradient(
                      colors: [
                        (new Color(0xff1393aa)),
                        (new Color(0xff1fceee))
                      ],
                    ),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 50),
                          child: Image.asset("lib/assets/images/wsp.png"),
                          height: 150,
                          width: 150,
                        )
                      ],
                    ),
                  )),
              // Container(
              //   alignment: Alignment.center,
              //   margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              //   padding: EdgeInsets.only(left: 20, right: 20),
              //   height: 54,
              //   decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(50),
              //       color: Colors.grey[300],
              //       boxShadow: [
              //         BoxShadow(
              //             offset: Offset(0, 10),
              //             blurRadius: 50,
              //             color: Color(0xffEEEEEE)),
              //       ]),
              //   child: TextField(
              //     cursorColor: Color(0xff1393aa),
              //     decoration: InputDecoration(
              //         icon: Icon(
              //           Icons.face,
              //           color: Color(0xff1393aa),
              //         ),
              //         hintText: "Username",
              //         enabledBorder: InputBorder.none,
              //         focusedBorder: InputBorder.none),
              //   ),
              // ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                padding: EdgeInsets.only(left: 20, right: 20),
                height: 54,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey[300],
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: Color(0xffEEEEEE)),
                    ]),
                child: TextField(
                  cursorColor: Color(0xff1393aa),
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.email,
                        color: Color(0xff1393aa),
                      ),
                      hintText: "Email",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                padding: EdgeInsets.only(left: 20, right: 20),
                height: 54,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey[300],
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: Color(0xffEEEEEE)),
                    ]),
                child: TextField(
                  cursorColor: Color(0xff1393aa),
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.vpn_key,
                        color: Color(0xff1393aa),
                      ),
                      hintText: "Password",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none),
                ),
              ),
              // Container(
              //   alignment: Alignment.center,
              //   margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              //   padding: EdgeInsets.only(left: 20, right: 20),
              //   height: 54,
              //   decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(50),
              //       color: Colors.grey[300],
              //       boxShadow: [
              //         BoxShadow(
              //             offset: Offset(0, 10),
              //             blurRadius: 50,
              //             color: Color(0xffEEEEEE)),
              //       ]),
              //   child: TextField(
              //     cursorColor: Color(0xff1393aa),
              //     decoration: InputDecoration(
              //         icon: Icon(
              //           Icons.vpn_key,
              //           color: Color(0xff1393aa),
              //         ),
              //         hintText: "Confirm Password",
              //         enabledBorder: InputBorder.none,
              //         focusedBorder: InputBorder.none),
              //   ),
              // ),
              GestureDetector(
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: 54,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      (new Color(0xff1393aa)),
                      (new Color(0xff1fceee))
                    ], begin: Alignment.centerLeft, end: Alignment.centerRight),
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey[300],
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: Color(0xffEEEEEE))
                    ],
                  ),
                  child: Text(
                    "SIGN UP",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                onTap: () {
                  FirebaseAuth.instance.createUserWithEmailAndPassword(
                      // user: userController.text.trim(),
                      email: emailController.text.trim(),
                      password: passwordController.text.trim());

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ));
                },
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?"),
                    GestureDetector(
                      child: Text(
                        "Login Here!",
                        style: TextStyle(color: Color(0xff1393aa)),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ));
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
