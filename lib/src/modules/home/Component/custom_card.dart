import 'package:desafio_app_masterclass/src/core/colors/custom_colors.dart';
import 'package:desafio_app_masterclass/src/core/images/custom_images.dart';
import 'package:desafio_app_masterclass/src/services/size_extensions/size_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCard extends StatelessWidget {
  final String customName;
  final String customNumber;
  final String customTitle;
  final String customImage;
  final VoidCallback? customFunction;

  const CustomCard(
      {Key? key,
      required this.customName,
      required this.customNumber,
      required this.customTitle,
      required this.customImage,
      required this.customFunction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.percentHeight(0.2376),
      width: context.percentWidth(0.9346),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28), // Define o raio da borda
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
                        height: context.percentHeight(0.046449),
                        width: context.percentWidth(0.100467),
                        decoration: BoxDecoration(
                          color: CustomColors.primary,
                          borderRadius: BorderRadius.circular(21.5),
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            customImage,
                            height: context.percentHeight(0.0356),
                            width: context.percentWidth(0.0771),
                            colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.background, BlendMode.srcIn),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: context.percentHeight(.01),
                      ),
                      Text(
                        customName,
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
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
                      ),
                      SizedBox(
                        width: context.percentHeight(.01),
                      ),
                      Text(
                        customNumber,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                      ),
                    ],
                  ),
                ],
              ),
              Text(
                customTitle,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
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
                         colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.secondary, BlendMode.srcIn),
                      ),
                      SizedBox(
                        width: context.percentHeight(.01),
                      ),
                      Text(
                        'Acessar código fonte',
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall
                      ),
                    ],
                  ),
                  ElevatedButton(
                      onPressed: customFunction, child:  Text('Ver mais', style: TextStyle(color:Theme.of(context).colorScheme.background))),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
