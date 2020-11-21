import 'package:cook_face/Home/homescreen.dart';
import 'package:flutter/material.dart';
import 'dart:async';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeScreen())),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // color: Colors.redAccent,
        image: DecorationImage(
        image: AssetImage('assets/images/splashbg.png'), fit: BoxFit.fill),
      ),
      child: Center(
        child: Container(
          child: Image.asset('assets/images/logo.png'),
          height: 100.0,
          width: 100.0,
        ),
      ),
    );
  }
}