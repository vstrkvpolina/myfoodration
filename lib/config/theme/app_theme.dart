import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

@immutable
class AppTheme {
  const AppTheme._();

  // Основные цвета
  static const Color primaryColor = Color.fromARGB(255, 0, 149, 255);
  static const Color secondaryColor = Color.fromARGB(255, 0, 89, 153);
  static const Color accent1Color = Color.fromARGB(255, 0, 38, 66);
  static const Color accent2Color = Color.fromARGB(255, 102, 191, 255);

  // Размеры
  static const double defaultPadding = 16.0;
  static const double cornerRadius = 12.0;

  // Светлая тема
  static final ThemeData light = FlexThemeData.light(
    colors: const FlexSchemeColor(
      primary: primaryColor,
      secondary: secondaryColor,
      tertiary: accent1Color,
      appBarColor: primaryColor,
      error: Color.fromARGB(255, 195, 13, 13),
    ),
    surfaceMode: FlexSurfaceMode.highScaffoldLowSurfacesVariantDialog,
    blendLevel: 20,
    appBarStyle: FlexAppBarStyle.primary,
    transparentStatusBar: true,
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    fontFamily: GoogleFonts.montserrat().fontFamily,
    subThemesData: const FlexSubThemesData(
      useTextTheme: true,
      inputDecoratorIsFilled: true,
      inputDecoratorBorderType: FlexInputBorderType.outline,
      inputDecoratorUnfocusedHasBorder: true,
      fabUseShape: true,
      bottomNavigationBarOpacity: 1,
      navigationBarOpacity: 1,
      popupMenuOpacity: 0.95,
      blendOnColors: true,
      blendTextTheme: true,
    ),
  ).copyWith(
    textTheme: TextTheme(
      displayLarge:
          GoogleFonts.robotoFlex(fontSize: 32, fontWeight: FontWeight.bold),
      titleLarge:
          GoogleFonts.robotoFlex(fontSize: 20, fontWeight: FontWeight.w600),
      bodyLarge: GoogleFonts.robotoFlex(fontSize: 16),
      bodyMedium: GoogleFonts.robotoFlex(fontSize: 14),
    ),
  );
}
