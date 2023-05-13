import 'package:desafio_app_masterclass/src/core/images/custom_images.dart';
import 'package:desafio_app_masterclass/src/services/size_extensions/size_extensions.dart';
import 'package:desafio_app_masterclass/src/modules/portifolio/Component/custom_technology_card.dart';
import 'package:flutter/material.dart';

class CustomTechnologyList extends StatelessWidget {
  const CustomTechnologyList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
         const CustomTechnologyCard(
          customImage: CustomImages.flutterPNG,
          customText: 'Flutter',
         ),
          SizedBox(
            width: context.percentWidth(.03271),
          ),
            const CustomTechnologyCard(
          customImage: CustomImages.dart,
          customText: 'Dart',
         ),
          SizedBox(
            width: context.percentWidth(.03271),
          ),
            const CustomTechnologyCard(
          customImage: CustomImages.firebase,
          customText: 'Firebase',
         ),
          SizedBox(
            width: context.percentWidth(.03271),
          ),
            const CustomTechnologyCard(
          customImage: CustomImages.mysql,
          customText: 'MYSQL',
         ),
          SizedBox(
            width: context.percentWidth(.03271),
          ),
            const CustomTechnologyCard(
          customImage: CustomImages.python,
          customText: 'Python',
         ),
          SizedBox(
            width: context.percentWidth(.03271),
          ),
            const CustomTechnologyCard(
          customImage: CustomImages.django,
          customText: 'Django',
         ),
          SizedBox(
            width: context.percentWidth(.03271),
          ),
           
        ],
      ),
    );
  }
}
