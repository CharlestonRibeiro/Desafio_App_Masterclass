import 'package:desafio_app_masterclass/src/core/size_extensions/size_extensions.dart';
import 'package:desafio_app_masterclass/src/core/ux/colors/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:desafio_app_masterclass/src/core/images/custom_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final String caption;

  const CustomAppBar({
    Key? key,
    required this.title,
    required this.caption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(CustomImages.logo),
             SizedBox(
                    width: context.percentWidth(.02),
                  ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text(
                title,
                style: Theme.of(context)
                              .textTheme
                              .headlineMedium
                              ?.copyWith(color: CustomColors.textHighlight),
              ),
              Text(caption,
              style: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(color: CustomColors.textHighlight),
              )
            ]),
          ],
        ),
        SvgPicture.asset(
                          CustomImages.moon,
                          width: 21.45,
                          height: 24.0,
                        ),
      ],
    );
  }
}
