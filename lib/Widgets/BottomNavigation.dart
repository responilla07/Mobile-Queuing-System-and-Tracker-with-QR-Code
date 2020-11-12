
import 'package:flutter/material.dart';
import 'package:queuing_system/Class/BottomNavigationClass.dart';
import 'package:queuing_system/Variables/color.dart';
import 'package:queuing_system/Variables/global.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({
    @required this.tabController,
  });

  final TabController tabController;
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  BottomNavigationClass navigation = BottomNavigationClass();

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: TabBar(
        onTap: (index) => navigation.onTapTabBar(index),
        controller: widget.tabController,
        indicatorColor: Colors.transparent,
        unselectedLabelColor: Color(0xff9d9d9d),
        labelColor: primaryColor,
        tabs: tabsForUser
      )
    );
  }
}
