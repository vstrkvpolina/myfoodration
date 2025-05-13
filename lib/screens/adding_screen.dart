import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:myfoodration/utils/utils.dart';
import 'package:myfoodration/widgets/myfoodration_widget.dart';
import 'package:myfoodration/widgets/today.dart';

class AddingScreen extends StatelessWidget {
  static AddingScreen builder(BuildContext contex, GoRouterState state) =>
      const AddingScreen();
  const AddingScreen({super.key});

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
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 270, 20),
                child: MyfoodRationPhoto(),
              ),
              Center(
                child: Container(
                  height: 100, //deviceSize.height * 0.1
                  width: deviceSize.width * 0.95, // deviceSize.width
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromARGB(355, 0, 78, 153), // colors.primary
                  ),
                  child: ElevatedButton(
                      onPressed: () {
                        // showCupertinoDialog(context: context, builder: ) //TODO логика для поиска из удалённой бд
                      },
                      child: Text('+добавить еду')), // add style
                  //TODO theme для всего приложения
                ),
              ), // посчитать количество виджетов и записать как есть
              const Gap(0.5),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 270, 0),
                child: Today(),
              ),
              const Gap(0.5),
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
            ],
          ),
        ],
      ),
    );
  }
}
