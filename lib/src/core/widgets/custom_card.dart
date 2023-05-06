import 'package:desafio_app_masterclass/src/core/images/custom_images.dart';
import 'package:desafio_app_masterclass/src/core/size_extensions/size_extensions.dart';
import 'package:desafio_app_masterclass/src/core/ux/colors/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCard extends StatelessWidget {
  final String name;
  final String number;
  final String title;

  const CustomCard(
      {Key? key, required this.name, required this.number, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      decoration: BoxDecoration(
        color: CustomColors.cardBackground,
        borderRadius: BorderRadius.circular(28),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 43,
                      height: 43,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(21.5),
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          CustomImages.man,
                          width: 30.89,
                          height: 25.1,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: context.percentHeight(.01),
                    ),
                    Text(
                      name,
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(color: CustomColors.textHighlight),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Exercícios:',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: CustomColors.bodyText),
                    ),
                    SizedBox(
                      width: context.percentHeight(.01),
                    ),
                    Text(
                      number,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: CustomColors.textHighlight),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: context.percentHeight(.05),
            ),
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: CustomColors.bodyText),
            ),
            SizedBox(
              height: context.percentHeight(.05),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      CustomImages.github,
                      width: 30.89,
                      height: 25.1,
                    ),
                     SizedBox(
                      width: context.percentHeight(.01),
                    ),
                    Text(
                      'Acessar código fonte',
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall
                          ?.copyWith(color: CustomColors.textHighlight),
                    ),
                  ],
                ),
                ElevatedButton(onPressed: () {}, child: const Text('Ver mais')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
