import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:myfoodration/data/data.dart';
import 'package:myfoodration/utils/utils.dart';
import 'package:myfoodration/widgets/add_food_button.dart';
import 'package:myfoodration/widgets/display_list_of_food.dart';
import 'package:myfoodration/widgets/myfoodration.dart';

class RationScreen extends StatelessWidget {
  const RationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final colors = context.colorScheme;
    final deviceSize = context.deviceSize;
    // final textTheme = context.textTheme;

    return Scaffold(
      backgroundColor: Color.fromARGB(355, 0, 149, 255),
      body: Stack(
        children: [
          Column(
            children: [
              //
              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 270, 20),
                  child: MyfoodRation(),
                ),
              ),
              Center(
                child: Container(
                  height: 60, //deviceSize.height * 0.1
                  width: deviceSize.width * 0.95, // deviceSize.width
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromARGB(355, 0, 78, 153), // colors.primary
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const AddFoodButton(), // сделать кнопку
                    ],
                  ),
                  //TODO theme для всего приложения
                ),
              ), // посчитать количество виджетов и записать как есть
              const Gap(10),
// надпись сегодня
              Container(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Сегодня'),
                ],
              )),

              const Gap(10),
              Positioned(
                  top: 130,
                  left: 0,
                  right: 0,
                  child: SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        DisplayListOfFood(food: [
                          Food(name: 'name1', date: DateTime(2025, 05, 09)),
                          Food(name: 'name2', date: DateTime(2025, 05, 09)),
                        ]),
                      ],
                    ),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
