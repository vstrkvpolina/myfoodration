import 'package:sqflite/sqflite.dart';


class FoodDatasource {
  static final FoodDatasource _instace = FoodDatasource._();
  factory FoodDatasource() => _instace;




  FoodDatasource._() {
    _initDB();


  }

  static DataBase? _database;
}