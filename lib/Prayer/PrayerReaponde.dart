import 'package:flutter_application_2/AzkarModels/Doaa.dart';
import 'package:flutter_application_2/Prayer/Prayer.dart';

class PrayerAzkarReapond {
  late Prayer prayer;

  PrayerAzkarReapond.fromjson(Map<String, dynamic> data) {
    prayer = Prayer.json(data["Azkir"]);
  }
}
