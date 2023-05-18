
import 'package:desafio_app_masterclass/src/core/themes/theme_controller.dart';
import 'package:flutter/material.dart';

class ThemeDependencyInjection extends InheritedNotifier<ThemeController> {
  const ThemeDependencyInjection({super.key,  required ThemeController notifier, required Widget child})
      : super(notifier: notifier, child: child);

  static ThemeDependencyInjection? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ThemeDependencyInjection>();
  }
}