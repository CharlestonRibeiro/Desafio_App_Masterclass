import 'package:desafio_app_masterclass/src/modules/gitRepository/git_repository_page.dart';
import 'package:desafio_app_masterclass/src/modules/home/home_page.dart';
import 'package:desafio_app_masterclass/src/modules/portifolio/portfolio_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:desafio_app_masterclass/src/core/images/custom_images.dart';
import 'package:desafio_app_masterclass/src/services/size_extensions/size_extensions.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        InkWell(
          onTap: () => Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const HomePage())),
          child: Column(
            children: [
              SvgPicture.asset(
                CustomImages.target,
                width: context.percentWidth(0.0561),
                height: context.percentHeight(0.0266),
                colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.secondary, BlendMode.srcIn),
              ),
              SizedBox(
                height: context.percentHeight(.01),
              ),
              Text(
                'Atividades',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
              ),
            ],
          ),
        ),
        InkWell(
          onTap: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => const GitRepositoryPage())),
          child: Column(
            children: [
              SvgPicture.asset(
                CustomImages.github,
                width: context.percentWidth(0.0561),
                height: context.percentHeight(0.0266),
                colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.secondary, BlendMode.srcIn),  
              ),
              SizedBox(
                height: context.percentHeight(.01),
              ),
              Text(
                'Repositórios',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
              ),
            ],
          ),
        ),
        InkWell(
          onTap: () => Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const PortfolioPage())),
          child: Column(
            children: [
             Icon(
                Icons.person,
                size: 24.0,
                color: Theme.of(context).colorScheme.secondary,
              ),
              SizedBox(
                height: context.percentHeight(.01),
              ),
              Text(
                'Sobre o dev',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
