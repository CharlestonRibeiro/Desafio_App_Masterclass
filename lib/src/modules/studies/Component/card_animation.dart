import 'package:desafio_app_masterclass/src/core/colors/custom_colors.dart';
import 'package:desafio_app_masterclass/src/services/size_extensions/size_extensions.dart';
import 'package:flutter/material.dart';

class CardAnimation extends StatelessWidget {
  final String customIndex;
  final String customNumber;

  const CardAnimation(
      {Key? key, required this.customIndex, required this.customNumber})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.percentHeight(0.069146),
      width: context.percentWidth(0.946262),
     
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28), // Define o raio da borda
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: context.percentHeight(0.0464),
                width: context.percentWidth(0.077103),
                decoration: BoxDecoration(
                  color: CustomColors.primary,
                  borderRadius: BorderRadius.circular(21.5),
                ),
                child: Center(child: Text(customIndex)),
              ),
              Row(
                children: [
                  Text(
                    'Exercícios:',
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                  ),
                  SizedBox(
                    width: context.percentHeight(.01),
                  ),
                  Text(
                    customNumber,
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
