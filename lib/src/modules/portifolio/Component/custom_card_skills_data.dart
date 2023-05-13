import 'package:desafio_app_masterclass/src/core/colors/custom_colors.dart';
import 'package:desafio_app_masterclass/src/core/size_extensions/size_extensions.dart';
import 'package:flutter/material.dart';

class CustomCardSkillsData extends StatelessWidget {
  final String text;
  final double value;

  const CustomCardSkillsData({Key? key, required this.text, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .titleSmall
              ?.copyWith(color: CustomColors.lightScaffoldBackground),
        ),
        SizedBox(
          width: context.percentWidth(.5981),
          child: LinearProgressIndicator(
            backgroundColor: CustomColors.lightScaffoldBackground,
            valueColor: const AlwaysStoppedAnimation<Color>(CustomColors.primary),
            value: value,
          ),
        ),
      ],
    );
  }
}