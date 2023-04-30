import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  const HomePage({ Key? key }) : super(key: key);

  static const route = 'HomePage';

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('HomePage'),),
           body: Container(),
       );
  }
}