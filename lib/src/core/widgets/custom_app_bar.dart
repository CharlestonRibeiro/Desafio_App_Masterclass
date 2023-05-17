import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:desafio_app_masterclass/src/core/images/custom_images.dart';
import 'package:desafio_app_masterclass/src/services/size_extensions/size_extensions.dart';

class CustomAppBar extends StatefulWidget {
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
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {

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
                onTap: widget.customFunction,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: widget.customImage.contains('svg')
                      ? SvgPicture.asset(
                          widget.customImage,
                          colorFilter: ColorFilter.mode(
                              Theme.of(context).colorScheme.secondary,
                              BlendMode.srcIn),
                        )
                      : Image.asset(
                          widget.customImage,
                        ),
                ),
              ),
              SizedBox(
                width: context.percentWidth(.02),
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(widget.customTitle,
                    style: Theme.of(context).textTheme.headlineMedium),
                Text(widget.customCaption,
                    style: Theme.of(context).textTheme.titleSmall)
              ]),
            ],
          ),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(CustomImages.moon,
                  width: context.percentWidth(0.0501),
                  height: context.percentHeight(0.0237),
                  colorFilter: ColorFilter.mode(
                      Theme.of(context).colorScheme.secondary,
                      BlendMode.srcIn))),
        ],
      ),
    );
  }
}
