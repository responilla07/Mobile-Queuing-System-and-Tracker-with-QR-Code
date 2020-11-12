import 'package:flutter/material.dart';
import 'package:queuing_system/Class/RootPage.dart';
import 'package:queuing_system/Variables/global.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({
    @required this.root,
  });
  final RootPageClass root;
  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  void initState() {
    pageTitle.addListener(() {
      if (!widget.root.isDispose) {
        setState(() {});
      }
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(pageTitle.value),
      centerTitle: true,
    );
  }
}