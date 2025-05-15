import 'package:flutter_riverpod/flutter_riverpod.dart';

final foodProvider = StateProvider.autoDispose<FoodList>((ref){
  return FoodList.others;
});