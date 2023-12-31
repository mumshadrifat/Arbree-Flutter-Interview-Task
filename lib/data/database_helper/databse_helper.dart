import 'dart:io';

import 'package:get/get.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

import '../models/user_model/user.dart';

class DataBaseHelper {
  DataBaseHelper._privateConstructor();

  static final DataBaseHelper instance = DataBaseHelper._privateConstructor();
  static Database? _database;
  RxInt insId = 0.obs;

  Future<Database?> get database async {
    if (_database != null) return _database;
    _database = await initDb();
    return _database;
  }

  initDb() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "master.db");
    var theDb = await openDatabase(path, version: 1, onCreate: _onCreate);
    return theDb;
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute(
        'CREATE TABLE user(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, firstname TEXT, lastname TEXT,gender Text,email Text,number Text)');
  }

//insertUser
  Future<int?> insertUser(User user) async {
    Database? db = await instance.database;
    var result = await db?.insert('user', user.toJson());
    //isDataExists(user.name,user.name);
    insId.value = result!;
    print("Inserted");
    userList();
    return result;
  }

//Display User List
  Future<List<Map>> userList() async {
    Database? db = await instance.database;

    List<Map> result = await db!.rawQuery("SELECT * FROM user");

    result.forEach((row) => print(row));

    print(result);
    return result;
  }

  Future<List<Map>> userById(String email) async {
    Database? db = await instance.database;

    List<Map> result =
        await db!.rawQuery("SELECT id,firstName,lastName,gender,email,number FROM user where email=?", [email!]);

    result.forEach((row) => print(row));

    print(result);
    return result;
  }

  Future<int?> isDataExists(String columnName, String value) async {
    Database? db = await instance.database;
    var res = await db
        ?.rawQuery("SELECT COUNT(*) FROM user WHERE email = ?", [value]);
    int? count = Sqflite.firstIntValue(res!);
    print("Count >> $count");
    return count;
  }
}
