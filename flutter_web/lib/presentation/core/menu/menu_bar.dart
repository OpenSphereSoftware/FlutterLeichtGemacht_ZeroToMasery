import 'package:flutter/material.dart';
import 'package:flutterweb/presentation/core/buttons/get_started.dart';
import 'package:flutterweb/presentation/core/menu/flutter_home_logo.dart';
import 'package:flutterweb/presentation/core/menu/menu_item.dart';
import 'package:responsive_framework/responsive_framework.dart';

class MenuBar extends StatelessWidget {
  const MenuBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66,
      width: double.infinity,
      decoration: const BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(color: Colors.black, offset: Offset(0, 2), blurRadius: 4)
      ]),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: const [
          FlutterHomeLogo(),
          Spacer(),
          MenuItem(text: "Docs", inDrawer: false,),
          MenuItem(text: "Showcase", inDrawer: false,),
          MenuItem(text: "Development", inDrawer: false,),
          MenuItem(text: "Ecosystem", inDrawer: false,),
          GetStartedButton(inDrawer: false,)
        ],
      ),
    );
  }
}
