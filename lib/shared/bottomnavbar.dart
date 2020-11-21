import 'package:cook_face/Cart/cart.dart';
import 'package:cook_face/FavCook/favcook.dart';
import 'package:cook_face/Home/home.dart';
import 'package:cook_face/Home/right_drawer.dart';
import 'package:cook_face/icons/border_fav.dart';
import 'package:cook_face/icons/person_icons.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical:15.0),
      child: Container(
        decoration: BoxDecoration(        
        borderRadius: BorderRadius.circular(25.0),
        boxShadow: [
        BoxShadow(
          color: Colors.black54.withOpacity(0.6),
          blurRadius: 10.0,
          spreadRadius: 0.5,
          offset:
              Offset(5.0, 5.0), // shadow direction: bottom right
        )],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25.0),
                  child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.amber,
            elevation: 7.0,
            iconSize: 28.0,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white.withOpacity(.60),
            selectedFontSize: 0.0,
            unselectedFontSize: 0.0,
            onTap: (value) {
              // Respond to item press.
            },
            items: [
              BottomNavigationBarItem(                
                title: Text(''),
                  icon: IconButton(
                    icon: Image.asset("assets/images/logo.png",
                  height: 35.0,
                  width: 35.0,                
                  ),
                  onPressed: () {
                    Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                  }),
                  ),              
              BottomNavigationBarItem(
                title: Text(''),
                icon: IconButton(
                    icon: Icon(MdiIcons.cartOutline),
                    iconSize: 28.0,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Cart()));
                    }),
              ),
              BottomNavigationBarItem(
                title: Text(''),
                icon: IconButton(
                    icon: Icon(BorderFavorite.favorite_border),
                    iconSize: 28.0,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => FavCooks()));
                    }),
              ),
              BottomNavigationBarItem(
                title: Text(''),
                icon: IconButton(
                    icon: Icon(Person.person), iconSize: 28.0,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => RightDrawer()));
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
