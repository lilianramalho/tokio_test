import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tokio_test/utils/custom_colors.dart';
import 'package:tokio_test/utils/font_styles.dart';
import 'package:tokio_test/view/widgets/login/content_login.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold( // column
      body: Stack(
        alignment: Alignment.center,
        fit: StackFit.passthrough,
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  width: 100.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [CustomColors.green, CustomColors.yellow],
                    ),
                  ),
                ),
                Container(
                  color: CustomColors.backgroundColor,
                  width: 100.w,
                  height: 50.h,
                ),
              ],
            ),
          ),
          Center(
              child: Column(  
            children: [
              Container(
                padding: const EdgeInsets.only(top: 100, bottom: 50),
                color: Colors.transparent,
                width: 80.w,
                height: 30.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    AutoSizeText(
                      'Bem-vindo',
                      style: FontStyles.welcomeFont,
                    ),
                    AutoSizeText(
                      'Aqui você gerencia seus seguros e de deus familiares em poucos cliques!',
                      style: FontStyles.welcomeDesc,
                    )
                  ],
                ),
              ),
               const ContentLogin(),
            ],
          )),
        ],
      ),
    );
  }
}
