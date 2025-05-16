import 'package:myfoodration/data/data.dart';

class FoodRepositoryImpl implements FoodRepository {
  final FoodDatasource _datasource;

  FoodRepositoryImpl(this._datasource);
  
  @override
  Future<void> createFood(Food food) async {
    try {
      await _datasource.addFood(food);
    } catch (e) {
      throw '$e';
    }
  }

  @override
  Future<void> deleteood(Food food) async {
    try {
      await _datasource.deleteFood(food);
    } catch (e) {
      throw '$e';
    }
  }

  @override
  Future<List<Food>> getAllFood() async {
    try {
      return await _datasource.getAllFood();
    } catch (e) {
      throw '$e';
    }
  }

  @override
  Future<void> uptadeFood(Food food) async {
    try {
      await _datasource.updateFood(food);
    } catch (e) {
      throw '$e';
    }
  }
}
