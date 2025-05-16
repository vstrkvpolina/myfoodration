import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myfoodration/data/data.dart';
import 'package:myfoodration/providers/food/food_state.dart';

class FoodNotifier extends StateNotifier<FoodState> {
  final FoodRepository _repository;
  FoodNotifier(this._repository) : super(const FoodState.initial()){
    getAllFood();
  }

  Future<void> createFood(Food food) async {
    try {
      await _repository.createFood(food);
    } catch (e) {
      debugPrint(e.toString());
    }
  }



  Future<void> deleteFood(Food food) async {
    try {
      await _repository.deleteFood(food);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

    Future<void> updateFood(Food food) async {
    try {
      // final updatedFood = food.copyWith();
      await _repository.uptateFood(food);
      getAllFood();
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  void getAllFood() async {
    try {
      final food = await _repository.getAllFood();
      state = state.copyWith(food: food);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
