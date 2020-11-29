import 'package:cook_face/icons/border_minus.dart';
import 'package:cook_face/shared/bottomnavbar.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class CookProfile extends StatefulWidget {
  @override
  _CookProfileState createState() => _CookProfileState();
}

class _CookProfileState extends State<CookProfile> {
  bool _fav = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Profile Page",
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
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: IconButton(
              icon: _fav
                  ? Icon(OMIcons.favoriteBorder, color: Colors.grey)
                  : Icon(Icons.favorite, color: Colors.amber),
              onPressed: () {
                setState(() {
                  _fav = !_fav;
                });
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              constraints: BoxConstraints(
                maxHeight: 150.0,
              ),
              child: Expanded(
                  child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  cookFoodList('assets/images/top_info_pic_1.jpeg'),
                  cookFoodList('assets/images/top_info_pic_2.jpeg'),
                  cookFoodList('assets/images/top_info_pic_1.jpeg'),
                  cookFoodList('assets/images/top_info_pic_2.jpeg'),
                ],
              )),
            ),
            SizedBox(height: 10.0),
            Row(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/guy_avtar.png'),
                    radius: 20.0,
                  ),
                ),
                SizedBox(width: 20.0),
                Column(
                  //Main column
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 10.0, 0.0, 0.0),
                      child: Container(
                        // color: Colors.red,
                        child: Text(
                          'Harihara Sudhan',
                          style: TextStyle(
                            fontSize: 18.0,
                            letterSpacing: 0.2,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 3.0, 0.0, 0.0),
                      child: Container(
                        // color: Colors.black,
                        child: SmoothStarRating(
                          isReadOnly: true,
                          allowHalfRating: true,
                          starCount: 5,
                          rating: 4.0,
                          size: 18.0,
                          onRated: (val) {
                            print('$val stars');
                          },
                          color: Colors.amber[700],
                          borderColor: Colors.amber[700],
                          spacing: 0.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              children: [
                Icon(
                  Icons.query_builder,
                  size: 22.0,
                ),
                Text(' 10 min'),
                SizedBox(width: 30.0),
                Icon(Icons.star_border),
                Text(' 4.5'),
                SizedBox(width: 30.0),
                Icon(MdiIcons.moped),
                Text(' Free Delivery'),
                // SizedBox(width: 10.0),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              constraints: BoxConstraints(
                maxWidth: 350.0,
              ),
              // color: Colors.greenAccent,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Harihara Sudhan is a resident of Coimbatore, who has always taken much interest in cooking since his early days. Now, he wishes to share his unique delicacies to anyone who might be interested in exquisite South Indian dining.',
                  style: TextStyle(
                      letterSpacing: 0.1,
                      color: Colors.grey,
                      fontWeight: FontWeight.w600),
                  strutStyle: StrutStyle(height: 1.5),
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  color: Colors.amber[200],
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'South Indian',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(width: 20.0),
                Container(
                  constraints: BoxConstraints(minWidth: 100.0),
                  color: Colors.amber[200],
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        'Vegan',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20.0),
                Container(
                  color: Colors.amber[200],
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'North Indian',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Text(
              'Dishes offered Today',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30.0),
            DishCard(),
            DishCard(),
            SizedBox(height: 30.0),
          ]),
        ),
      ]),
    );
  }
}

Widget cookFoodList(String imagename) {
  return Container(
    decoration: BoxDecoration(
        // color: Colors.cyanAccent,
        ),
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 1.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Image.asset(
          imagename,
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}

class DishCard extends StatelessWidget {
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
          margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
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
                              border:
                                  Border.all(color: Colors.amber, width: 0.0),
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
                              border:
                                  Border.all(color: Colors.amber, width: 0.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 2.0,
                                  top: 2.5,
                                  right: 20.0,
                                  bottom: 2.5),
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
