import 'package:desafio_app_masterclass/src/core/images/custom_images.dart';
import 'package:desafio_app_masterclass/src/core/size_extensions/size_extensions.dart';
import 'package:desafio_app_masterclass/src/core/widgets/custom_app_bar.dart';
import 'package:desafio_app_masterclass/src/core/widgets/custom_bottom_navigation_bar.dart';
import 'package:desafio_app_masterclass/src/modules/home/Component/custom_card.dart';
import 'package:desafio_app_masterclass/src/modules/portifolio/portfolio_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const route = 'HomePage';

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
                title: 'Atividades', caption: 'Flutterando Masterclass'),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: context.percentHeight(.02),
                  ),
                  const CustomCard(
                    name: 'Animações',
                    number: '4',
                    title:
                        'Estudos sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos',
                    image: CustomImages.man,
                  ),
                  SizedBox(
                    height: context.percentHeight(.02),
                  ),
                  const CustomCard(
                    name: 'Leitura de Mockup',
                    number: '2',
                    title:
                        'Aplicação da técnica de leitura de mockup, contendo 2 exercícios',
                    image: CustomImages.glasses,
                  ),
                  SizedBox(
                    height: context.percentHeight(.02),
                  ),
                  const CustomCard(
                    name: 'Playground',
                    number: '3',
                    title: 'Ambiente destinado a testes e estudos em geral',
                    image: CustomImages.toys,
                  ),
                  SizedBox(
                    height: context.percentHeight(.02),
                  ),
                ],
              ),
            )),
            const CustomBottomNavigationBar(
                customPersonOntap: PortfolioPage.route),
          ],
        ),
      ),
    );
  }
}
