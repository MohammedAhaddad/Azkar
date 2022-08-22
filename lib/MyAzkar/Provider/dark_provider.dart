import 'package:flutter/material.dart';
import 'package:flutter_application_2/MyAzkar/Provider/sp_helper.dart';

class SettingsProvider extends ChangeNotifier {
  bool? isDark;

  SettingsProvider() {
    isDark = SPhelper.sPhelper.sp!.getBool('dark')!;
  }

  changeTheme() {
    isDark = !isDark!;
    SPhelper.sPhelper.changeTheme(isDark!);
    notifyListeners();
  }
}
