import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myfoodration/data/data.dart';
import 'package:myfoodration/providers/providers.dart';

final foodProvider = StateNotifierProvider<FoodNotifier, FoodState>((ref) {
  final repository = ref.watch(foodRepositoryProvider);
  return FoodNotifier(repository);
});