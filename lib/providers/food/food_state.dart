// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:myfoodration/data/models/food.dart';

class FoodState extends Equatable {
  final List<Food> food;

  const FoodState(this.food);
  const FoodState.initial({
    this.food = const [],
  });

  FoodState copyWith({
    List<Food>? food,
  }) {
    return FoodState(
      food ?? this.food,
    );
  }

  @override
  List<Object> get props => [food];
}
