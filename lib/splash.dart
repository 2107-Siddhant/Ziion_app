import 'dart:async';
import 'package:flutter/material.dart';
import 'initial.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
          () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Initial()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset(
          "assets/images/logo.png",
          height: 300,
          width: 270,
        ),
      ),
    );
  }
}
