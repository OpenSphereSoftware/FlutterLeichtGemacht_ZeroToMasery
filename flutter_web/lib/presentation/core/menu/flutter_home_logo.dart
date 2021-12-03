import 'package:flutter/material.dart';
import 'package:flutterweb/presentation/dev_page/dev_page.dart';
import 'package:flutterweb/presentation/home_page/homepage.dart';
import 'package:routemaster/routemaster.dart';

class FlutterHomeLogo extends StatelessWidget {
  const FlutterHomeLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          Routemaster.of(context).push(HomePage.homePagePath);
        },
        child: Image.asset(
          "assets/images/flutter_logo_text.png",
          height: 37,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
