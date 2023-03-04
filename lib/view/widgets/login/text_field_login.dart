import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tokio_test/utils/custom_colors.dart';

class TextFieldLogin extends StatelessWidget {
  const TextFieldLogin({Key? key, required this.label}) : super(key: key);
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.center,
        width: 70.w,
        decoration: ShapeDecoration(
          color: CustomColors.backgroundColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
              side: const BorderSide(
                  color: Colors.white, style: BorderStyle.solid, width: 1.0)),
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
    );
  }
}
