import 'package:myfoodration/data/models/food.dart';

abstract class FoodRepository {
  Future<void> createFood(Food food);
  Future<void> uptadeFood(Food food);
  Future<void> deleteood(Food food);
  Future<List<Food>> getAllFood();
}
