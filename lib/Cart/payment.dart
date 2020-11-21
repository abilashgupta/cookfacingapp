import 'package:flutter/material.dart';

import 'addcard.dart';
import 'ordersummary.dart';

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            "Select payment Method",
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
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(30.0, 20.0, 0.0, 0.0),
                  child: Container(
                    constraints: BoxConstraints(
                      maxWidth: 180.0,
                    ),
                    // color: Colors.redAccent,
                    child: Text(
                      'Select your payment method',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(width: 70.0),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 12.0, 10.0, 0.0),
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.purple[600],
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(12.0, 4.0, 20.0, 4.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.local_offer,
                              color: Colors.white,
                              size: 24.0,
                            ),
                            SizedBox(width: 5.0),
                            Text(
                              '₹ 140',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )),
                )
              ],
            ),
            SizedBox(height: 10.0),
            PayCard(),
            SizedBox(height: 50.0),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddCard()));
              },
              child: Container(
                width: 250,
                child: Row(
                  children: [
                    Icon(
                      Icons.add,
                      size: 28.0,
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      'Add Credit / Debit Card',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40.0),
            Container(
              width: 300,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(15.0),              
                border: Border.all(color: Colors.red, width: 2.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 8.0, 8.0, 8.0),
                    child: Text(
                      'Mastercard',
                      style: TextStyle(fontSize: 15.0, color: Colors.black),
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/mastercard.png',
                        height: 20,
                        width: 50,
                      ),
                      Text(
                        '*********241',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, letterSpacing: 1.0),
                      ),
                    ],
                  ),
                  SizedBox(height: 5.0),
                ],
              ),
            ),
            SizedBox(
              height: 110.0,
            ),
            InkWell(
              onTap: () {},
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[300],
                        blurRadius: 25.0,
                        spreadRadius: 5.0,
                        offset:
                            Offset(5.0, 5.0), // shadow direction: bottom right
                      )
                    ],
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.fromLTRB(100.0, 15.0, 100.0, 15.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OrderSummary()));
                      },
                      child: Text(
                        'SELECT PAYMENT',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.5),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PayCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 120.0,
        // color: Colors.redAccent,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            visa(),
            mastercard(),
            cod(),
            visa(),
            mastercard(),
            cod(),
          ],
        ),
      ),
    );
  }
}

Widget visa() {
  return ClipRRect(
    borderRadius: BorderRadius.circular(25.0),
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Container(
        height: 100,
        width: 90,
        decoration: BoxDecoration(
        color: Colors.blue[200],
        borderRadius: BorderRadius.circular(25.0),
        border: Border.all(color: Colors.red, width: 2.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(25.0, 20.0, 25.0, 0.0),
              child: Image.asset(
                'assets/images/visa.png',
                height: 20,
                width: 50,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 1.0, 0.0, 2.0),
              child: Text(
                'SUDHAN',
                style: TextStyle(
                    color: Colors.white, letterSpacing: 0.5, fontSize: 12.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 1.0, 0.0, 2.0),
              child: Text(
                '****471',
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.w600,
                    fontSize: 12.0),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget mastercard() {
  return ClipRRect(
    borderRadius: BorderRadius.circular(25.0),
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Container(
        height: 100,
        width: 90,
        decoration: BoxDecoration(
        color: Colors.orange[200],
        borderRadius: BorderRadius.circular(25.0),
        border: Border.all(color: Colors.red, width: 2.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 0.0),
              child: Image.asset(
                'assets/images/mastercard.png',
                height: 30,
                width: 80,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 1.0, 0.0, 2.0),
              child: Text(
                'GURU',
                style: TextStyle(
                    color: Colors.white, letterSpacing: 0.5, fontSize: 12.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 1.0, 0.0, 2.0),
              child: Text(
                '****371',
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.w600,
                    fontSize: 12.0),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget cod() {
  return ClipRRect(
    borderRadius: BorderRadius.circular(25.0),
    child: Card(
      child: Container(
        height: 100,
        width: 90,
        decoration: BoxDecoration(
        color: Colors.green[300],
        borderRadius: BorderRadius.circular(25.0),
        border: Border.all(color: Colors.red, width: 2.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(35.0, 10.0, 35.0, 0.0),
              child: Image.asset(
                'assets/images/payment.png',
                color: Colors.white,
                scale: 0.75,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.fromLTRB(17.0, 1.0, 0.0, 0.0),
              child: Text(
                'CASH ON',
                style: TextStyle(
                    color: Colors.white, letterSpacing: 0.5, fontSize: 12.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(17.0, 1.0, 0.0, 0.0),
              child: Text(
                'DELIVERY',
                style: TextStyle(
                    color: Colors.white, letterSpacing: 0.5, fontSize: 12.0),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
