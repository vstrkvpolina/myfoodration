import 'package:flutter/material.dart';

// todo уродство нужно переделать, сделать лого вручную и передлать в png в figma

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
