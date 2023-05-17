import 'package:desafio_app_masterclass/src/core/images/custom_images.dart';
import 'package:desafio_app_masterclass/src/core/widgets/custom_app_bar.dart';
import 'package:desafio_app_masterclass/src/core/widgets/custom_bottom_navigation_bar.dart';
import 'package:desafio_app_masterclass/src/services/size_extensions/size_extensions.dart';
import 'package:flutter/material.dart';

class GitRepositoryPage extends StatelessWidget {

  const GitRepositoryPage({ Key? key }) : super(key: key);

  static const route = 'GitRepositoryPage';

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           body: Column(
            children: [
              SizedBox(
            height: context.percentHeight(.03),
          ),
             const CustomAppBar(customTitle: 'Repositórios', customCaption: 'Flutterando Masterclass', customImage: CustomImages.logo),
              Expanded(child: Container()),
              const CustomBottomNavigationBar()
            ],
           ),
       );
  }
}