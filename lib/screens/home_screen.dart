import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:myfoodration/util/utils.dart';
import 'package:myfoodration/widgets/describing_self-awareness.dart';
import 'package:myfoodration/widgets/fat_percent.dart';
import 'package:myfoodration/widgets/myactions.dart';
import 'package:myfoodration/widgets/straight_days.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, this.fontWeight});

  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    // final colors = context.colorScheme;
    final deviceSize = context.deviceSize;
    // final textTheme = context.textTheme;
//TODO ограничить рамки по кнопкам и менюшкам
    return Scaffold(
      backgroundColor: Color.fromARGB(355, 0, 149, 255),
      body: Stack(
        children: [
          Column(
            children: [
              Center(
                child:
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 270, 20),
                  child: Myactions(),
                ),
              ),
              Center(
                child: Container(
                  height: 100, //deviceSize.height * 0.1
                  width: deviceSize.width * 0.95,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromARGB(355, 0, 78, 153), // colors.primary
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround, // TODO
                    children: [
                      Column(
                        children: [
                          StraightDays(
                              text: '18 дней без перерыва', fontSize: 18),
                          Gap(5),
                          DescribingSelfawareness(
                              text: 'Опишите своё самочувствие', fontSize: 11),
                        ],
                      ),
                    ],
                  ),
                  //TODO theme для всего приложения
                ),
              ), // посчитать количество виджетов и записать как есть
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
              Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Center(
                    child: Text(
                      'Оцените Ваше отражение сегодня',
                      style: context.textTheme.labelSmall?.copyWith(
                        color: Color.fromARGB(
                            255, 255, 255, 255), // context.colorScheme.surface
                        fontWeight: fontWeight ?? FontWeight.normal,
                        fontSize: 15, // fontSize
                      ),
                    ), //TODO add style
                  ),
                  Center(
                    child: FatPercent(),
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
