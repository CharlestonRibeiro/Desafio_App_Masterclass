import 'package:desafio_app_masterclass/src/core/colors/custom_colors.dart';
import 'package:flutter/material.dart';


ThemeData lightTheme() {
  return ThemeData(
    primaryColor: CustomColors.primary,
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.light(
        brightness: Brightness.dark,
        primary: CustomColors.primary,
        secondary: CustomColors.lightHighlight,
        tertiary: CustomColors.lightCard,
        onSurface: CustomColors.description,
        background: CustomColors.lightBackground),
        
    textTheme: const TextTheme(
      headlineMedium: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: CustomColors.lightCard
      ),
      headlineSmall: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: CustomColors.lightHighlight
      ),
      titleMedium: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: CustomColors.description
      ),
      titleSmall: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: CustomColors.lightCard
      ),
    ),
    scaffoldBackgroundColor: const Color(0XFFD6DFE4),
    dialogBackgroundColor: const Color(0XFF383838),
    cardColor: const Color(0XFFEDF4F8),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: const TextStyle(
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
          fontSize: 12.0,
        ),
        foregroundColor: CustomColors.lightHighlight,
        fixedSize: const Size(119, 34.5),
        backgroundColor: CustomColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(23),
        ),
      ),
    ),



  );
}

ThemeData darkTheme() {
  return ThemeData(
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(
        brightness: Brightness.dark,
        primary: CustomColors.primary,
        secondary: CustomColors.darkHighlight,
        tertiary: CustomColors.darkCard,
        onSurface: CustomColors.description,
        background: CustomColors.darkBackground),
    primaryColor: const Color(0XFF055AA3),
    scaffoldBackgroundColor: const Color(0XFF121517),
    cardColor: const Color(0XFF172026),
    textTheme: const TextTheme(
      headlineMedium: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: CustomColors.darkHighlight
      ),
      headlineSmall: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: CustomColors.darkHighlight
      ),
      titleMedium: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: CustomColors.description
      ),
      titleSmall: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: CustomColors.darkHighlight
      ),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle:  const TextStyle(
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
          fontSize: 12.0,
        ),
        foregroundColor: CustomColors.lightHighlight,
        fixedSize: const Size(119, 34.5),
        backgroundColor: CustomColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(23),
        ),
      ),
    ),
  );
}
