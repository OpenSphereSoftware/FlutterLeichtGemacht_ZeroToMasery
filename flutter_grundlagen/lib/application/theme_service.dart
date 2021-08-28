import 'package:flutter/material.dart';

class ThemeService extends ChangeNotifier {
  bool isDarkModeOn = false;

  void toggleTheme() {
    this.isDarkModeOn = !this.isDarkModeOn;
    notifyListeners();
  }
}
