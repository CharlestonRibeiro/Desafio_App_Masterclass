import 'package:desafio_app_masterclass/src/core/images/custom_images.dart';
import 'package:desafio_app_masterclass/src/core/widgets/custom_app_bar.dart';
import 'package:desafio_app_masterclass/src/modules/studies/Component/card_animation.dart';
import 'package:desafio_app_masterclass/src/services/size_extensions/size_extensions.dart';
import 'package:flutter/material.dart';

class StudiesAnimationPage extends StatelessWidget {
  const StudiesAnimationPage({Key? key}) : super(key: key);

  static const route = 'StudiesAnimationPage';

  @override
  Widget build(BuildContext context) {
    void navigateBack() => Navigator.of(context).pop();
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: context.percentHeight(.03),
          ),
          CustomAppBar(
              customTitle: 'Animações',
              customCaption: 'Flutterando Masterclass',
              customImage: CustomImages.iconArrow,
              customFunction: navigateBack),
          SizedBox(
            height: context.percentHeight(.03),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                const CardAnimation(
                  customIndex: '1',
                  customNumber: '01',
                ),
                SizedBox(
                  height: context.percentHeight(.03),
                ),
                const CardAnimation(
                  customIndex: '2',
                  customNumber: '01',
                ),
                SizedBox(
                  height: context.percentHeight(.03),
                ),
                const CardAnimation(
                  customIndex: '3',
                  customNumber: '01',
                ),
                SizedBox(
                  height: context.percentHeight(.03),
                ),
                const CardAnimation(
                  customIndex: '4',
                  customNumber: '01',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
