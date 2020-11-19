import 'package:flutter/material.dart';
import 'package:queuing_system/Widgets/QueueCard.dart';
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
                child: QueueCard(cardFor: "qr",)
              ),
              Positioned(
                bottom: 0,
                top: 180,
                left: 0,
                right: 0,
                child: MyQRCode(data: "this a sample data, that should be encrypted.",) // TODO: Encrypt data that the qr scanner will display/read
              ),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}