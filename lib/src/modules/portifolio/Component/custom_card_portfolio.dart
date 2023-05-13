import 'package:desafio_app_masterclass/src/core/colors/custom_colors.dart';
import 'package:desafio_app_masterclass/src/core/images/custom_images.dart';
import 'package:desafio_app_masterclass/src/core/size_extensions/size_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCardPortfolio extends StatefulWidget {
  const CustomCardPortfolio({Key? key}) : super(key: key);

  @override
  State<CustomCardPortfolio> createState() => _CustomCardPortfolioState();
}

class _CustomCardPortfolioState extends State<CustomCardPortfolio> {
  @override
  Widget build(BuildContext context) {

    return Container(
      height: context.percentHeight(0.446),
      width: context.percentWidth(0.937),
      decoration: BoxDecoration(
        color: CustomColors.cardBackground,
        borderRadius: BorderRadius.circular(28),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(
              height: context.percentHeight(.01),
            ),
           CircleAvatar(
              radius: context.percentHeight(0.090),
              backgroundColor: CustomColors.darkScaffoldBackground,
              child: CircleAvatar(
                radius: context.percentHeight(0.082),
                backgroundImage: const AssetImage(CustomImages.myPhoto),
              ),
            ),
            SizedBox(
              height: context.percentHeight(.01),
            ),
            Text(
              'Charleston Ribeiro',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(color: CustomColors.textHighlight),
            ),
            SizedBox(
              height: context.percentHeight(.01),
            ),
            Center(
              child: Text(
                'Meu nome é Charleston Ribeiro dos Passos. Sou formado em Análise e Desenvolvimento de Sistemas pelo Instituto Federal de Rondônia - IFRO.',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(color: CustomColors.bodyText),
              ),
            ),
            SizedBox(
              height: context.percentHeight(.05),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    CustomImages.whatsapp,
                    width: context.percentWidth(0.0343),
                    height: context.percentHeight(0.0343),
                  ),
                  SizedBox(
                    width: context.percentWidth(.05),
                  ),
                  SvgPicture.asset(
                    CustomImages.github,
                    width: context.percentWidth(0.0343),
                    height: context.percentHeight(0.0343),
                  ),
                  SizedBox(
                    width: context.percentWidth(.05),
                  ),
                  SvgPicture.asset(
                    CustomImages.instagram,
                    width: context.percentWidth(0.0343),
                    height: context.percentHeight(0.0343),
                  ),
                  SizedBox(
                    width: context.percentWidth(.05),
                  ),
                  SvgPicture.asset(
                    CustomImages.facebook,
                    width: context.percentWidth(0.0343),
                    height: context.percentHeight(0.0343),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
