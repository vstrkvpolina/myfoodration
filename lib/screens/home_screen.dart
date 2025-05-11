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
// first widget
    return Scaffold(
      backgroundColor: Color.fromARGB(355, 0, 149, 255),
      body: Stack(
        children: [
          Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 270, 20),
                  child: Myactions(),
                ),
              ),
              Center(
                child: Container(
                  padding: EdgeInsets.all(20),
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
// second widget
              //  Column(
              //   children: [
              //     Container(
              //       // graphic
              //     ),
              //   ],
              // ),
              // Expanded(
              //   child: Container(
              //     width: deviceSize.width,
              //     color: Color.fromARGB(355, 0, 78, 153),
              //   ),
              // ),
              //TODO theme для всего приложения graphics and so on
              Positioned(
                  // positioned и stack убрать потом
                  top: 130,
                  left: 0,
                  right: 0,
                  child: SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          width: deviceSize.width * 0.3,
                          height: deviceSize.height *
                              0.1, // проверить по длине и ширине в соотношении
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color.fromARGB(355, 0, 78, 153),
                          ),
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: 4,
                            padding: EdgeInsets.zero,
                            itemBuilder: (ctx, index) {
                              return 
                              const Text('Home');
                            },
                          ),
                        ),
                        // ElevatedButton(onPressed: () {}, child: Text('Опишите своё самочувствие')),
                      ],
                    ),
                  )),
              Gap(20),
              Row(
                // % widget
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
                    child: FatPercent(text: '-89%'),
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
