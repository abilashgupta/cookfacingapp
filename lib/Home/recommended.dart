import 'package:cook_face/icons/border_fav.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class Recommended extends StatefulWidget {
  @override
  _RecommendedState createState() => _RecommendedState();
}

class _RecommendedState extends State<Recommended> {
  Color fav = Colors.amber;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          SizedBox(height: 15.0),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 110.0),
                child: Container(
                  height: 160.0,
                  width: 220.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.amber,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Container(
                  height: 160.0,
                  width: 160.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(75.0),
                    color: Colors.transparent,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54.withOpacity(0.2),
                        blurRadius: 20.0,
                        spreadRadius: 0.5,
                        offset:
                            Offset(0.0, 0.0), // shadow direction: bottom right
                      )
                    ],
                  ),
                  child: CircleAvatar(
                    radius: 200.0,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage('assets/images/food_on_plate(1).png'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 175.0),
                child: SmoothStarRating(
                  allowHalfRating: true,
                  starCount: 5,
                  rating: 0,
                  size: 18.0,
                  onRated: (val) {
                    print('$val stars');
                  },
                  color: Colors.white,
                  borderColor: Colors.white,
                  spacing: 0.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 200.0),
                child: Text(
                  'Egg Sandwich',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 150.0, top: 190.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100.0),
                    border: Border.all(
                      width: 0.1,
                      color: Colors.white,
                    ),
                  ),
                  child: IconButton(
                    icon: Icon(
                      BorderFavorite.favorite_border,
                      color: Colors.amber,                    
                    ),
                    padding: EdgeInsets.all(0.0),
                    iconSize: 30.0,
                    onPressed: () {},
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 230.0),
                child: Text(
                  '₹ 140',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
