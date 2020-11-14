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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              CurrentQueuCard(),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Container(
                  padding: EdgeInsets.all(5),
                  width: PhoneSize(context).width - 40,
                ),
                elevation: 8.0,
              ),
              MyQRCode(),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}