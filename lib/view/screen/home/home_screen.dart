import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tokio_test/controller/user_controller.dart';
import 'package:tokio_test/utils/custom_colors.dart';
import 'package:tokio_test/utils/font_styles.dart';
import 'package:tokio_test/view/widgets/geral/drawer_nav.dart';
import 'package:tokio_test/view/widgets/home/header.dart';
import 'package:tokio_test/view/widgets/home/menu_row.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerNav(),
      appBar: AppBar(
        backgroundColor: CustomColors.backgroundColor,
        title: Center(child: Text('tokio marine')),
      ),
      backgroundColor: CustomColors.backgroundColor,
      body: SingleChildScrollView(
          child:  Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(),
            Padding(
              padding: const EdgeInsets.all(10),
              child: AutoSizeText(
                'Cotar e Contratar',
                style: FontStyles.subtitleHome,
              ),
            ),
            MenuRow(),
            Padding(
              padding: const EdgeInsets.all(10),
              child: AutoSizeText(
                'Minha Família',
                style: FontStyles.subtitleHome,
              ),
            ),
            Center(
              child: Container(
                padding: const EdgeInsets.all(10),
                width: 90.w,
                height: 30.h,
                decoration: BoxDecoration(
                  color: CustomColors.variationBackground,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        onPressed: () => print(''),
                        icon: Icon(
                          size: 50,
                          Icons.add_circle_outline,
                          color: Colors.white,
                        )),
                    AutoSizeText(
                      'Adicione aqui os membros de sua família e compartilhe o seguro com eles',
                      style: FontStyles.welcomeDesc,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: AutoSizeText(
                'Contratados',
                style: FontStyles.subtitleHome,
              ),
            ),
            Center(
              child: Container(
                width: 90.w,
                height: 30.h,
                decoration: BoxDecoration(
                  color: CustomColors.variationBackground,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      child: IconButton(
                          onPressed: () => print(''),
                          icon: Image.asset(
                            'assets/images/home/sad.png',
                            width: 80,
                            height: 80,
                          )),
                    ),
                    AutoSizeText(
                      'Adicione aqui os membros de sua família e compartilhe o seguro com eles',
                      style: FontStyles.welcomeDesc,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
