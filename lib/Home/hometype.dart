import 'package:cook_face/Home/location.dart';
import 'package:flutter/material.dart';

class HomeType extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 12.0, bottom: 12.0),
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
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              'Tell us where you stay',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.2),
            ),
          ),
          SizedBox(height: 20.0),
          Text('This will help us contact you to your neighbours on'),
          Text('TiffinBox'),
          SizedBox(height: 50),
          InkWell(
            onTap: () {
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => Location()));
            },
            child: Container(
              height: 110.0,
              width: 330.0,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(25.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12.withOpacity(0.3),
                    blurRadius: 3.5, // soften the shadow
                    spreadRadius: 0.05, //extend the shadow
                    offset: Offset(
                        -2.5, 2.5), // Offset in x and y axes from the container
                  ),
                ],
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 10.0),
                    child: Image.asset(
                      'assets/images/round_apartment_48dp.png',
                      scale: 0.85,
                      color: Colors.amber,
                      height: 100.0,
                      width: 60.0,
                    ),
                  ),
                  VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                    width: 10,
                    indent: 25,
                    endIndent: 25,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8.0,20.0,0.0,0.0),
                        child: Text('Apartment',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w400),),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8.0,10.0,0.0,0.0),
                        child: Container(
                            constraints: BoxConstraints(
                              maxWidth: 210.0,
                            ),
                            child: Text(
                                'Choose this if you stay in a gated community or an apartment complex.',
                                style: TextStyle(fontSize: 11.0),)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 50.0),   
          InkWell(
            onTap: () {
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => Location()));
           },
            child: Container(
              height: 110.0,
              width: 330.0,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(25.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12.withOpacity(0.3),
                    blurRadius: 3.5, // soften the shadow
                    spreadRadius: 0.05, //extend the shadow
                    offset: Offset(
                        -2.5, 2.5), // Offset in x and y axes from the container
                  ),
                ],
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 10.0),
                    child: Image.asset(
                      'assets/images/round_house_48dp.png',
                      scale: 0.85,
                      color: Colors.amber,
                      height: 100.0,
                      width: 60.0,
                    ),
                  ),
                  VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                    width: 10,
                    indent: 25,
                    endIndent: 25,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8.0,20.0,0.0,0.0),
                        child: Text('Independent House',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w400),),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8.0,10.0,0.0,0.0),
                        child: Container(
                            constraints: BoxConstraints(
                              maxWidth: 210.0,
                            ),
                            child: Text(
                                'Choose this option if you stay in an individual building or less than 10 residents.',
                                style: TextStyle(fontSize: 11.0),)),
                      ),
                      
                    ],
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
