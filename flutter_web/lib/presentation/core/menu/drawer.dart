import 'package:flutter/material.dart';
import 'package:flutterweb/constants.dart';
import 'package:flutterweb/presentation/core/buttons/get_started.dart';
import 'package:flutterweb/presentation/core/menu/flutter_home_logo.dart';
import 'package:flutterweb/presentation/core/menu/menu_item.dart';
import 'package:flutterweb/presentation/dev_page/dev_page.dart';
import 'package:flutterweb/presentation/eco_page/eco_page.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryDark,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const FlutterHomeLogo(),
                    const Spacer(),
                    IconButton(
                        onPressed: () => Navigator.of(context).pop(),
                        icon: const Icon(
                          Icons.close,
                          color: textPrimaryDark,
                          size: 18,
                        ))
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                const MenuItem(
                  path: "",
                  text: "Docs",
                  inDrawer: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                const MenuItem(
                  path: "",
                  text: "Showcase",
                  inDrawer: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                const MenuItem(
                  path: DevPage.devPagePath,
                  text: "Development",
                  inDrawer: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                const MenuItem(
                  path: EcoPage.ecoPagePath,
                  text: "Ecosystem",
                  inDrawer: true,
                ),
              ],
            ),
            Column(
              children: const [
                Spacer(),
                GetStartedButton(inDrawer: true,),
                SizedBox(
                  height: 20,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
