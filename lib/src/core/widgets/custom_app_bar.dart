import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:desafio_app_masterclass/src/core/colors/custom_colors.dart';
import 'package:desafio_app_masterclass/src/core/images/custom_images.dart';
import 'package:desafio_app_masterclass/src/services/size_extensions/size_extensions.dart';

class CustomAppBar extends StatelessWidget {
  final String customTitle;
  final String customCaption;
  final String customImage;
  final VoidCallback? customFunction;

  const CustomAppBar({
    Key? key,
    required this.customTitle,
    required this.customCaption,
    required this.customImage,
    this.customFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              InkWell(
                onTap: customFunction,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: customImage.contains('svg')
                      ? SvgPicture.asset(customImage)
                      : Image.asset(customImage),
                ),
              ),
              SizedBox(
                width: context.percentWidth(.02),
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  customTitle,
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium
                      ?.copyWith(color: CustomColors.textHighlight),
                ),
                Text(
                  customCaption,
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(color: CustomColors.textHighlight),
                )
              ]),
            ],
          ),
          SvgPicture.asset(CustomImages.moon,
              width: context.percentWidth(0.0501),
              height: context.percentHeight(0.0237)),
        ],
      ),
    );
  }
}
