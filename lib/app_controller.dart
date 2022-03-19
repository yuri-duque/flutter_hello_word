import 'package:flutter/cupertino.dart';

class AppController extends ChangeNotifier {
  static AppController instance = AppController();

  bool isDartTheme = true;

  changeThema() {
    isDartTheme = !isDartTheme;
    notifyListeners();
  }

  getThema() {
    return isDartTheme ? Brightness.dark : Brightness.light;
  }
}
