import 'package:desafio_app_masterclass/src/services/size_extensions/size_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTechnologyCard extends StatelessWidget {
  final String customImage;
  final String customText;
  const CustomTechnologyCard(
      {Key? key, required this.customImage, required this.customText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.percentHeight(0.107),
      width: context.percentWidth(0.2173),
      
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28), // Define o raio da borda
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              customImage.contains('svg')
                  ? Expanded(
                      child: SvgPicture.asset(
                        customImage,
                      ),
                    )
                  : Expanded(
                      child: Image.asset(
                        customImage,
                      ),
                    ),
              SizedBox(
                height: context.percentHeight(0.01),
              ),
              Expanded(
                child: Text(
                  customText,
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
