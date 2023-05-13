import 'package:desafio_app_masterclass/src/core/colors/custom_colors.dart';
import 'package:desafio_app_masterclass/src/core/images/custom_images.dart';
import 'package:desafio_app_masterclass/src/services/size_extensions/size_extensions.dart';
import 'package:desafio_app_masterclass/src/core/widgets/custom_app_bar.dart';
import 'package:desafio_app_masterclass/src/core/widgets/custom_bottom_navigation_bar.dart';
import 'package:desafio_app_masterclass/src/modules/portifolio/Component/custom_card_portfolio.dart';
import 'package:desafio_app_masterclass/src/modules/portifolio/Component/custom_card_skills.dart';
import 'package:desafio_app_masterclass/src/modules/portifolio/Component/custom_technology_list.dart';
import 'package:desafio_app_masterclass/src/modules/home/home_page.dart';
import 'package:flutter/material.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({Key? key}) : super(key: key);

  static const route = 'PortfolioPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: context.percentHeight(.04),
            ),
            const CustomAppBar(
                customTitle: 'Sobre o dev', customCaption: 'Flutterando Masterclass', customImage: CustomImages.logo),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: context.percentHeight(.02),
                    ),
                    const CustomCardPortfolio(),
                    SizedBox(
                      height: context.percentHeight(.02),
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Tecnologias Favoritas',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(color: CustomColors.textHighlight),
                        )),
                    SizedBox(
                      height: context.percentHeight(.02),
                    ),
                    const CustomTechnologyList(),
                    SizedBox(
                      height: context.percentHeight(.02),
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Habilidades e Competências',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(color: CustomColors.textHighlight),
                        )),
                    SizedBox(
                      height: context.percentHeight(.02),
                    ),
                    const CustomCardSkills(),
                    SizedBox(
                      height: context.percentHeight(.02),
                    ),
                  ],
                ),
              ),
            ),
            const Align(
              alignment: Alignment.bottomCenter,
              child: CustomBottomNavigationBar(customPersonOntap: HomePage.route),
            ),
          ],
        ),
      ),
    );
  }

 
}

