import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tokio_test/utils/custom_colors.dart';
import 'package:tokio_test/utils/font_styles.dart';

class DrawerNav extends StatelessWidget {
  const DrawerNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: CustomColors.backgroundColor,
      child: ListView(
        children: [
          DrawerHeader(
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: const EdgeInsets.only(left: 7),
                    child:  AutoSizeText(
                      'Olá!',
                      style: FontStyles.textHeader,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: SizedBox(
                            width: 50.px,
                            height: 50.px,
                            child: Image.asset('assets/images/home/man.png'),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          const  AutoSizeText(
                              'Caio Maximo',
                              style: FontStyles.titleUserDrawer,
                            ),
                            Row(
                              children: [
                              const  AutoSizeText(
                                  'Minha Conta',
                                  style: FontStyles.myCountText,
                                ),
                                IconButton(
                                    onPressed: () => print(''),
                                    icon: const Icon(
                                      Icons.keyboard_arrow_down,
                                      color: Colors.white,
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: CustomColors.green,
            ),
            title: Text(
              'Home/Seguro',
              style: FontStyles.welcomeDesc,
            ),
            onTap: () => {}, // separar
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: CustomColors.green,
            ),
            title: Text(
              'Minhas Contratações',
              style: FontStyles.welcomeDesc,
            ),
            onTap: () => {}, // separar
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: CustomColors.green,
            ),
            title: Text(
              'Meus sinistros',
              style: FontStyles.welcomeDesc,
            ),
            onTap: () => {}, // separar
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: CustomColors.green,
            ),
            title: Text(
              'Minha família',
              style: FontStyles.welcomeDesc,
            ),
            onTap: () => {}, // separar
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: CustomColors.green,
            ),
            title: Text(
              'Meus bens',
              style: FontStyles.welcomeDesc,
            ),
            onTap: () => {}, // separar
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: CustomColors.green,
            ),
            title: Text(
              'Pagamentos',
              style: FontStyles.welcomeDesc,
            ),
            onTap: () => {}, // separar
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: CustomColors.green,
            ),
            title: Text(
              'Corretores',
              style: FontStyles.welcomeDesc,
            ),
            onTap: () => {}, // separar
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: CustomColors.green,
            ),
            title: Text(
              'Validar boleto',
              style: FontStyles.welcomeDesc,
            ),
            onTap: () => {}, // separar
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: CustomColors.green,
            ),
            title: Text(
              'Telefones importantes',
              style: FontStyles.welcomeDesc,
            ),
            onTap: () => {}, // separar
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: CustomColors.green,
            ),
            title: Text(
              'Configurações',
              style: FontStyles.welcomeDesc,
            ),
            onTap: () => {}, // separar
          ),
          Container(
            padding: const EdgeInsets.only(top: 20, bottom: 50),
            width: 100.w,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  CustomColors.green,
                  CustomColors.yellow,
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  width: 50.px,
                  height: 50.px,
                  child: Image.asset('assets/images/home/woman.png'),
                ),
              const AutoSizeText(
                  'Dúvidas?',
                  style: FontStyles.FAQStyleText,
                ),
             const AutoSizeText(
                  'Fale conosco pelos nossos canais de atendimento.',
                  style: FontStyles.welcomeDesc,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
