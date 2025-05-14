import 'package:flutter/material.dart';

class Myactions extends StatelessWidget {
  const Myactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'lib/assets/images/myactions.png',
      width: 100, //хз нужные размеры
      height: 100,
      fit: BoxFit.contain,
    );
  }
}
