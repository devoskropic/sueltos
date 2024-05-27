import 'package:flutter/material.dart';

class DrawerProvider extends ChangeNotifier {
  var selectedIndex = -1;

  onDrawerTap(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}
