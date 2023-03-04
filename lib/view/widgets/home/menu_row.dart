import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:tokio_test/view/screen/web/web_view.dart';
import 'package:tokio_test/view/widgets/home/menu_card.dart';

class MenuRow extends StatelessWidget {
  const MenuRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(children: [
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const WebViewTokio()),
            ),
            child: MenuCard(
              type: 'car',
              description: 'Automóvel',
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const WebViewTokio()),
            ),
            child: MenuCard(
              type: 'heart',
              description: 'Vida',
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const WebViewTokio()),
            ),
            child: MenuCard(
              type: 'motorbike',
              description: 'Moto',
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const WebViewTokio()),
            ),
            child: MenuCard(
              type: 'home',
              description: 'Residencial',
            ),
          ),
        ]),
      ),
    );
  }
}
