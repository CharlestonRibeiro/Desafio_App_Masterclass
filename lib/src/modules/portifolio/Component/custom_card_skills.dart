import 'package:desafio_app_masterclass/src/core/colors/custom_colors.dart';
import 'package:desafio_app_masterclass/src/core/size_extensions/size_extensions.dart';
import 'package:flutter/material.dart';

class CustomCardSkills extends StatelessWidget {

  const CustomCardSkills({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Container(
        height: context.percentHeight(0.2376),
        width: context.percentWidth(0.9346),
      decoration: BoxDecoration(
        color: CustomColors.cardBackground,
        borderRadius: BorderRadius.circular(28),
      ),
      child: Column(
        children: [
          Row()
        ], 
      ),
      
    );
  }
}