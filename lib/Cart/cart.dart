import 'package:cook_face/Cart/payment.dart';
import 'package:cook_face/Home/right_drawer.dart';
import 'package:cook_face/icons/border_minus.dart';
import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "My Order",
          style: TextStyle(
              color: Colors.black, fontSize: 18.0, letterSpacing: 0.1),
        ),
        backgroundColor: Colors.transparent,
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
        actions: [
          Builder(builder: (BuildContext context) {
            return Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: IconButton(
                onPressed: () => Scaffold.of(context).openEndDrawer(),
                icon: Image.asset('assets/images/guy_avtar.png'),
                iconSize: 35.0,
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              ),
            );
          }),
        ],
      ),
      endDrawer: RightDrawer(),
      body: Container(
        child: Stack(
          children: [
            Padding(
                padding: EdgeInsets.only(top: 30.0, left: 30.0),
                child: Text(
                  'Cart',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                )),
            Column(
                children: [
                SizedBox(
                  height: 80.0,
                ),
                CartCard(),
                CartCard(),
              ],
            ),
            Positioned(
              bottom: 0.0,
              left: 50.0,
              right: 50.0,
              child: Container(
                color: Colors.grey[100],
                child: Stack(children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(25.0, 15.0, 0.0, 3.0),
                        child: Text(
                          'Your Price',
                          style: TextStyle(
                              fontSize: 14.0, color: Colors.grey[600]),
                        ),
                      ),
                      Row(children: [
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 5.0),
                          child: Text(
                            '₹',
                            style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 8.0),
                          child: Text(
                            '150',
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ]),
                    ],
                  ),
                  Positioned(
                    right: 30.0,
                    top: 17.5,
                    child: InkWell(
                      onTap: () {},
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 50.0,
                                spreadRadius: 55.0,
                                offset: Offset(
                                    15.0, 15.0), // shadow direction: bottom right
                              )
                            ],
                          ),
                          constraints: BoxConstraints(
                            maxHeight: 80.0,
                          ),
                          // color: Colors.amber,
                          child: Padding(
                            padding:
                                const EdgeInsets.fromLTRB(25.0, 8.0, 25.0, 8.0),
                            child: InkWell(
                              onTap: (){
                                Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Payment()));
                              },
                                child: Text(
                                'ORDER NOW',
                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CartCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Container(
        decoration: new BoxDecoration(
          boxShadow: [
            new BoxShadow(
                color: Colors.grey[100],
                blurRadius: 4.0,
                spreadRadius: 0.0,
                offset: Offset(9.0, 9.0)),
          ],
        ),
        child: Card(
          margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
          elevation: 0.5,
          child: Container(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 65.0,
                    width: 65.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.transparent,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.transparent,
                          blurRadius: 20.0,
                          spreadRadius: 0.0,
                          offset: Offset(
                              20.0, 20.0), // shadow direction: bottom right
                        )
                      ],
                    ),
                    child: CircleAvatar(
                      radius: 50.0,
                      backgroundColor: Colors.transparent,
                      backgroundImage:
                          AssetImage('assets/images/food_on_plate(1).png'),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15.0,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 0.0, bottom: 8.0),
                      child: Text('Chicken Biryani',
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.w600)),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(4.0),
                            child: Container(
                              color: Colors.amber,
                              child: Icon(
                                BorderMinus.minus_squared,
                                color: Colors.white,
                                size: 20.0,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 5.0),
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            bottomLeft: Radius.circular(4.0),
                          ),
                          child: Container(
                            color: Colors.amber,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 5.0, right: 7.0),
                              child: Text(
                                '0',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 2.0),
                        Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              border: Border.all(color: Colors.amber, width: 0.0),
                            ),
                            // color: Colors.amber,
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 20.0,
                            ),
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(4.0),
                            bottomRight: Radius.circular(4.0),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              border: Border.all(color: Colors.amber, width: 0.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 2.0, top: 2.5, right: 20.0, bottom: 2.5),
                              child: Text(
                                'ADD',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(width: 80.0),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 0.0, 5.0, 27.5),
                  child: Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 6.0),
                          child: Text(
                            '₹',
                            style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Text(
                          '140',
                          style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
