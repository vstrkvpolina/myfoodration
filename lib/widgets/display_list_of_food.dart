import 'package:flutter/material.dart';
import 'package:myfoodration/data/data.dart';
import 'package:myfoodration/utils/utils.dart';
import 'package:myfoodration/widgets/common_container.dart';
import 'package:intl/intl.dart';

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
              padding: const EdgeInsets.only(
                left: 0,
                top: 0,
                bottom: 0,
              ),
              itemBuilder: (ctx, index) {
                final foodie = food[index];
                return Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(9.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(355, 0, 78, 153),
                      ),
                      // child: Center(
                      //   child: Icon(
                      //     Icons.person,
                      //   ),
                      // ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(foodie.name),
                          Text(DateFormat('dd.MM.yyyy').format(foodie
                              .date)), // это я так парсю в строку, перенести в правый верхий угол
                        ],
                      ),
                    ),
                    // Checkbox(value: food.isEmpty, onChanged: (value) {})
                  ],
                );
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
