import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:myfoodration/util/utils.dart';
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
                  child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Container(
                      width: deviceSize.width, // *0,95
                      height: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color.fromARGB(355, 0, 78, 153),
                      ),
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 3,
                          padding: EdgeInsets.zero,
                          itemBuilder: (ctx, index) {
                            return Text(
                                'data'); // сделат текст в отдельный воздух, иначе вылазит за виджет
                          }),
                    )
                  ],
                ),
              )),
              // Center(
              //   child: Container(
              //     height: 600, //deviceSize.height * 0.1
              //     width: deviceSize.width * 0.95, // deviceSize.width
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(30),
              //       color: Color.fromARGB(355, 0, 78, 153), // colors.primary
              //     ),
              //     //TODO theme для всего приложения
              //   ),
              // ),
              // Row(
              //   children: [
              //     Center(
              //       child:
              //           Text('Оцените Ваше отражение сегодня'), //TODO add style
              //     ),
              //     Gap(20),
              //     Center(
              //       child: Text('89%'),
              //     ),
              //   ],
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
