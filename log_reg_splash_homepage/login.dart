import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:flutter_application_1/register.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<StatefulWidget> createState() => StartState();
}

final emailController = TextEditingController();
final passwordController = TextEditingController();

@override
void dispose() {
  emailController.dispose();
  passwordController.dispose();
}

class StartState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  initWidget() {
    return SafeArea(
      child: (Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  height: 350,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
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
                          height: 150,
                          width: 150,
                          child: Image.asset("lib/assets/images/wsp.png"),
                        )
                      ],
                    ),
                  )),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                padding: EdgeInsets.only(left: 20, right: 20),
                height: 54,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey[300],
                    boxShadow: const [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: Color(0xffEEEEEE)),
                    ]),
                child: TextField(
                  cursorColor: Color(0xff1393aa),
                  controller: emailController,
                  decoration: const InputDecoration(
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
                    boxShadow: const [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: Color(0xffEEEEEE)),
                    ]),
                child: TextField(
                  controller: passwordController,
                  cursorColor: Color(0xff1393aa),
                  decoration: const InputDecoration(
                      icon: Icon(
                        Icons.vpn_key,
                        color: Color(0xff1393aa),
                      ),
                      hintText: "password",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {},
                  child: Text("Forget password"),
                ),
              ),
              GestureDetector(
                onTap: () {
                  FirebaseAuth.instance.signInWithEmailAndPassword(
                      email: emailController.text.trim(),
                      password: passwordController.text.trim());

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ));
                },
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
                    boxShadow: const [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: Color(0xffEEEEEE))
                    ],
                  ),
                  child: const Text(
                    "LOGIN",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    GestureDetector(
                      child: const Text(
                        "Register Here!",
                        style: TextStyle(color: Color(0xff1393aa)),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Register()));
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
