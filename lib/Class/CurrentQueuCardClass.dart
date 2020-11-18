import 'package:flutter/material.dart';

class QueueCardClass {
  List<String> queueDetails = [ "Status", "Location", "Date", ];
  List<String> queueDetailsSample = [ "In-queue", "SM San Juan City", "September 28, 2020", ];
  List<Widget> queueCardChildren = [];

  List<Widget> queuePostion() {
    List<Widget> queuePostion = [];
    for (var i = 0; i < 5; i++) {
      queuePostion.add(
        Container(
          width: 40,
          margin: const EdgeInsets.only(right: 8, left: 8),
          child: Divider(
            thickness: 5,
            color: i == 0 ? Colors.green : Colors.red,
          )
        )    
      );
    }
    return queuePostion;
  }
}