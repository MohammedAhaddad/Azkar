import 'package:flutter_application_2/MyAzkar/Data/DB_Hilber.dart';

class ZkerModel {
  late int id;
  late String ZkerName;
  ZkerModel({required this.ZkerName});
  ZkerModel.fromMap(Map<String, dynamic> map) {
    id = map[DB_Hilber.idColumnName];
    ZkerName = map[DB_Hilber.zkerNameColumnName];
  }
  Map<String, dynamic> toMap() {
    return {
      DB_Hilber.zkerNameColumnName: ZkerName,
    };
  }
}
