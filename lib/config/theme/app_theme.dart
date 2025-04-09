import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:google_fonts/google_fonts.dart';

@immutable
class AppTheme {
  const AppTheme._();


  static final light = FlexThemeData.light(
    fontFamily: GoogleFonts.robotoFlex().fontFamily,
    // later
  );
}