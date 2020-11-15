import 'package:flutter/material.dart';

class PhoneSize {
  double width;
  double height;

  PhoneSize(BuildContext context) {
    this.width = MediaQuery.of(context).size.width;
    this.height = MediaQuery.of(context).size.height;
  }
}