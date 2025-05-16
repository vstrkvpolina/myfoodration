import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';


class FoodDatasource {
  static final FoodDatasource _instace = FoodDatasource._();
  factory FoodDatasource() => _instace;




  FoodDatasource._() {
    _initDB();


  }

  static Database? _database;

  Future<Database> get dataabse async {
    _database ??= await _initDB(); // _initBD()
    return _database!;
  }


  Future<Database> _initDB()async{
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'food.db');
    return openDatabase(path,
    version: 1, 
    onCreate: _onCreate,

    );
  }

  Future<void> _onCreate(Database db, int version)async{
    await db.execute(
      '''
      CREATE TABLE ${}
    '''
    );
  }
}