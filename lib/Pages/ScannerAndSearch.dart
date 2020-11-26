import 'package:flutter/material.dart';
import 'package:queuing_system/Variables/global.dart';

class ScannerAndSearch extends StatefulWidget {
  @override
  _ScannerAndSearchState createState() => _ScannerAndSearchState();
}

class _ScannerAndSearchState extends State<ScannerAndSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              pageTitle.value,
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
