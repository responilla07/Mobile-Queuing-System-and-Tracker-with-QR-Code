import 'package:flutter/material.dart';
import 'package:queuing_system/Methods/Style.dart';
import 'package:queuing_system/Pages/MainPage.dart';
import 'package:queuing_system/SubPages/Login.dart';
import 'package:queuing_system/Variables/color.dart';
import 'package:queuing_system/Variables/global.dart';
import 'package:queuing_system/transitions/slide_route.dart';

class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {

  navigateToDesignatedPage() async {
    await Future.delayed(const Duration(milliseconds: 5000), null);
    loggedUser = auth.currentUser;

    if (loggedUser == null) {
      await Navigator.pushReplacement(context, SlideLeftRoute(page: LoginPage()));
    } else {
      await Navigator.pushReplacement(context, SlideLeftRoute(page: MainPage()));
    }
  }

  @override
  void initState() {
    navigateToDesignatedPage();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: backgroundColor(),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 75.0, right: 75.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset(
                        'assets/logo1.png',
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: SafeArea(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(vertical: 32.0),
                  child: Column(
                    children: <Widget>[ //Comment nalang para may loader
                      // CircularProgressIndicator(valueColor: new AlwaysStoppedAnimation<Color>(primaryColor))
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
