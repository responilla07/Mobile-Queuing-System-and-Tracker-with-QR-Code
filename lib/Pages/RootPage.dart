import 'package:flutter/material.dart';
import 'package:queuing_system/Class/RootPage.dart';
import 'package:queuing_system/Variables/global.dart';
import 'package:queuing_system/Widgets/BottomNavigation.dart';
import 'package:queuing_system/Widgets/CustomAppBar.dart';

class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage>
    with SingleTickerProviderStateMixin {
  RootPageClass root = RootPageClass();

  @override
  void initState() {
    root.tabController = TabController(length: 3, vsync: this, initialIndex: 1);
    super.initState();
  }

  @override
  void dispose() {
    root.isDispose = true;
    pageTitle.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(40.0),
            child: CustomAppBar(root: root)),
        // key: scaffoldKey,
        bottomNavigationBar: BottomNavigation(
          tabController: root.tabController,
        ),
        body: SafeArea(
          child: Container(
            color: Colors.white,
            height: double.infinity,
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Expanded(
                  child: TabBarView(
                    physics: NeverScrollableScrollPhysics(),
                    children: pagesForUser,
                    controller: root.tabController,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
