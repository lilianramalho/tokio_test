import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tokio_test/controller/user_controller.dart';
import 'package:tokio_test/utils/custom_colors.dart';
import 'package:tokio_test/utils/font_styles.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UserController _userController = Get.put(UserController());

    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
      width: 100.w,
      decoration: BoxDecoration(
        gradient:  LinearGradient(
          colors: [
            CustomColors.green,
            CustomColors.yellow,
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: SizedBox(
              width: 50.px,
              height: 50.px,
              child: Image.asset('assets/images/home/man.png'),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AutoSizeText(
                'Bem-vindo!',
                style: FontStyles.textHeader,
              ),
              AutoSizeText(
                _userController.userModel!.name,
                style: FontStyles.nameUserHeader,
              ),
            ],
          )
        ],
      ),
    );
  }
}
