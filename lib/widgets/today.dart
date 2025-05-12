import 'package:flutter/material.dart';

class Today extends StatelessWidget {
  const Today({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'lib/assets/images/today.png',
      width: 80, //хз нужные размеры
      height: 80,
      fit: BoxFit.contain,
    );
  }
}

