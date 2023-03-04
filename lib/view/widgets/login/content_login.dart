import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tokio_test/utils/custom_colors.dart';
import 'package:tokio_test/utils/font_styles.dart';
import 'package:tokio_test/view/widgets/login/button_login.dart';

class ContentLogin extends StatelessWidget {
  const ContentLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: CustomColors.backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 10,
      child: Container(
        width: 80.w,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 15),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: AutoSizeText(
                      'Entrar',
                      style: FontStyles.welcomeFont,
                    ),
                  ),
                  AutoSizeText(
                    'Cadastrar',
                    style: FontStyles.welcomeFont,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.center,
                width: 70.w,
                decoration: ShapeDecoration(
                  color: CustomColors.backgroundColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                      side: const BorderSide(
                          color: Colors.white,
                          style: BorderStyle.solid,
                          width: 1.0)),
                ),
                child: const TextField(
                  textCapitalization: TextCapitalization.none,
                  textInputAction: TextInputAction.next,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    floatingLabelAlignment: FloatingLabelAlignment.center,
                    label: Center(
                      child: Text('E-mail'),
                    ),
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.center,
                width: 70.w,
                decoration: ShapeDecoration(
                  color: CustomColors.backgroundColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                      side: const BorderSide(
                          color: Colors.white,
                          style: BorderStyle.solid,
                          width: 1.0)),
                ),
                child: const TextField(
                  textCapitalization: TextCapitalization.none,
                  textInputAction: TextInputAction.next,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    floatingLabelAlignment: FloatingLabelAlignment.center,
                    label: Center(
                      child: Text('Senha'),
                    ),
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: Row(
                    children: [
                      Checkbox(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        activeColor: CustomColors.green,
                        onChanged: (bool? value) {},
                        value: true,
                      ),
                      AutoSizeText(
                        "Lembrar depois",
                        style: FontStyles.textCheckbox,
                      )
                    ],
                  )),
                  AutoSizeText(
                    'Esqueceu a senha?',
                    style: FontStyles.forgotPassword,
                  ),
                ],
              ),
            ),
            Positioned(bottom: -15, child: ButtonLogin())
          ],
        ),
      ),
    );
  }
}
