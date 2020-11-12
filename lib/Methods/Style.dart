import 'dart:ui';

Color hexColor(String hex) {
  String color = "0xff" + hex;
  return Color(int.parse(color));
}