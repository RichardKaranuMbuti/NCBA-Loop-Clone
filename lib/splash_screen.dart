import 'package:flutter/material.dart';
import 'dart:async';
import 'login_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 1), () {
      setState(() {
        _showSecondImage = true;
      });
      Timer(Duration(milliseconds: 600), () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => LoginPage()),
        );
      });
    });
  }

  bool _showSecondImage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: _showSecondImage
            ? Image.asset(
          'lib/assets/launcher2.jpeg',
          fit: BoxFit.cover,
        )
            : Image.asset(
          'lib/assets/launcher1.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
