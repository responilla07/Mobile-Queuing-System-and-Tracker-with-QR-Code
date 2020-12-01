import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:queuing_system/Models/UserModel.dart';
import 'package:queuing_system/Pages/CreateUser.dart';
import 'package:queuing_system/Pages/HistoryPage.dart';
import 'package:queuing_system/Pages/ProfilePage.dart';
import 'package:queuing_system/Pages/QRCode.dart';
import 'package:queuing_system/Pages/ScannerAndSearch.dart';

import 'package:queuing_system/Presentation/custom_icons_icons.dart';


String userType = "normal"; //TODO the initial value will be change depends on the user who is logged in

ValueNotifier<String> pageTitle = ValueNotifier(userType == "scanner" ? "Search & Scan" : "QR Code");


var db = FirebaseFirestore.instance;
FirebaseAuth auth = FirebaseAuth.instance;
User loggedUser;
FirebaseMessaging messaging = new FirebaseMessaging();

ValueNotifier<UserDetailsModel> myUserDetails = ValueNotifier<UserDetailsModel>(UserDetailsModel('', {}));

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
