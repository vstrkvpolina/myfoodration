import 'package:flutter/material.dart';
import 'package:myfoodration/utils/extensions.dart';

class CommonContainer extends StatelessWidget {
  const CommonContainer({super.key, this.child, this.height});
  final Widget? child;
  final double? height;

  @override
  Widget build(BuildContext context) {
    final deviceSize = context.deviceSize;

    return Container(
        width: deviceSize.width,
        height: height, // проверить по длине и ширине в соотношении
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color.fromARGB(
              355, 0, 78, 153), // переделать в теме, чтобы писать контекст
        ),
        child: child);
  }
}
