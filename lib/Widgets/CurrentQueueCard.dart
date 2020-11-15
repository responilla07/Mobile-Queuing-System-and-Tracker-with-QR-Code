import 'package:flutter/material.dart';
import 'package:queuing_system/Class/CurrentQueuCardClass.dart';
import 'package:queuing_system/Variables/size.dart';

class CurrentQueuCard extends StatefulWidget {
  @override
  _CurrentQueuCardState createState() => _CurrentQueuCardState();
}

class _CurrentQueuCardState extends State<CurrentQueuCard> {
  CurrentQueueCardClass currentQueue = CurrentQueueCardClass();

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        padding: EdgeInsets.all(15),
        width: PhoneSize(context).width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: currentQueuCardChildrens()
        ),
      ),
      elevation: 8.0,
    );
  }

  ////////////////////////////////////////////////////// METHODS //////////////////////////////////////////////////////
  
  currentQueuCardChildrens() { //Eto ay dapat matawag sa para macreate ang nilalaman ng cards
    currentQueue.currentQueueCardChildren = [];
    
    currentQueue.currentQueueCardChildren.add( Text( //Dito naman ilalagay yung number mo sa pila/etc.
      "#" + "000000000001",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 22,
        letterSpacing: 8
      ),
    ),);
    currentQueue.currentQueueCardChildren.add(SizedBox(height: 5,));
    currentQueue.currentQueueCardChildren.add( Container( //Eto yung mag create ng Status bar lines kung pang ilan kana yung green is ikaw
      height: 18,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: currentQueue.queuePostion(),
      ),
    ),);
    
    for (int detail = 0; detail < currentQueue.queueDetails.length; detail++) { //Eto naman yung mag create ng details ng current/latest queue mo
      currentQueue.currentQueueCardChildren.add( Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              currentQueue.queueDetails[detail],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black54,
                // fontSize: detail == 0 ? 18 : 14,
              ),
            ),
          ),
          Text( " : ",
            style: TextStyle(
              // fontSize: detail == 0 ? 18 : 14,
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              currentQueue.queueDetailsSample[detail],
              textAlign: TextAlign.start,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                // fontSize: detail == 0 ? 18 : 14,
              ),
            ),
          ),
        ],
      ),);
    }
    currentQueue.currentQueueCardChildren.add(SizedBox(height: 5,));
    currentQueue.currentQueueCardChildren.add( Text( //Eto naman yung mag display ng note
      "Note* Na dapat nakabalik kana kapag ikaw ay nasa ika pang limang listahan na.",
      style: TextStyle(
        color: Colors.black45,
        fontStyle: FontStyle.italic,
        fontSize: 12
      ),
    ),);

    return currentQueue.currentQueueCardChildren;
  }
}
