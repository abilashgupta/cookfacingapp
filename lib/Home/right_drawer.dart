import 'package:cook_face/shared/bottomnavbar.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

class RightDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          ListView(
            children: [
              Container(
                height: 200.0,
                child: ClipPath(
                  clipper: BackgroundClipper(),
                  child: Container(
                    decoration: BoxDecoration(color: Colors.amber),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 15.0, 0.0, 0.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0, top: 10.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xFF616161),
                                      blurRadius: 4.0, // soften the shadow
                                      spreadRadius: 0.1, //extend the shadow
                                      offset: Offset(
                                        2.5,
                                        2.5,
                                      ), // Offset in x and y axes from the container
                                    ),
                                  ],
                                  color: Colors.white),
                              height: 30.0,
                              width: 40.0,
                              child: IconButton(
                                  icon: Icon(
                                    Icons.arrow_back_ios,
                                    size: 20.0,
                                  ),
                                  color: Colors.black,
                                  onPressed: () {
                                    Navigator.pop(context);
                                  }),
                            ),
                          ),
                          SizedBox(width: 150.0),
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(00.0, 15.0, 0.0, 0.0),
                            child: Text(
                              'USER',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50),
              Column(children: [
                Text('Arun Kumar', style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w400,letterSpacing: 0.5,color: Colors.black
                ),),
                Padding(
                  padding: const EdgeInsets.only(top:8.0),
                  child: Text('Arunkumar@gmail.com', style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.w400,letterSpacing: 0.5,color: Colors.grey[600]
                  ),),
                ),
              ],),
              SizedBox(height: 30),
              CustomListTileR(
                  icon: Icons.person_outline,
                  text: 'My Profile',
                  onTap: () {
                    print('tapped');
                  }),
              CustomListTileR(
                  icon: OMIcons.filterFrames,
                  text: 'My Order',
                  onTap: () {
                    print('tapped');
                  }),
              CustomListTileR(
                  icon: Icons.edit_location,
                  text: 'My Address',
                  onTap: () {
                    print('tapped');
                  }),
              CustomListTileR(
                  icon: OMIcons.message,
                  text: 'Contact / Chat',
                  onTap: () {
                    print('tapped');
                  }),
              CustomListTileR(
                  icon: Icons.settings,
                  text: 'Settings',
                  onTap: () {
                    print('tapped');
                  }),
            ],
          ),
          Positioned(
            left:150,
            top:150,
            child: DottedBorder(
              borderType: BorderType.Circle,
              radius: Radius.circular(40),
              padding: EdgeInsets.all(0),
              dashPattern: [8,3],
              color: Colors.grey[700],
              strokeWidth: 5.0,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                child: Container(
                  height: 100,
                  width: 100,
                  color: Color(0xFFFF7043),
                  alignment: Alignment(0,-1),
                  child: Image.asset('assets/images/guy_avtar.png'),
                  ),
              ),
            ),    
            ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class BackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
  
    path.lineTo(0, size.height);
    // path.lineTo(
    //     size.width - (size.width * 0.8), size.height - (size.height * 0.2));

    // path.lineTo(size.width, size.height* 0.8);
    var ctrlpt1 = Offset(0, size.height*0.8);
    var endpt1 = Offset(size.width * 0.2, size.height * 0.8);
    path.quadraticBezierTo(ctrlpt1.dx, ctrlpt1.dy, endpt1.dx, endpt1.dy);
    var ctrlpt2 = Offset(size.width, size.height*0.8);
    var endpt2 = Offset(size.width, size.height * 0.6);
    path.lineTo(size.width*0.8, size.height * 0.8);
    path.quadraticBezierTo(ctrlpt2.dx, ctrlpt2.dy, endpt2.dx, endpt2.dy);
    // path.lineTo(size.width, size.height * 0.8);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class CustomListTileR extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function onTap;

  CustomListTileR({this.icon, this.text, this.onTap});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
        child: Container(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            splashColor: Colors.white24,
            child: Container(
              height: 45.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        icon,
                        size: 24.0,
                        color: Colors.black,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(35.0, 0.0, 30.0, 0.0),
                        child: Text(text,
                            style: TextStyle(
                              fontSize: 14.5,
                              color: Colors.grey[600],
                              fontWeight: FontWeight.w400,
                            )),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 14.0,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
