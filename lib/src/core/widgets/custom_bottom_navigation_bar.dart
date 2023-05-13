import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:desafio_app_masterclass/src/core/colors/custom_colors.dart';
import 'package:desafio_app_masterclass/src/core/images/custom_images.dart';
import 'package:desafio_app_masterclass/src/services/size_extensions/size_extensions.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final String customPersonOntap;
  const CustomBottomNavigationBar({
    Key? key,
    required this.customPersonOntap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(
          children: [
            SvgPicture.asset(
              CustomImages.target,
              width: context.percentWidth(0.0561),
              height: context.percentHeight(0.0266),
            ),
            SizedBox(
              height: context.percentHeight(.01),
            ),
            Text(
              'Atividades',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(color: CustomColors.textHighlight),
            ),
          ],
        ),
        Column(
          children: [
            SvgPicture.asset(
              CustomImages.github,
              width: context.percentWidth(0.0561),
              height: context.percentHeight(0.0266),
            ),
            SizedBox(
              height: context.percentHeight(.01),
            ),
            Text(
              'Atividades',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(color: CustomColors.textHighlight),
            ),
          ],
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).pushNamed(customPersonOntap);
          },
          child: Column(
            children: [
              const Icon(
                Icons.person,
                color: CustomColors.textHighlight,
                size: 24.0,
              ),
              SizedBox(
                height: context.percentHeight(.01),
              ),
              Text(
                'Atividades',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(color: CustomColors.textHighlight),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
