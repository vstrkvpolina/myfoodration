import 'package:flutter/material.dart';

class MyfoodRationPhoto extends StatelessWidget {
  const MyfoodRationPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'lib/assets/images/myfoodration.png',
      width: 100, //хз нужные размеры
      height: 100,
      fit: BoxFit.contain,
    );
  }
}

