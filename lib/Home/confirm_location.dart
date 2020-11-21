import 'package:cook_face/Home/home.dart';
import 'package:flutter/material.dart';

class ConfirmLocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        left: false,
        right: false,
        bottom: false,
        child: Column(children: [
          Stack(
            children: [              
              Container(
                color: Colors.lightGreenAccent,
                height: MediaQuery.of(context).size.height*0.695,
                child: Image.asset('assets/images/Phone_illustration_1.png',fit: BoxFit.contain,
                ),
              ),             
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 10.0, bottom: 12.0),
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
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15.0,15.0,0.0,15.0),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text('Select Delivery Location',style: TextStyle(fontSize: 18.0),),
            ),
          ),
          Divider(
            indent: 5.0,
            endIndent: 5.0,                
            color: Colors.black,
            height: 1.0,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15.0,10.0,0.0,0.0),
            child: Container(
              alignment: Alignment.topLeft,
              child: Text('YOUR LOCATION',style: TextStyle(color: Colors.grey,fontSize: 14.0),)),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15.0,10.0,0.0,10.0),
            child: Row(children: [
              Icon(Icons.check_circle),
              SizedBox(width: 5.0,),
              Text('Thondamuthur Rd, Vadavalli'),
            ],),
          ),
          Divider(
            indent: 5.0,
            endIndent: 5.0,                
            color: Colors.black,
            height: 1.0,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
            },
            child:Padding(
              padding: const EdgeInsets.symmetric(vertical :10.5),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.amber,
                  boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 3.5, // soften the shadow
                            spreadRadius: 0.05, //extend the shadow
                            offset: Offset(3.0,3.5), // Offset in x and y axes from the container
                          ),],
                ),                
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 120.0,vertical: 12.0),
                  child: Text('CONFIRM LOCATION',style: TextStyle(color: Colors.white,)),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
