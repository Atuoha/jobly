import 'package:flutter/material.dart';

const backgroundColor = Color.fromARGB(255, 237, 236, 236);
const kColor1 = Color(0xFF22b2b8);
const kColor2 = Color(0xFFfddc3d);
const kColor3 = Colors.grey;
const kColor4 = Color.fromARGB(255, 147, 230, 230);
const kColor5 = Color.fromARGB(60, 34, 179, 184);

const kGradient = LinearGradient(
  colors: [Color.fromARGB(255, 248, 247, 247),Color.fromARGB(255, 244, 240, 240), ],
  begin: FractionalOffset(0.6, 0.0),
  end: FractionalOffset(0.7, 0.0),
  stops: [0.8, 0.0],
  tileMode: TileMode.clamp,
);

// #22b2b8
// #fddc3d