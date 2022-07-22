import 'package:flutter_application_2/Mosk/Moskk.dart';

class MoskReapond {
  late Moskk moskk;

  MoskReapond.fromjson(Map<String, dynamic> data) {
    moskk = Moskk.json(data["Azkir"]);
  }
}
