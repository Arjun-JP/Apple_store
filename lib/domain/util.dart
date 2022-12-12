import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.dark;
  bool get isDarkmode => themeMode == ThemeMode.dark;
  void theme(ison) {
    themeMode = ison ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class ColorData {
  static final white =
      ThemeData(backgroundColor: Colors.white, primaryColor: Colors.black);
  static final black =
      ThemeData(backgroundColor: Colors.black, primaryColor: Colors.white);
}
