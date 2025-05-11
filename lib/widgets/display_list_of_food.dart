import 'package:flutter/material.dart';
import 'package:myfoodration/data/data.dart';
import 'package:myfoodration/utils/utils.dart';
import 'package:myfoodration/widgets/common_container.dart';

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
          : ListView.builder(
              shrinkWrap: true,
              itemCount: food.length,
              padding: EdgeInsets.zero,
              itemBuilder: (ctx, index) {
                return const Text('Home');
              },
            ),
    );
  }
}
