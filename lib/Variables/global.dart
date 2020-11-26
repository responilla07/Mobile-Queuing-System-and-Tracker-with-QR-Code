import 'package:flutter/material.dart';
import 'package:queuing_system/Pages/CreateUser.dart';
import 'package:queuing_system/Pages/HistoryPage.dart';
import 'package:queuing_system/Pages/ProfilePage.dart';
import 'package:queuing_system/Pages/QRCode.dart';
import 'package:queuing_system/Pages/ScannerAndSearch.dart';

import 'package:queuing_system/Presentation/custom_icons_icons.dart';


String userType = "Scanner";

ValueNotifier<String> pageTitle = ValueNotifier(userType == "Scanner"? "Search & Scan" : "QR Code");



List<Widget> pagesForUser = [HistoryPage(), QRCodePage(), ProfilePage()];
List<Widget> pagesForScanner = [CreateUser(), ScannerAndSearch(), ProfilePage()];

List<Widget> tabsForUser = [
  Tab(child: Icon(CustomIcons.history2)),
  Tab(child: Icon(CustomIcons.qr_1)),
  Tab(child: Icon(CustomIcons.profile)),
];

List<Widget> tabsForScanner = [
  Tab(child: Icon(CustomIcons.edit_profile)),
  Tab(child: Icon(CustomIcons.qr_1)),
  Tab(child: Icon(CustomIcons.profile)),
];
