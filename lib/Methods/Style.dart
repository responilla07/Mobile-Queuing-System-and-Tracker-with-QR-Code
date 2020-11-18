import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:queuing_system/Variables/color.dart';

Color hexColor(String hex) {
  String color = "0xff" + hex;
  return Color(int.parse(color));
}

BoxDecoration backgroundColor() {
  return BoxDecoration(
    gradient: LinearGradient(
      colors: [
        // secondaryColorLight.withOpacity(1),
        // primaryColorLight.withOpacity(0.8),
        // secondaryColorDark.withOpacity(0.8)
        hexColor("e8f4ff"),
        hexColor("d4ebff"),
        hexColor("b5ddff"),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  );
}