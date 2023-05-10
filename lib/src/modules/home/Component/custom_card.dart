import 'package:desafio_app_masterclass/src/core/images/custom_images.dart';
import 'package:desafio_app_masterclass/src/core/size_extensions/size_extensions.dart';
import 'package:desafio_app_masterclass/src/core/colors/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCard extends StatelessWidget {
  final String name;
  final String number;
  final String title;
  final String image;

  const CustomCard(
      {Key? key,
      required this.name,
      required this.number,
      required this.title,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: context.percentHeight(0.2376),
        width: context.percentWidth(0.9346),
      decoration: BoxDecoration(
        color: CustomColors.cardBackground,
        borderRadius: BorderRadius.circular(28),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: context.percentHeight(0.0464),
                      width: context.percentWidth(0.1005),
                      
                      // height: 46,
                      // width: 46,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(21.5),
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          image,
                          height: context.percentHeight(0.0356),
                          width: context.percentWidth(0.0771),
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
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: CustomColors.bodyText),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      CustomImages.github,
                      height: context.percentHeight(0.0216),
                      width: context.percentWidth(0.0479),
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
