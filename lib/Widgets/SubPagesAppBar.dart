
import 'package:flutter/material.dart';

class SubPagesAppBar extends StatefulWidget {
  const SubPagesAppBar({
    @required this.title,
    @required this.onTap,
  });

  final String title;
  final VoidCallback onTap;
  @override
  _SubPagesAppBarState createState() => _SubPagesAppBarState();
}

class _SubPagesAppBarState extends State<SubPagesAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 10,
      title: Text(widget.title),
      leading: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          color: Colors.transparent,
          child: Row(
            children: [
              Icon( Icons.arrow_back_ios ),
              Text(
                "Back",
                style: TextStyle(
                  fontSize: 12
                ),
              ),
              SizedBox(width: 5,)
            ],
          ),
        ),
      ),
      centerTitle: true,
      automaticallyImplyLeading: false
    );
  }
}
