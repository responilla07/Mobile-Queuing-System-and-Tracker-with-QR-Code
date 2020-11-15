import 'package:flutter/material.dart';
import 'package:queuing_system/Variables/color.dart';

import 'Pages/RootPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: RootPage(),
      theme: ThemeData(
        
        primaryColor: primaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
          //TODO Create a text theme here
          bodyText1: TextStyle(
            fontSize: 14.0,
            fontFamily: 'Lato',
            fontWeight: FontWeight.bold,
            color: secondaryColor
          ),
          bodyText2: TextStyle(
            fontSize: 16.0,
            fontFamily: 'Lato',
            fontWeight: FontWeight.bold,
            color: primaryColor
          ),
          button: TextStyle(
            fontSize: 20.0,
            fontFamily: 'Lato',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
