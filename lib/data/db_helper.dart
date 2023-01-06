// import 'package:sqflite/sqflite.dart';
// import 'package:path/path.dart';

// class DBHelper {
//   static Database? _db;
//   Future<Database?> get db async {
//     if (_db == null) {
//       _db = await initialDB();
//       return _db;
//     } else {
//       return _db;
//     }
//   }

//   initialDB() async {
//     String databasepath = await getDatabasesPath();
//     String path = join(databasepath, 'myplant.db');
//     Database mydb = await openDatabase(path, onCreate: _onCreate);
//     return mydb;
//   }

//   _onCreate(Database db, int version) async {
//     await db.execute('''
//     CREATE TABLE plants(
//       id TEXT NOT NULL PRIMARY KEY 
//       name TEXT
//       imageurl TEXT
//       isfav BOOL
//     ) ''');
//   }
// }
