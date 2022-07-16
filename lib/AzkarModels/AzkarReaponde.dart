import 'package:flutter_application_2/AzkarModels/Doaa.dart';

class AzkarReapond {
  late Doaa doaa;

  AzkarReapond.fromjson(Map<String, dynamic> data) {
    doaa = Doaa.json(data["Azkir"]);
  }
}
