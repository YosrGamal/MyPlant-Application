import 'package:sqflite/sqflite.dart' as sql;
import 'package:path/path.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_plant_application/domain/plant.dart';
import 'package:my_plant_application/domain/reminder.dart';
import 'package:my_plant_application/domain/user.dart';

class DBHelper {
  // static Database? _db;

  // Future<Database?> get db async {
  //   if (_db == null) {
  //     _db = await initialDB();
  //     return _db;
  //   } else {
  //     return _db;
  //   }
  // }

  // initialDB() async {
  //   String databasepath = await getDatabasesPath();
  //   String path = join(databasepath, 'myplant.db');
  //   Database mydb = await openDatabase(path,
  //       onCreate: _onCreate, version: 2, onUpgrade: _onUpgrade);
  //   return mydb;
  // }

  // _onUpgrade(Database db, int oldversion, int newversion) {}

  // _onCreate(Database db, int version) async {
  //   await db.execute('''
  //   CREATE TABLE plants(
  //     "id" TEXT NOT NULL PRIMARY KEY,
  //     "name" TEXT,
  //     "imageurl" TEXT,
  //     "isfav" BOOLEAN,
  //   ) ''');

  //   await db.execute('''
  //    CREATE TABLE reminders(
  //     "id" TEXT NOT NULL PRIMARY KEY,
  //     "taskname" TEXT,
  //     "time" TEXT,
  //     "date" TEXT,
  //     "repeat" TEXT,
  //   ) ''');

  //   await db.execute('''
  //    CREATE TABLE users(
  //     "id" TEXT NOT NULL PRIMARY KEY,
  //     "email" TEXT,
  //     "username" TEXT,
  //     "password" TEXT,
  //     "dob" TEXT,
  //     "profilepic" TEXT,
  //     "regDate" TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  //   ) ''');
  // }

  // Future<List<Map<String, dynamic>>> readData(String table) async {
  //   return _db!.query(table);
  // }

  static Future<void> createTables(sql.Database database) async {
    await database.execute('''
      CREATE TABLE plants(
        id TEXT NOT NULL PRIMARY KEY,
        name TEXT,
        imageurl TEXT,
        isfav BOOLEAN
      ) ''');
  }

  static Future<sql.Database> db() async {
    return sql.openDatabase('myplants.db', version: 1,
        onCreate: (sql.Database database, int version) async {
      print("creating a table");
      await createTables(database);
    });
  }

  static Future<int> createPlant(
      String id, String name, String imageurl) async {
    final db = await DBHelper.db();

    final data = {'id': id, 'name': name, 'imageUrl': imageurl};
    final i = await db.insert('plants', data,
        conflictAlgorithm: sql.ConflictAlgorithm.replace);
    return i;
  }

  static Future<List<Map<String, dynamic>>> getPlants() async {
    final db = await DBHelper.db();
    return db.query('plants', orderBy: "id");
  }

  static Future<void> deletePlant(String id) async {
    final db = await DBHelper.db();
    try {
      await db.delete('plants', where: "id = ?", whereArgs: [id]);
    } catch (err) {
      throw Exception(err.toString());
    }
  }

  // Future<void> insert(
  //     {required String table, required Map<String, Object> data}) async {
  //   _db!.insert(table, data, conflictAlgorithm: ConflictAlgorithm.replace);
  // }

// //update plant
//   Future<void> updatePlant(String table, String id, String name, String imageUrl, bool isfavorite) async {
//    _db!.rawUpdate('UPDATE $table SET name = ?, imageUrl = ?, isfavorite = ? WHERE id =?', [name, imageUrl, isfavorite, id]);

//   }

  // Future<void> delete(String table, String id) async {
  //   _db!.rawDelete('DELETE FROM $table WHERE id = ?', [id]);
  // }
}

// final dbProvider = Provider<DBHelper>((ref) => DBHelper());
