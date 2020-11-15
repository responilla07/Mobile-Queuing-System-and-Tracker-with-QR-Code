import 'package:flutter/material.dart';
import 'package:queuing_system/Pages/MainPage.dart';
import 'package:queuing_system/Pages/RootPage.dart';
import 'package:queuing_system/transitions/slide_route.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TITLE HERE'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Login Page',
            ),
            FlatButton(
              color: Colors.green,
              child: Text('Login'),
              onPressed: () async{
                Navigator.pushReplacement(context, SlideRightRoute(page: MainPage()));
              },
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
