import 'package:flutter/material.dart';
import 'package:myfoodration/config/config.dart';
import 'package:myfoodration/screens/screens.dart';

class MyfoodRation extends StatelessWidget {
  const MyfoodRation({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      home: const AddingScreen(), 
    );
  }
}