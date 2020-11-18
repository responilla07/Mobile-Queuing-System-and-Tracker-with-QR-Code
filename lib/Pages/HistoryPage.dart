import 'package:flutter/material.dart';
import 'package:queuing_system/Widgets/LoaderForPagination.dart';
import 'package:queuing_system/Widgets/QueueCard.dart';


class HistoryPage extends StatefulWidget {
  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  int itemLength = 13;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: itemLength != 0 ? ListView.builder(
          padding: EdgeInsets.fromLTRB(15, 5, 15, 15),
          itemCount: itemLength,
          primary: false,
          itemBuilder: (context, index) {
            return (index != (itemLength - 1))
            ? Padding(
              padding: EdgeInsets.only(top: 10),
              child: QueueCard(cardFor: "history",)
            ) 
            : LoaderForPagination(
              isPullUp: false,
              loaderHeight: 40,
              loaderWidth: 40,
            );
          },
        ) : Text("Create place holder here"), //TODO Create placeholder for this page
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

