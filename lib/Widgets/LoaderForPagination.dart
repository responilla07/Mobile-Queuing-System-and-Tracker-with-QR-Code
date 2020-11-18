import 'package:flutter/material.dart';
// ignore: unused_import
import '../Variables/color.dart';
import 'package:queuing_system/Variables/size.dart';

class LoaderForPagination extends StatelessWidget {
  const LoaderForPagination({
    @required this.loaderHeight,
    @required this.loaderWidth,
    @required this.isPullUp,
  });
  
  final double loaderHeight;
  final double loaderWidth;
  final bool isPullUp;

  @override
  Widget build(BuildContext context) {
    double sideInsets = loaderWidth / 1.3;
    return !isPullUp ? Container() : Padding(
      padding: EdgeInsets.only(top: 10, bottom: 0, left: (PhoneSize(context).width / 2) - sideInsets, right: (PhoneSize(context).width / 2) - sideInsets),
      child: Container(
        height: loaderHeight,
        child: Center( //TODO Note* uncomment this code for loader in test mode / live mode
          // child: CircularProgressIndicator(
          //   valueColor: AlwaysStoppedAnimation<Color>(primaryColor)
          // ),
        ),
      ),
    );
  }
}