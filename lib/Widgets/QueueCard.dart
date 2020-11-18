import 'package:flutter/material.dart';
import 'package:queuing_system/Class/CurrentQueuCardClass.dart';
import 'package:queuing_system/Variables/size.dart';

class QueueCard extends StatefulWidget {
  const QueueCard({
    @required this.cardFor,
  });

  final String cardFor;

  @override
  _QueueCardState createState() => _QueueCardState();
}

class _QueueCardState extends State<QueueCard> {
  QueueCardClass queueClass = QueueCardClass();

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
    queueClass.queueCardChildren = [];
    
    queueClass.queueCardChildren.add( Text( //Dito naman ilalagay yung number mo sa pila/etc.
      "#" + "000000000001",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 22,
        letterSpacing: 8
      ),
    ),);
    queueClass.queueCardChildren.add(SizedBox(height: 5,));
    queueClass.queueCardChildren.add( Container( //Eto yung mag create ng Status bar lines kung pang ilan kana yung green is ikaw
      height: 18,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: queueClass.queuePostion(),
      ),
    ),);
    
    for (int detail = 0; detail < queueClass.queueDetails.length; detail++) { //Eto naman yung mag create ng details ng current/latest queue mo
      queueClass.queueCardChildren.add( Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              queueClass.queueDetails[detail],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black54,
                // fontSize: detail == 0 ? 18 : 14,
              ),
            ),
          ),
          Text( " :   ",
            style: TextStyle(
              color: Colors.black54,
              // fontSize: detail == 0 ? 18 : 14,
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              queueClass.queueDetailsSample[detail],
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
    queueClass.queueCardChildren.add(SizedBox(height: 5,));

    queueClass.queueCardChildren.add( widget.cardFor == "history" ? Container() : Text( //Eto naman yung mag display ng note
      "Note* Na dapat nakabalik kana kapag ikaw ay nasa ika pang limang listahan na.",
      style: TextStyle(
        color: Colors.black45,
        fontStyle: FontStyle.italic,
        fontSize: 12
      ),
    ),);

    return queueClass.queueCardChildren;
  }
}
