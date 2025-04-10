import 'package:flutter/material.dart';
import 'package:myfoodration/util/utils.dart';

class FatPercent extends StatelessWidget {
  const FatPercent({super.key, this.fontWeight});

  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      '-89%', //TODO add style, adding window
      style: context.textTheme.labelSmall?.copyWith(
        color:
            Color.fromARGB(255, 255, 255, 255), // context.colorScheme.surface
        fontWeight: fontWeight ?? FontWeight.normal,
        fontSize: 15, // fontSize
      ),
    );
  }
}
