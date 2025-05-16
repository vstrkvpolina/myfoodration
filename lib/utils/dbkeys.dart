import 'package:flutter/material.dart';
import 'package:myfoodration/utils/utils.dart';

@immutable
class DBKeys {
  const DBKeys._();
  static const String dbName = 'food.db';
  static const String dbTable = 'food';
  static const String idColumn = FoodKeys.id;
  static const String nameColumn = FoodKeys.name;
  static const String dateColumn = FoodKeys.date;
}
