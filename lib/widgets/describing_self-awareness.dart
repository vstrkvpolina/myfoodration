import 'package:flutter/material.dart';
import 'package:myfoodration/util/extensions.dart';

class DescribingSelfawareness extends StatelessWidget {
  const DescribingSelfawareness(
      {super.key, required this.text, required this.fontSize, this.fontWeight});

  final String text;
  final double fontSize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      // 'Опишите своё самочувствие',
      style: context.textTheme.labelSmall?.copyWith(
        color: Color.fromARGB(255, 255, 255, 255), // context.colorScheme.surface
        fontWeight: fontWeight ?? FontWeight.normal,
        fontSize: 11, // fontSize
      ),
    ); //TODO add style
    // add window? + this keeps till the end of the day;
  }
}
