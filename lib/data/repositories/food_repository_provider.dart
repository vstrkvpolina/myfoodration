import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myfoodration/data/data.dart';

final foodRepositoryProvider = Provider<FoodRepository>((ref) {
  final datasource = ref.watch(foodDatasourceProvider);
  return FoodRepositoryImpl(datasource);
});
