// import 'dart:io';

// import 'package:path_provider/path_provider.dart';
// import 'package:sqflite/sqflite.dart';

// class DBHelper {
//   static DBHelper _databaseHelper;
//   static Database _database;

//   String noteTable = 'note_Table';
//   String colID = 'id';
//   String colTitle = 'title';
//   String colDescription = 'description';
//   String colPriority = 'priority';
//   String colDate = 'date';

//   DBHelper._createInstance(); //constructor to create instance of DB helper

//   factory DBHelper() {
//     if (_databaseHelper == null) {
//       _databaseHelper = DBHelper._createInstance();
//     }
//     return _databaseHelper;
//   }

//   Future<Database> get database async {
//     if (_database == null) {
//       _database = await initalizeDatabase();
//     }
//     return _database;
//   }

//   Future<Database> initalizeDatabase() async {
//     //get directory path to store database
//     Directory directory = await getApplicationDocumentsDirectory();
//     String path = directory.path + 'notes.db';

//     //opens/creates the database at given path
//     var notesDatabase = openDatabase(path, version: 1, onCreate: _createDB);
//     return notesDatabase;
//   }

//   void _createDB(Database db, int newVersion) async {
//     await db.execute(
//         'CREATE TABLE $noteTable($colID INTEGRATOR PRIMARY KEY AUTOINCREMENT, $colTitle TEXT, $colDescription TEXT, $colPriority INTEGER, $colDate TEXT)');
//   }

//   //fetch note objects from database
//   Future<List<Map<String, dynamic>>> getNoteMapList() async {
//     Database db = await this.database;

//     var result = await db.query(noteTable, orderBy: '$colPriority ASC');
//     return result;
//   }

//   //inserting objects into note database
//   Future<int> insertNote(Note note) async {
//     Database db = await this.database;
//     var result = await db.insert(noteTable, note.toMap());
//   }

//   //updateing the note database
//   Future<int> updateNote(Note note) async {
//     var db = await this.database;
//     var result = await db.update(noteTable, note.toMap(),
//         where: '$colID = ?', whereArgs: [note.id]);
//     return result;
//   }

//   //deleteing object in Note database
//   Future<int> deleteNote(int id) async {
//     var db = await this.database;
//     int result = await db.delete(noteTable, where: '$colID = $id');
//     return result;
//   }

//   //getting number of Note Ojects in database
//   Future<int> getCount() async {
//     Database db = await this.database;
//     List<Map<String, dynamic>> x = await db.query(noteTable);
//     int result = Sqflite.firstIntValue(x);
//     return result;
//   }
// }
