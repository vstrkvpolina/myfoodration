import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:myfoodration/util/utils.dart';

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
              Center(
                child: Text('My\nfood\nration'), //TODO add style
              ),
              Center(
                child: Container(
                  height: 100, //deviceSize.height * 0.1
                  width: deviceSize.width * 0.95, // deviceSize.width
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromARGB(355, 0, 78, 153), // colors.primary
                  ),
                  //TODO theme для всего приложения
                ),
              ), // посчитать количество виджетов и записать как есть
              const Gap(10),
              Text('Today'),
              const Gap(10),
              Center(
                child: Container(
                  height: 600, //deviceSize.height * 0.1
                  width: deviceSize.width * 0.95, // deviceSize.width
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromARGB(355, 0, 78, 153), // colors.primary
                  ),
                  //TODO theme для всего приложения
                ),
              ),
              Row(
                children: [
                  Center(
                    child: Text('Оцените Ваше отражение сегодня'), //TODO add style
                  ),
                  Gap(20),
                  Center(
                    child: Text('89%'),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
