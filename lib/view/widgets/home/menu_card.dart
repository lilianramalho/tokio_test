import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tokio_test/utils/custom_colors.dart';
import 'package:tokio_test/utils/font_styles.dart';

class MenuCard extends StatelessWidget {
  const MenuCard({Key? key, required this.type, required this.description})
      : super(key: key);

  final String type;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: CustomColors.variationBackground,
      elevation: 10,
      child: Container(
        padding: const EdgeInsets.all(15),
        width: 28.w,
        height: 13.h,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: 30.px,
              height: 30.px,
              child: Image.asset('assets/images/home/$type.png'),
            ),
            AutoSizeText(
              description,
              style: FontStyles.welcomeDesc,
            ),
          ],
        ),
      ),
    );
  }
}
