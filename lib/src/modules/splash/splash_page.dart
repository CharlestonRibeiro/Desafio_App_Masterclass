import 'package:desafio_app_masterclass/src/core/images/custom_images.dart';
import 'package:desafio_app_masterclass/src/modules/home/home_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {

  const SplashPage({ Key? key }) : super(key: key);

   static const route = 'SplashPage';

   @override
   Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5)).then((value) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    });
       return Scaffold(
           body: Center(
            child: Image.asset(CustomImages.masterclassLogo),
           ),
       );
  }
}