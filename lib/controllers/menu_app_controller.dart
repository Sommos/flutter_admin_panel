import 'package:flutter/material.dart';

class MenuAppController extends ChangeNotifier {
  // create a global key for the scaffold
  final scaffoldKey = GlobalKey<ScaffoldState>();

  // create a getter for the scaffold key
  GlobalKey<ScaffoldState> get getScaffoldKey => scaffoldKey;

  // create a function to control the menu
  void controlMenu() {
    // if the drawer is closed, open it
    if(!scaffoldKey.currentState!.isDrawerOpen) {
      scaffoldKey.currentState!.openDrawer();
    }
  }
}