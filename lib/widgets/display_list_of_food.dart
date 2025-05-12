import 'package:flutter/material.dart';
import 'package:myfoodration/data/data.dart';
import 'package:myfoodration/utils/utils.dart';
import 'package:myfoodration/widgets/widgets.dart';

class DisplayListOfFood extends StatelessWidget {
  const DisplayListOfFood({super.key, required this.food});

  final List<Food> food;

  @override
  Widget build(BuildContext context) {
    final deviceSize = context.deviceSize;

    return CommonContainer(
      height: deviceSize.height * 0.3,
      child: food.isEmpty
          ? const Center(
              child: Text(
                'Еда не добавлена',
                style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
              ),
            )
          : ListView.separated(
              shrinkWrap: true,
              itemCount: food.length,
              padding: EdgeInsets.zero,
              itemBuilder: (ctx, index) {
                final foodie = food[index];
                return InkWell(
                    onLongPress: () {
                      //TODO-Delete FOOD 
                    },
                    onTap: () async {
                      //TODO show food consequences
                      await showBottomSheet(context: context, builder: (ctx){
                        return FoodConsequences(food: foodie);
                      });
                    },
                    child: FoodTile(food: foodie));
              },
              separatorBuilder: (BuildContext context, int index) {
                return const Divider(
                  thickness: 1.5,
                );
              },
            ),
    );
  }
}
