import 'package:flutter/material.dart';
import 'package:flutter_application_1/login';
import 'package:flutter_application_1/register.dart';
import 'package:flutter_application_1/splash.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      "/": (context) => Splash(),
      //'/welcome': (context) => const Welcome(),
      '/login': (context) => LoginPage(),
      'register': (context) => Register()
    },
  ));
}
