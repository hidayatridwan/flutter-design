import 'package:flutter/material.dart';
import 'package:flutter_login/screens/welcome/welcome_screen.dart';
import 'package:flutter_login/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: kPrimaryColor, scaffoldBackgroundColor: Colors.white),
      home: const WelcomeScreen(),
    );
  }
}
