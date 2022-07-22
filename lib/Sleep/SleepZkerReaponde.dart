//SleepZkerReaponde

import 'package:flutter_application_2/Sleep/SleepZker.dart';

class SleepZkerReaponde {
  late SleepZeker SleepZeke;

  SleepZkerReaponde.fromjson(Map<String, dynamic> data) {
    SleepZeke = SleepZeker.json(data["Azkir"]);
  }
}
