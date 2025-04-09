import 'package:flutter/material.dart';

class DescribingSelfawareness extends StatelessWidget {
  const DescribingSelfawareness({super.key, required this.text, required this.fontSize});

  final String text;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text('Опишите своё самочувствие'); //TODO add style
    // add window? + this keeps till the end of the day;
  }
}
