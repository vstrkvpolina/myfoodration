import 'package:flutter/material.dart';
// import 'package:myfoodration/utils/extensions.dart';

import '../data/data.dart';

class FoodConsequences extends StatelessWidget {
  const FoodConsequences({super.key, required this.food});
  final Food food;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'consequences',
                // style: context.textTheme,
              ),
            ],
          )
        ],
      ),
    );
  }
}
//TODO функции из бд и исправить уродливое всплывание
