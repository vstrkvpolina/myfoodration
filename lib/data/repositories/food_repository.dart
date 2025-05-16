import 'package:myfoodration/data/models/food.dart';

abstract class FoodRepository {
  Future<void> createFood(Food food);
  Future<void> uptateFood(Food food);
  Future<void> deleteFood(Food food);
  Future<List<Food>> getAllFood();
}
