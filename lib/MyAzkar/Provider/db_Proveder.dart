import 'package:flutter/material.dart';
import 'package:flutter_application_2/MyAzkar/Data/DB_Hilber.dart';
import 'package:flutter_application_2/MyAzkar/models/ZkerModels.dart';

class db_Proveder extends ChangeNotifier {
  List<ZkerModel> AllZker = [];
  //ValueNotifier<bool> isDark = ValueNotifier<bool>(false);

  getall() async {
    await selectAllZker();
    notifyListeners();
  }

  fileList(List<ZkerModel> zkerModel) async {
    AllZker = zkerModel;
    notifyListeners();
  }

  addZkerToList(ZkerModel zkerModel) {
    AllZker.add(zkerModel);
    notifyListeners();
    // fileList(AllZker);
  }

  createNewZker(ZkerModel zkerModel) async {
    await DB_Hilber.hilber.insertOneRow(zkerModel);
    selectAllZker();
  }

  selectAllZker() async {
    List<ZkerModel> tasks = await DB_Hilber.hilber.selectAll();
    // fileList(tasks);

    fileList(tasks);
  }

  deleteZker(ZkerModel zkerModel) async {
    await DB_Hilber.hilber.deletOne(zkerModel.id);
    selectAllZker();
  }

  updateTZker(ZkerModel zkerModel) async {
    await DB_Hilber.hilber.updateOne(zkerModel);
    notifyListeners();
  }
}
