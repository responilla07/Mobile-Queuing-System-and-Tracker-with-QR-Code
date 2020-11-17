import 'package:flutter/material.dart';
import 'package:queuing_system/Class/MainPageClass.dart';
import 'package:queuing_system/Methods/Style.dart';
import 'package:queuing_system/Variables/global.dart';
import 'package:queuing_system/Widgets/BottomNavigation.dart';
import 'package:queuing_system/Widgets/CustomAppBar.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with SingleTickerProviderStateMixin {
  MainPageClass root = MainPageClass();

  @override
  void initState() {
    pageTitle.addListener(() {
      if (!root.isDispose) {
        setState(() {});
      }
    });
    pageTitle.value = "QR Code";
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
        appBar: PreferredSize(preferredSize: Size.fromHeight(0.0), child: AppBar(
          centerTitle: true,
          elevation: 0,
          automaticallyImplyLeading: true,
        )),
        bottomNavigationBar: BottomNavigation(
          tabController: root.tabController,
        ),
        body: SafeArea(
          child: Container(
            decoration: backgroundColor(),
            height: double.infinity,
            width: double.infinity,
            child: Column(
              children: <Widget>[
                CustomAppBar(),
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