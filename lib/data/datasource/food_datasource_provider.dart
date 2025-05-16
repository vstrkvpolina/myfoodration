import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myfoodration/data/data.dart';

final foodDatasourceProvider = Provider<FoodDatasource>((ref) {
  return FoodDatasource();
});
