// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:myfoodration/utils/utils.dart';

class Food extends Equatable {
  final int? id;
  final String name;
  final String date;
  const Food({
    this.id,
    required this.name,
    required this.date,
  });

  @override
  List<Object> get props => [id!, name, date];

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      FoodKeys.id: id,
      FoodKeys.name: name,
      FoodKeys.date: date,
    };
  }

  factory Food.fromMap(Map<String, dynamic> map) {
    return Food(
      id: map[FoodKeys.id],
      name: map[FoodKeys.name],
      date: map[FoodKeys.date],
    );
  }
}
