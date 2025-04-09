import 'package:flutter/material.dart';

class StraightDays extends StatelessWidget {
  const StraightDays({super.key, required this.text, required this.fontSize});

  
  final String text;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text('18 дней без перерыва'); //TODO add style
    // слова его подружки, add icon lightning ,add function like calculator;
  }
}
