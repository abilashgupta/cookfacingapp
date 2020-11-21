import 'package:cook_face/Home/personaldetails.dart';
import 'package:cook_face/shared/styling.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class VerificationScreen extends StatelessWidget {
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
                child: Image.asset('assets/images/Phone_illustration_1.png'),
                height: 130.0,
                width: 130.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Container(
              // color: Colors.redAccent,
              constraints: BoxConstraints(maxWidth: 290.0),
              child: Column(
                children: [
                  Text(
                    'We have sent you a confirmation code via SMS to ',
                    style: TextStyle(fontSize: 13.0),
                  ),
                  SizedBox(width: 5.0),
                  Text(
                    '+91 9677938794.',
                    style:
                        TextStyle(fontSize: 13.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 50.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                otpbox(),
                otpbox(),
                otpbox(),
                otpbox(),
                otpbox(),
                otpbox(),
              ],
            ),
          ),
          SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.only(left: 70.0),
            child: Row(
              children: [
                Text(
                  'Didn\'t receive it? ',
                  style: TextStyle(fontSize: 13.0),
                ),
                SizedBox(width: 3.0),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Resend.',
                    style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 200.0),
          FloatingActionButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PersonalDetails()));
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

Widget otpbox() {
  return Container(
    width: 50,
    child: Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.only(left: 3.0, right: 3.0),
        child: TextFormField(        
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,

          style: TextStyle(fontSize: 18.0,color: Colors.white),
          maxLength: 1,
          decoration: otp,
        ),
      ),
    ),
  );
}
