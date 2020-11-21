import 'package:flutter/material.dart';

// Search Bar styling
const searchbar = InputDecoration(
  hintText: 'Search foods/cooks',
  contentPadding: EdgeInsets.all(10.0),
  prefixIcon: Icon(Icons.search),
  fillColor: Color(0xFFF5F5F5),
  filled: true,
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(50.0)),
    borderSide: BorderSide(color: Colors.amber, width: 2.0),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(50.0)),
    borderSide: BorderSide(color: Colors.amber, width: 2.0),
  ),
);

//  CVV Styling
const cvvbar = InputDecoration(
  hintText: 'CVV',
  hintStyle: TextStyle(fontSize: 14.0,),
  contentPadding: EdgeInsets.all(5.0),
  fillColor: Colors.white,
  filled: true,
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
    borderSide: BorderSide(color: Colors.yellow, width: 2.0),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
    borderSide: BorderSide(color: Colors.yellow, width: 2.0),
  ),
);

//  Add New Card Styling

const cardbar = InputDecoration(
  hintStyle: TextStyle(fontSize: 14.0,letterSpacing: 1.0),
  contentPadding: EdgeInsets.symmetric(vertical:5.0, horizontal: 30.0),
  fillColor: Color(0xFFFFF9C4),
  filled: true,
    enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(25.0)),
    borderSide: BorderSide(color: Colors.transparent, width: 2.0),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(25.0)),
    borderSide: BorderSide(color: Colors.transparent, width: 2.0),
  ),
);

// OTP Page

const otp = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 12.0),
  isDense: true,
  filled: true,
  border: InputBorder.none,
  fillColor: Colors.amber,
  counterText: '',
);

//  Add Menu Item styling
const addmenustyle = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0),
  isDense: true,
);
