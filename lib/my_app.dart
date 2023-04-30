import 'package:desafio_app_masterclass/src/pages/home_page.dart';
import 'package:desafio_app_masterclass/src/pages/splash_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Masterclass',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashPage(),
      routes: {
          SplashPage.route: (context) => const SplashPage(),
          HomePage.route: (context) => const HomePage(),
        },
    );
  }
}
