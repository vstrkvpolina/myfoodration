import 'package:flutter/material.dart';
import 'package:myfoodration/util/utils.dart';

class FatPercent extends StatelessWidget {
  const FatPercent({super.key, this.fontWeight, required this.text});

  final FontWeight? fontWeight;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text, //TODO add style, adding window
      style: context.textTheme.labelSmall?.copyWith(
        color:
            Color.fromARGB(255, 255, 255, 255), // context.colorScheme.surface
        fontWeight: fontWeight ?? FontWeight.w300,
        fontSize: 15, // fontSize
      ),
    );
  }
}
