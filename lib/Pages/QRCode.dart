import 'package:flutter/material.dart';
import 'package:queuing_system/Variables/size.dart';
import 'package:queuing_system/Widgets/CurrentQueueCard.dart';
import 'package:queuing_system/Widgets/MyQRCode.dart';

class QRCodePage extends StatefulWidget {
  @override
  _QRCodePageState createState() => _QRCodePageState();
}

class _QRCodePageState extends State<QRCodePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: CurrentQueuCard()
              ),
              Positioned(
                bottom: 0,
                top: 180,
                left: 0,
                right: 0,
                child: MyQRCode()),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}