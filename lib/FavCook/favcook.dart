import 'package:cook_face/shared/bottomnavbar.dart';
import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class FavCooks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "My Favourite Cooks",
          style: TextStyle(
              color: Colors.black, fontSize: 18.0, letterSpacing: 0.1),
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
      bottomNavigationBar: BottomNavBar(),
      body: Container(
          child: Column(
        children: [
          FavCookCard(),
          FavCookCard(),
          FavCookCard(),
        ],
      )),
    );
  }
}

class FavCookCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 155,
        decoration: new BoxDecoration(
          boxShadow: [
            new BoxShadow(
                color: Colors.grey[100],
                blurRadius: 5.0,
                spreadRadius: 0.0,
                offset: Offset(9.0, 9.0)),
          ],
        ),
        child: Card(
            margin: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
            elevation: 1.0,
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, top: 20.0, bottom: 10.0),
                        child: Container(
                          height: 80.0,
                          width: 80.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.transparent,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[200],
                                blurRadius: 10.0,
                                spreadRadius: 0.0,
                                offset: Offset(
                                    4.0, 4.0), // shadow direction: bottom right
                              )
                            ],
                          ),
                          child: CircleAvatar(
                            radius: 50.0,
                            backgroundColor: Colors.blueAccent,
                            backgroundImage: AssetImage(
                                'assets/images/food_on_plate(1).png'),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Container(
                              height: 8.0,
                              width: 8.0,
                              decoration: BoxDecoration(
                                color: Color(0xFF00E676),
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                          SizedBox(width: 5.0),
                          Text(
                            'Online',
                            style: TextStyle(
                                color: Colors.grey[600],
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(width: 15.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                        child: Container(
                          child: SmoothStarRating(
                            isReadOnly: true,
                            allowHalfRating: true,
                            starCount: 5,
                            rating: 4.0,
                            size: 18.0,
                            onRated: (val) {
                              print('$val stars');
                            },
                            color: Colors.amber,
                            borderColor: Colors.amber,
                            spacing: 0.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: Text(
                          'Harihara Sudhan',
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        // color: Colors.redAccent,
                        constraints: BoxConstraints(
                          maxWidth: 200.0,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Text(
                            'Cooking healthy for radiant health',
                            style: TextStyle(
                                fontSize: 13.0,
                                letterSpacing: 0.2,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey[600]),
                          ),
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Row(children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: Colors.amber,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Icon(
                              OMIcons.restaurant,
                              size: 14.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(width: 5.0),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0, top: 2.0),
                          child: Text('Currently serves 3 dishes',
                              style: TextStyle(
                                  fontSize: 11.0, color: Colors.grey[600])),
                        ),
                      ])
                    ],
                  ),
                  SizedBox(width: 30.0),
                  Container(
                      height: 150,
                      width: 51.4,
                      color: Colors.amber,
                      child: IconButton(
                        onPressed: () {
                          print('To Delete');
                        },
                        icon: Icon(Icons.delete),
                        color: Colors.white,
                      )),
                ],
              ),
            )));
  }
}
