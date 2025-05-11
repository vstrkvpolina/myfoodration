import 'package:flutter/material.dart';
import 'package:myfoodration/utils/extensions.dart';

class AddFoodButton extends StatelessWidget {
  const AddFoodButton({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceSize = context.deviceSize;

    return Container(
      height: 60, //deviceSize.height * 0.1
      width: deviceSize.width * 0.95, // deviceSize.width
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color.fromARGB(355, 0, 78, 153), // colors.primary
      ),
    );
  }
}
//TODO