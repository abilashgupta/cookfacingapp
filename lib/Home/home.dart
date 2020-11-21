import 'package:cook_face/Home/dish.dart';
import 'package:cook_face/Home/left_drawer.dart';
import 'package:cook_face/Home/right_drawer.dart';
import 'package:cook_face/shared/bottomnavbar.dart';
import 'package:cook_face/shared/styling.dart';
import 'package:cook_face/Home/recommended.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
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
      drawer: LeftDrawer(),
      endDrawer: RightDrawer(),
      extendBody: true,
      bottomNavigationBar: BottomNavBar(),
      body: ListView(
        children: [Container(
          padding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.0),
              Container(
                child: Text(
                  "Let's Eat !",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                child: Text(
                  "Healthy Foods...",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 25.0,
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                height: 45.0,
                child: Row(
                  children: [
                    Container(
                      width: 250.0,
                      child: Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(right: 10.0),
                          child: TextField(
                            textAlign: TextAlign.start,
                            decoration: searchbar,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text(
                        'VEG ONLY',
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: FlutterSwitch(
                        width: 45.0,
                        height: 25.0,
                        valueFontSize: 0.0,
                        activeColor: Colors.amber,
                        toggleSize: 25.0,
                        value: status,
                        borderRadius: 20.0,
                        padding: 0.0,
                        showOnOff: false,
                        onToggle: (val) {
                          setState(() {
                            status = val;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Recommended',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Column(children: [
                Container(
                  height: 285,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Recommended(),
                      Recommended(),
                      Recommended(),
                      Recommended(),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Dish(),
                    Dish(),
                    Dish(),
                    Dish(),
                  ],
                ),
              ]),
              SizedBox(height: 5.0),
            ],
          ),
        ),]
      ),
    );
  }
}
