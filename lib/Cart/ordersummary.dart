import 'package:cook_face/Cart/cart.dart';
import 'package:cook_face/shared/styling.dart';

import 'package:flutter/material.dart';

class OrderSummary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            "Order Summary",
            style: TextStyle(
                color: Colors.black, fontSize: 18.0, letterSpacing: 0.1),
          ),
        ),
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
        elevation: 0.0,
      ),
      body: Container(
        child: Column(
          children: [
            CartCard(),
            CartCard(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: ClipPath(
                  clipper: BackgroundClipperPayment(),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.purpleAccent,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(25.0),topRight: Radius.circular(25.0))
                    ),
                    height: 170.0,
                    
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30.0,25.0,0.0,0.0),
                          child: Text('Order Summary',style: TextStyle(color: Colors.white,fontSize: 16.0,fontWeight: FontWeight.w700,letterSpacing: 0.2)),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30.0,25.0,0.0,0.0),
                          child: Row(
                            children: [Text('Order Total',style: TextStyle(color: Colors.white),), 
                            SizedBox(width: 200.0),
                            Text('₹ 210',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16.0,))
                            ],),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30.0,15.0,0.0,0.0),
                          child: Row(
                            children: [Text('Delivery Charge',style: TextStyle(color: Colors.white),), 
                            SizedBox(width: 173.0),
                            Text('₹ 30',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16.0,))],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Container(
                color: Colors.green[200],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Address',style: TextStyle(fontWeight: FontWeight.w600),),
                    Text('Daksha Apartments, Coimbatore 641041'),
                    Text('Payment'),
                    Container(
                      child:Row
                      (children: [
                        Image.asset('assets/images/mastercard.png',height: 15,width:15),
                        Text('********241'),
                        Container(
                      height: 45,
                      width: 50,
                      child: TextField(
                        obscureText: true,
                        decoration: cvvbar,
                        maxLength: 3,
                        textAlign: TextAlign.center,
                      ),
                    ),

                    ],)),
                    
                  ],
                ),),
            ),
          ],          
        ),
      ),
    );
  }
}

class BackgroundClipperPayment extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    var ctrlpt1 = Offset(0, size.height*0.8);
    var endpt1 = Offset(size.width * 0.1, size.height * 0.8);
    path.quadraticBezierTo(ctrlpt1.dx, ctrlpt1.dy, endpt1.dx, endpt1.dy);
    var ctrlpt2 = Offset(size.width, size.height*0.8);
    var endpt2 = Offset(size.width, size.height);
    path.lineTo(size.width*0.9, size.height*0.8);
    path.quadraticBezierTo(ctrlpt2.dx, ctrlpt2.dy, endpt2.dx, endpt2.dy);
    
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
