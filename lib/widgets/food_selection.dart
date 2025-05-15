import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:myfoodration/providers/providers.dart';
import 'package:myfoodration/widgets/circle_container.dart';
import 'package:myfoodration/widgets/food_list.dart';

// вся эта хуйня находится в ration_screen


class FoodSelection extends ConsumerWidget {
  const FoodSelection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedFood = ref.watch(foodProvider);
// final foodselection = FoodList.values.toList(); cюда список еды 

    return SizedBox(
      height:
          300, // подоюрать для всех один размер, сдеть что-то вроде common container
      child: Row(
        children: [
          Text('список еды'), // TODO function & search
          const Gap(10),
          //TODO
          Expanded(
            child: ListView.separated(
              physics: const AlwaysScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
                itemBuilder: (ctx, index) {
                  final foodToRation = foodselection[index];

                  return InkWell(
                    onTap: () {
                      ref.read(foodProvider.notifier).state = foodToRation;
                    },
                    // borderRadius: BorderRadius.circular(10),
                    child: CircleContainer( 
                      color: 
                      child: 
                       , // может эта хуйня вообще не нужна будет
                      ),
                  ); // добавить потом
                },
                separatorBuilder: (ctx, index) => const Gap(10),
                itemCount: foodselection.lenth),
          ),
        ],
      ),
    );
  }
}
