import 'package:flutter/material.dart';
import 'package:queuing_system/Variables/color.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({
    @required this.color, 
    @required this.text, 
    @required this.icon
  });

  final Color color;
  final text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icon,
          color: secondaryColor,
          size: 20,
        ),
        SizedBox( width: 10, ),
        Expanded(
          child: Text(
            '$text',
            style: TextStyle( color: Colors.black54 ),
          )
        ),
      ],
    );
  }
}
