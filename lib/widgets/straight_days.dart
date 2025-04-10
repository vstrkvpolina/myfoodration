import 'package:flutter/material.dart';
import 'package:myfoodration/util/extensions.dart';

class StraightDays extends StatelessWidget {
  const StraightDays(
      {super.key, required this.text, required this.fontSize, this.fontWeight});

  final String text;
  final double fontSize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.textTheme.labelSmall?.copyWith(
        // '18 дней без перерыва', // слова его подружки, add icon lightning ,add function like calculator;
        color:
            Color.fromARGB(255, 255, 255, 255), // context.colorScheme.surface
        fontWeight: fontWeight ?? FontWeight.normal,
        fontSize: 18, // fontSize
      ),
    ); //TODO add style
  }
}
