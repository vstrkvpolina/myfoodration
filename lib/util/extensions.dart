import 'package:flutter/material.dart';

extension BuildContextEtension on BuildContext{
  ThemeData get _theme => Theme.of(this);
  TextTheme get textTheme => _theme.textTheme; //Roboto Flex
  ColorScheme get colorScheme => _theme.colorScheme; //хз
  Size get deviceSize => MediaQuery.sizeOf(this);
}