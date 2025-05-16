import 'package:myfoodration/data/models/food.dart';
import 'package:myfoodration/utils/utils.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class FoodDatasource {
  static final FoodDatasource _instace = FoodDatasource._();
  factory FoodDatasource() => _instace;

  FoodDatasource._() {
    _initDB();
  }

  static Database? _database;

  Future<Database> get database async {
    _database ??= await _initDB();
    return _database!;
  }

  Future<Database> _initDB() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, DBKeys.dbName);
    return openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE 
        ${DBKeys.dbTable}(
        ${DBKeys.idColumn}INTEGER PRIMARY KEY AUTOINCREMENT,
        ${DBKeys.nameColumn}TEXT,
        ${DBKeys.dateColumn}TEXT,
      )
    ''');
  }

  Future<int> addFood(Food food) async {
    final db = await database;
    return db.transaction(
      (txn) async {
        return await txn.insert(
          DBKeys.dbTable,
          food.toJson(),
          conflictAlgorithm: ConflictAlgorithm.replace,
        );
      },
    );
  }

  Future<int> updateFood(Food food) async {
    final db = await database;
    return db.transaction(
      (txn) async {
        return await txn.update(
          DBKeys.dbTable,
          food.toJson(),
          where: 'id = ?',
          whereArgs: [food.id],
        );
      },
    );
  }

  Future<int> deleteFood(Food food) async {
    final db = await database;
    return db.transaction(
      (txn) async {
        return await txn.delete(
          DBKeys.dbTable,
          where: 'id = ?',
          whereArgs: [food.id],
        );
      },
    );
  }

  Future<List<Food>> getAllFood() async {
    final db = await database;
    final List<Map<String, dynamic>> data =
        await db.query(DBKeys.dbTable, orderBy: "id DESC");
    return List.generate(
      data.length,
      (index) => Food.fromJson(
        data[index],
      ),
    );
  }
}
