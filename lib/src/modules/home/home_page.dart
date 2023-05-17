import 'package:desafio_app_masterclass/src/core/images/custom_images.dart';
import 'package:desafio_app_masterclass/src/modules/studies/studies_animation_page.dart';
import 'package:desafio_app_masterclass/src/services/size_extensions/size_extensions.dart';
import 'package:desafio_app_masterclass/src/core/widgets/custom_app_bar.dart';
import 'package:desafio_app_masterclass/src/core/widgets/custom_bottom_navigation_bar.dart';
import 'package:desafio_app_masterclass/src/modules/home/Component/custom_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const route = 'HomePage';

  @override
  Widget build(BuildContext context) {
    void navigateBack(value) => Navigator.of(context).pushNamed(value);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
             SizedBox(
              height: context.percentHeight(.04),
            ),
           const CustomAppBar(
                customTitle: 'Atividades', customCaption: 'Flutterando Masterclass', customImage:CustomImages.logo),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: context.percentHeight(.02),
                  ),
                  
                  CustomCard(
                    customName: 'Animações',
                    customNumber: '4',
                    customTitle:
                        'Estudos sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos',
                    customImage: CustomImages.man,
                    customFunction: () => navigateBack(StudiesAnimationPage.route),
                  ),
                  SizedBox(
                    height: context.percentHeight(.02),
                  ),
                  CustomCard(
                    customName: 'Leitura de Mockup',
                    customNumber: '2',
                    customTitle:
                        'Aplicação da técnica de leitura de mockup, contendo 2 exercícios',
                    customImage: CustomImages.glasses,
                    customFunction: (){},
                  ),
                  SizedBox(
                    height: context.percentHeight(.02),
                  ),
                  CustomCard(
                    customName: 'Playground',
                    customNumber: '3',
                    customTitle: 'Ambiente destinado a testes e estudos em geral',
                    customImage: CustomImages.toys,
                    customFunction: (){},
                  ),
                  SizedBox(
                    height: context.percentHeight(.02),
                  ),
                ],
              ),
            )),
            const CustomBottomNavigationBar(),
          ],
        ),
      ),
    );
  }
}
