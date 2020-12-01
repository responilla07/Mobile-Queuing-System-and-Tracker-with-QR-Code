import 'package:queuing_system/Variables/global.dart';

class BottomNavigationClass {
  onTapTabBar(index) {
    if (userType == "scanner") {
      if (index == 0) {
        pageTitle.value = "Create User";
      } else if (index == 1) {
        pageTitle.value = "Search & Scan";
      } else {
        pageTitle.value = "Profile";
      }
    } 
    else {
      if (index == 0) {
        pageTitle.value = "History";
      } else if (index == 1) {
        pageTitle.value = "QR Code";
      } else {
        pageTitle.value = "Profile";
      }
    }
  }
}