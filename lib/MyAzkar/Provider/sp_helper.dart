import 'package:shared_preferences/shared_preferences.dart';

class SPhelper {
  SharedPreferences? sp;

  SPhelper._();
  static SPhelper sPhelper = SPhelper._();

  initSP() async {
    sp = await SharedPreferences.getInstance();
  }

  changeTheme(bool value) {
    sp!.setBool('dark', value);
  }
}
