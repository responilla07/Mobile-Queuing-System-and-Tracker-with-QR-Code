import 'package:flutter/material.dart';
import 'package:queuing_system/Methods/Style.dart';
import 'package:queuing_system/Presentation/custom_icons_icons.dart';
import 'package:queuing_system/SubPages/Info.dart';
import 'package:queuing_system/SubPages/Login.dart';
import 'package:queuing_system/Variables/color.dart';
import 'package:queuing_system/Variables/global.dart';
import 'package:queuing_system/transitions/slide_route.dart';


class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: EdgeInsets.only(left: 15, right: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: ()=> Navigator.push(context, SlideLeftRoute(page: InfoPage())),
            child: Icon(
              CustomIcons.info,
              color: primaryDarkColor,
            ),
          ),
          Expanded(child: Container()),
          Padding(
            padding: const EdgeInsets.only(bottom: 5,),
            child: Container(
              height: 40,
              // width: 220,
              // padding: EdgeInsets.only(left: 20, right: 20),
              padding: EdgeInsets.only(left: 70, right: 70),
              decoration: BoxDecoration(
                color: hexColor("1d3f61"),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.elliptical(300, 100),
                  bottomRight: Radius.elliptical(300, 100)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  pageTitle.value,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    height: 0.1
                  ),
                ),
              ),
            ),
          ),
          Expanded(child: Container()),
          GestureDetector(
            onTap: ()=> Navigator.pushReplacement(context, SlideLeftRoute(page: LoginPage())),
            child: Icon(
              CustomIcons.logout,
              color: primaryDarkColor,
            ),
          ),
        ],
      ),
    );
  }
}
