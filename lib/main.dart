import 'package:flutter/material.dart';
import 'package:queuing_system/Variables/color.dart';
import 'package:firebase_core/firebase_core.dart';
import 'Pages/RootPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    initializeFirebase();
    super.initState();
  }
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
            fontSize: 20.0,
            fontFamily: 'Inter',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

void initializeFirebase() async {
  await Firebase.initializeApp();
}
