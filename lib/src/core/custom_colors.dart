import 'package:flutter/material.dart';

class CustomColors {
  static CustomColors? _instance;
  CustomColors._();
  static CustomColors get instance{
    _instance??=  CustomColors._();
    return _instance!;
   }

   static const Color scaffoldBackground = Color(0xFF121517);

}