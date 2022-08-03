import 'dart:developer';

import 'package:flutter_application_2/MyAzkar/models/ZkerModels.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DB_Hilber {
  static DB_Hilber hilber = DB_Hilber();

  static const String databaseName = "Zker.db";
  static const String tableName = "azkzr";
  static const String idColumnName = "id";
  static const String zkerNameColumnName = "Azkar";
  Database? database;
  initDatabase() async {
    database = await createConnectionWithDatabase();
  }

  Future<Database> createConnectionWithDatabase() async {
    log("haloo");
    String databasePath = await getDatabasesPath();
    String fullPath = join(databasePath, tableName);
    Database database =
        await openDatabase(fullPath, version: 1, onCreate: (db, i) {
      db.execute(
          '''CREATE TABLE $tableName ($idColumnName INTEGER PRIMARY KEY AUTOINCREMENT, $zkerNameColumnName TEXT)''');
      log('hello, the database has been created');
    }, onOpen: (db) async {
      log("opne data");
      final tables =
          await db.rawQuery('SELECT name FROM sqlite_master ORDER BY name;');

      log(tables.toString());
    });
    return database;
  }

  insertOneRow(ZkerModel zkerModel) async {
    int index = await database!.insert(tableName, zkerModel.toMap());
    log(index.toString());
  }

  Future<List<ZkerModel>> selectAll() async {
    List<Map<String, dynamic>> list = await database!.query(tableName);
    List<ZkerModel> ze = list.map((e) => ZkerModel.fromMap(e)).toList();
    return ze;
  }

  selectOne(int id) {
    database!.query(tableName, where: "$idColumnName=?", whereArgs: [id]);
  }

  updateOne(ZkerModel zkerModel) async {
    int Cont = await database!.update(tableName, zkerModel.toMap(),
        where: "$idColumnName=?", whereArgs: [zkerModel.id]);
    log(Cont.toString());
  }

  deletOne(int id) {
    database!.delete(tableName, where: "$idColumnName=?", whereArgs: [id]);
  }
}
