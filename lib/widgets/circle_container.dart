import 'package:flutter/material.dart';

class CircleContainer extends StatelessWidget {
  const CircleContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(9.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color.fromARGB(355, 0, 78, 153),
      ),
    );
  }
}
