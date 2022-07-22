//wakeReaponde.dartimport 'package:flutter_application_2/AzkarModels/Doaa.dart';

import 'package:flutter_application_2/wake_up_Azkar/wakeUP.dart';

class WakeReapond {
  late WakeUP wakeUP;

  WakeReapond.fromjson(Map<String, dynamic> data) {
    wakeUP = WakeUP.json(data["Azkir"]);
  }
}
