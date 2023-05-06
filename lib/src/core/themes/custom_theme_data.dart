import 'package:desafio_app_masterclass/src/core/ux/colors/custom_colors.dart';
import 'package:flutter/material.dart';

ThemeData customThemeData() {
  return ThemeData(

    
    

    scaffoldBackgroundColor: CustomColors.darkScaffoldBackground, 

    textTheme: const TextTheme(

      headlineMedium : TextStyle(
        fontFamily: 'Poppins',
        fontSize: 20,
        fontWeight:  FontWeight.w600,
      ),

      headlineSmall : TextStyle(
        fontFamily: 'Poppins',
        fontSize: 16,
        fontWeight:  FontWeight.w600,
      ),


      titleMedium: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),

      titleSmall : TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
    ),

    appBarTheme:  const AppBarTheme(
      backgroundColor: CustomColors.darkScaffoldBackground,
      elevation: 0,
    ),

     

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: const TextStyle(
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
          fontSize: 12.0,
        ),
        foregroundColor: CustomColors.textHighlight,
        fixedSize: const Size(119, 34.5),
        backgroundColor: CustomColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(23),
        ),
      ),
    ),
  );
}
