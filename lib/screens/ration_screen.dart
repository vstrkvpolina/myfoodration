import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:myfoodration/data/data.dart';
import 'package:myfoodration/utils/utils.dart';
import 'package:myfoodration/widgets/add_food_button.dart';
import 'package:myfoodration/widgets/display_list_of_food.dart';
import 'package:myfoodration/widgets/pics/myfoodration_widget.dart';

class RationScreen extends StatelessWidget {
  const RationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final colors = context.colorScheme;
    final deviceSize = context.deviceSize;
    // final textTheme = context.textTheme;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 149, 255),
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 270, 20),
                child: MyfoodRationPhoto(),
              ),
              Container(
                height: 60,
                width: deviceSize.width * 0.95,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color.fromARGB(355, 0, 78, 153),
                ),
                child: const AddFoodButton(),
              ),
              const Gap(10),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Сегодня'),
                ),
              ),
            ],
          ),

          // перенесли Positioned в Stack
          Positioned(
            top: 230, // подстрой по высоте, чтобы не наезжало
            left: 0,
            right: 0,
            bottom: 0, 
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: DisplayListOfFood(food: [
                      Food(name: 'Сгущёнка', date: DateTime(2025, 05, 09)),
                      Food(name: 'Кефир', date: DateTime(2025, 05, 09)),
                    ]),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
