import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:flutter/widgets.dart';

// Future<Database> database;

class User {
  final int id;
  final String name;
  final int age;
  final int weight;
  final int height;
  final String profilePicAddress;

  User(
      {this.id,
      this.name,
      this.age,
      this.height,
      this.weight,
      this.profilePicAddress});

  Map<String, dynamic> mapUsersData() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
      'weight': weight,
      'profilePicAddress': profilePicAddress,
    };
  }

  void createUser() async {
    WidgetsFlutterBinding.ensureInitialized();
    await insertUser();
  }

  Future<Database> initializeDB() async {
    final Future<Database> database = openDatabase(
      join(await getDatabasesPath(), 'best.db'),
      onCreate: (db, version) {
        // Run the CREATE TABLE statement on the database.
        print('inside on create');
        return db.execute(
          "CREATE TABLE user(id INTEGER PRIMARY KEY, name TEXT, age INTEGER, height INTEGER, weight INTEGER, profilePicAddress TEXT)",
        );
      },
      version: 1,
    );
    return database;
  }

  // Define a function that inserts dogs into the database
  Future<void> insertUser() async {
    // Get a reference to the database.
    final Database db = await initializeDB();
    await db.insert(
      'user',
      mapUsersData(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<bool> databaseExists(String path) {
    return databaseFactory.databaseExists(path);
  }

  Future<void> updateUser() async {
    // Get a reference to the database.
    final Database db = await initializeDB();
    await db.update(
      'user',
      mapUsersData(),
      where: "id = ?",
      whereArgs: [this.id],
    );
  }

  Future<List<User>> listUsers() async {
    // Get a reference to the database.
    final Database db = await initializeDB();
    final List<Map<String, dynamic>> maps = await db.query('user');

    return List.generate(maps.length, (i) {
      return User(
        id: maps[i]['id'],
        name: maps[i]['name'],
        age: maps[i]['age'],
        weight: maps[i]['weight'],
        height: maps[i]['height'],
        profilePicAddress: maps[i]['profilePicAddress'],
      );
    });
  }

  Future<void> deleteUser(int id) async {
    // Get a reference to the database.
    final Database db = await initializeDB();
    await db.delete(
      'user',
      where: "id = ?",
      whereArgs: [id],
    );
  }
}
