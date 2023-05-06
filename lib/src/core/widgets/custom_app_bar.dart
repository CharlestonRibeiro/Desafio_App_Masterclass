import 'package:flutter/material.dart';
import 'package:desafio_app_masterclass/src/core/images/custom_images.dart';

AppBar customAppBar(
  BuildContext context, {
  required final String title,
  required final String caption,
}) {
  return AppBar(
    leading: Image.asset(CustomImages.logo),
    title: Column(  children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(title),
        ],
      ), 
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(caption),
        ],
      )]),
  );
}
