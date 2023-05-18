import 'package:desafio_app_masterclass/src/core/themes/custom_theme_data.dart';
import 'package:desafio_app_masterclass/src/core/themes/theme_controller.dart';
import 'package:desafio_app_masterclass/src/core/themes/theme_dependency_injection.dart';
import 'package:desafio_app_masterclass/src/modules/gitRepository/git_repository_page.dart';
import 'package:desafio_app_masterclass/src/modules/home/home_page.dart';
import 'package:desafio_app_masterclass/src/modules/portifolio/portfolio_page.dart';
import 'package:desafio_app_masterclass/src/modules/splash/splash_page.dart';
import 'package:desafio_app_masterclass/src/modules/studies/studies_animation_page.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

class AppMasterclass extends StatelessWidget {
  const AppMasterclass({super.key});

  @override
  Widget build(BuildContext context) {
    final themeController = ThemeController();
    return ThemeDependencyInjection(
      notifier: themeController,
      child: Builder(builder: (context) {
        final themeDependencyInjection = ThemeDependencyInjection.of(context);
        return MaterialApp(
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          title: 'Flutter Masterclass',
          debugShowCheckedModeBanner: false,
          theme: lightTheme(),
          darkTheme: darkTheme(),
          themeMode: themeDependencyInjection!.notifier!.isDarkTheme ? ThemeMode.dark : ThemeMode.light,
          home: const HomePage(),
          routes: {
            SplashPage.route: (context) => const SplashPage(),
            HomePage.route: (context) => const HomePage(),
            PortfolioPage.route: (context) => const PortfolioPage(),
            StudiesAnimationPage.route: (context) =>
                const StudiesAnimationPage(),
            GitRepositoryPage.route: (context) => const GitRepositoryPage()
          },
        );
      }),
    );
  }
}
