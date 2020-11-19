import 'dart:ui';
import 'package:flutter/material.dart';

Color hexColor(String hex) {
  String color = "0xff" + hex;
  return Color(int.parse(color));
}

BoxDecoration backgroundColor() {
  return BoxDecoration(
    gradient: LinearGradient(
      colors: [
        hexColor("e8f4ff"),
        hexColor("d4ebff"),
        hexColor("b5ddff"),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  );
}