import 'package:cook_face/shared/bottomnavbar.dart';
import 'package:cook_face/shared/styling.dart';
import 'package:flutter/material.dart';

class AddCard extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 40.0),
          child: Text(
            "Add New Card",
            style: TextStyle(
                color: Colors.black, fontSize: 18.0, letterSpacing: 0.1),
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 12.0, bottom: 12.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[300],
                  blurRadius: 3.5, // soften the shadow
                  spreadRadius: 0.05, //extend the shadow
                  offset: Offset(
                      2.5, 2.5), // Offset in x and y axes from the container
                ),
              ],
              color: Colors.white,
            ),
            child: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: 18.0,
                ),
                color: Colors.black,
                onPressed: () {
                  Navigator.pop(context);
                }),
          ),
        ),
        elevation: 0.0,
      ),
      bottomNavigationBar: BottomNavBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30.0),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Text(
              'Card Info',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.only(left:20.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Card Number',style: TextStyle(fontSize: 16.0,letterSpacing: 0.3),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right:30.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        boxShadow: [
                        BoxShadow(
                        color: Colors.black54.withOpacity(0.3),
                        blurRadius: 10.0,
                        spreadRadius: 0.5,
                        offset:
                            Offset(0.0, -3.0), // shadow direction: bottom right
                      )],
                      ),
                      child: TextFormField(
                        style: TextStyle(letterSpacing: 1.0),
                        textAlign: TextAlign.start,
                        decoration : cardbar.copyWith(hintText: '0000 0000 0000 0000'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Name on Card',style: TextStyle(fontSize: 16.0,letterSpacing: 0.3),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right:30.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        boxShadow: [
                        BoxShadow(
                        color: Colors.black54.withOpacity(0.3),
                        blurRadius: 10.0,
                        spreadRadius: 0.5,
                        offset:
                            Offset(0.0, -3.0), // shadow direction: bottom right
                      )],
                      ),
                      child: TextFormField(
                        decoration : cardbar.copyWith(hintText: 'John Doe'),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('MM / YYYY',style: TextStyle(fontSize: 16.0,letterSpacing: 0.3),),
                      ),
                      SizedBox(width: 85.0),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('CVV',style: TextStyle(fontSize: 16.0,letterSpacing: 0.3),),
                      ),
                    ],),
                    Row(children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right:20.0),
                        child: Container(
                          decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        boxShadow: [
                        BoxShadow(
                        color: Colors.black54.withOpacity(0.3),
                        blurRadius: 10.0,
                        spreadRadius: 0.5,
                        offset:
                            Offset(0.0, -3.0), // shadow direction: bottom right
                      )],
                      ),
                          child: TextFormField(
                          decoration : cardbar.copyWith(hintText: '01/2020',contentPadding: EdgeInsets.symmetric(vertical:5.0, horizontal: 50.0),),
                  ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right:30.0),
                        child: Container(
                          decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        boxShadow: [
                        BoxShadow(
                        color: Colors.black54.withOpacity(0.3),
                        blurRadius: 10.0,
                        spreadRadius: 0.5,
                        offset:
                            Offset(0.0, -3.0), // shadow direction: bottom right
                      )],
                      ),
                          child: TextFormField(
                          decoration : cardbar.copyWith(hintText: '123',contentPadding: EdgeInsets.symmetric(vertical:5.0, horizontal: 65.0),),
                  ),
                        ),
                      ),
                    ),  
                    ],),
                  SizedBox(height:20.0),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(                      
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                      BoxShadow(
                        color: Colors.black54.withOpacity(0.4),
                        blurRadius: 10.0,
                        spreadRadius: 0.5,
                        offset:
                            Offset(5.0, 5.0), // shadow direction: bottom right
                      )],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical:10.0,horizontal: 25.0),
                        child: Text('ADD MY CARD',style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.w600,color: Colors.white),),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
