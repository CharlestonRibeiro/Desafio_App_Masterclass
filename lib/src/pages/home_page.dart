import 'package:desafio_app_masterclass/src/core/images/custom_images.dart';
import 'package:desafio_app_masterclass/src/core/size_extensions/size_extensions.dart';
import 'package:desafio_app_masterclass/src/core/ux/colors/custom_colors.dart';
import 'package:desafio_app_masterclass/src/core/widgets/custom_app_bar.dart';
import 'package:desafio_app_masterclass/src/core/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const route = 'HomePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context,
          title: 'Atividades', caption: 'Flutterando Masterclass'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [

              const CustomCard(
                name: 'Animações',
                number: '4',
                title:
                    'Estudos sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos',
              ),

              SizedBox(
                height: context.percentHeight(.02),
              ),

              const CustomCard(
                name: 'Leitura de Mockup',
                number: '2',
                title:
                    'Aplicação da técnica de leitura de mockup, contendo 2 exercícios',
              ),

              SizedBox(
                height: context.percentHeight(.02),
              ),

              const CustomCard(
                name: 'Playground',
                number: '3',
                title:
                    'Ambiente destinado a testes e estudos em geral',
              ),

            ],
          ),
        ),
      ),
    );
  }
}
