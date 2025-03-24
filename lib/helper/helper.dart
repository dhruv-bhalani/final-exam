import 'package:final_exma/models/sqlmodels.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class SQLiteHelper {
  static final _databaseName = "contacts.db";
  static final _databaseVersion = 1;

  static final table = 'contacts';

  SQLiteHelper._privateConstructor();
  static final SQLiteHelper instance = SQLiteHelper._privateConstructor();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  _initDatabase() async {
    String path = join(await getDatabasesPath(), _databaseName);
    return await openDatabase(
      path,
      version: _databaseVersion,
      onCreate: _onCreate,
    );
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE $table (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL,
        phoneNumber TEXT NOT NULL,
        email TEXT NOT NULL,
        isBackedUp INTEGER NOT NULL
      )
    ''');
  }

  Future<int> insertContact(Contact contact) async {
    Database db = await database;
    return await db.insert(table, contact.toMap());
  }

  Future<List<Contact>> getContacts() async {
    Database db = await database;
    final List<Map<String, dynamic>> maps = await db.query(table);
    return maps.map((map) => Contact.fromMap(map)).toList();
  }
}
