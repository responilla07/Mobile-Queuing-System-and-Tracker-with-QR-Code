import 'package:flutter/material.dart';
import 'package:queuing_system/TestFile/testFile.dart';


class HistoryPage extends StatefulWidget {
  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'History Page',
            ),
            
            FlatButton(
              child: Text('Test'),
              onPressed: () async{
                takePicture();
            
              },
            ),
            
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
