import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tokio_test/controller/user_controller.dart';
import 'package:tokio_test/utils/custom_colors.dart';
import 'package:tokio_test/view/screen/home/home_screen.dart';

class ButtonLogin extends StatelessWidget {
  const ButtonLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UserController _userController = Get.put(UserController());

    return Container(
      width: 16.w,
      height: 7.h,
      decoration: BoxDecoration(
        color: Colors.amber,
        gradient: LinearGradient(
            colors: [CustomColors.green, CustomColors.yellow],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
        onPressed: () async {
          await _userController.getUserInfo();
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const HomeScreen()),
          );
        },
        icon: Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
      ),
    );
  }
}
