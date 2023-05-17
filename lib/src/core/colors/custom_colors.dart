import 'package:flutter/material.dart';

class CustomColors {
  static CustomColors? _instance;
  CustomColors._();
  static CustomColors get instance {
    _instance ??= CustomColors._();
    return _instance!;
  }

  static const Color primary = Color(0xFF055AA3);
  static const Color description = Color(0xFF51565A);
  static const Color lightHighlight = Color(0xFF172026);
  static const Color darkHighlight = Color(0xFFEDF4F8);
  static const Color darkCard = Color(0xFFEDF4F8);
  static const Color lightCard = Color(0xFF172026); 
  static const Color darkBackground = Color(0xFF121517);
  static const Color lightBackground = Color(0xFFD6DFE4);
}
