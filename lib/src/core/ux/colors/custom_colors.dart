import 'package:flutter/material.dart';

class CustomColors {
  static CustomColors? _instance;
  CustomColors._();
  static CustomColors get instance{
    _instance??=  CustomColors._();
    return _instance!;
   }

   static const Color primary = Color(0xFF055AA3);
   static const Color bodyText = Color(0xFF51565A);
   static const Color textHighlight = Color(0xFFEDF4F8);
   static const Color cardBackground = Color(0xFF172026);   
   static const Color darkScaffoldBackground = Color(0xFF121517);  
   static const Color lightScaffoldBackground = Color(0xFFD6DFE4);  

}