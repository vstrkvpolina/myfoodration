import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myfoodration/data/data.dart';
import 'package:myfoodration/utils/extensions.dart';
import 'package:myfoodration/widgets/circle_container.dart';

class FoodTile extends StatelessWidget {
  const FoodTile({super.key, required this.food});
  final Food food;

  @override
  Widget build(BuildContext context) {
    // final colors = context.colorScheme;
    // final style = context.textTheme;
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 10,
        bottom: 10,
      ),
      child: Row(
        children: [
          CircleContainer(

            ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  food.name,
                  // style: style.titleMedium?.copyWith(decoration: textDecoration, fontSize: 20, fontWeight.bold, ) из темы
                ),
                Text(DateFormat('dd.MM.yyyy').format(food
                    .date)), // это я так парсю в строку, перенести в правый верхий угол // style: style.titleMedium?.copyWith(decoration: textDecoration,) из темы
              ],
            ),
          ),
          // Checkbox(value: food.isEmpty, onChanged: (value) {})
        ],
      ),
    );
    ;
  }
}
