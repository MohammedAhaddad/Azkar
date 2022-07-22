import 'package:flutter_application_2/EveningAzkar/Evening.dart';

class EveningReapond {
  late Evening evening;

  EveningReapond.fromjson(Map<String, dynamic> data) {
    evening = Evening.json(data["Azkir"]);
  }
}
