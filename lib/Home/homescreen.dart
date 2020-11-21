import 'dart:ui';
import 'package:cook_face/Home/verification.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          flexibleSpace: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Transform.scale(
                  scale: 0.7,
                  child: Image.asset(
                    'assets/images/logo.png',
                    fit: BoxFit.contain,
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 10.0),
              child: Container(
                // color: Colors.redAccent,
                child: Image.asset('assets/images/Phone_illustration.png'),
                height: 130.0,
                width: 130.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              'What is your phone number?',
              style: TextStyle(
                  fontSize: 20.0,
                  letterSpacing: 0.2,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Text(
              'You will recceive a code to verify your number.',
              style: TextStyle(fontSize: 12.0),
            ),
          ),
          SizedBox(height: 50.0),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 65.0, right: 20.0),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18.0),
                    initialValue: '+91',
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 5.0),
                      isDense: true,
                    ),
                  ),
                ),
              ),
              // SizedBox(width: 5.0),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(right: 50.0),
                  child: TextField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    style: TextStyle(fontSize: 18.0),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 5.0),
                      isDense: true,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 235.0),
          FloatingActionButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => VerificationScreen()));
            },
            backgroundColor: Colors.amber[600],
            elevation: 0.0,
            child: Icon(
              Icons.arrow_forward_ios,
            ),
          ),
          SizedBox(height: 10.0),
        ],
      ),
    );
  }
}
