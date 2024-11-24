import 'package:flutter/cupertino.dart';

class AppControler extends ChangeNotifier{
  static AppControler instance = AppControler();
  bool dartTheme = false;
  ChangeTheme(){
    dartTheme = !dartTheme;
    notifyListeners();
  }
}