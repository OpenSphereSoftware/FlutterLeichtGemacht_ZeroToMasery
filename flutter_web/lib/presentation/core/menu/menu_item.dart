import 'package:flutter/material.dart';
import 'package:flutterweb/constants.dart';
import 'package:routemaster/routemaster.dart';

class MenuItem extends StatelessWidget {
  final String text;
  final String path;
  final bool inDrawer;
  const MenuItem({Key? key, required this.inDrawer, required this.text, required this.path})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          Routemaster.of(context).push(path);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            text,
            style: TextStyle(
                fontSize: 15,
                fontFamily: fontFamily,
                color: inDrawer ? textPrimaryDark : textPrimaryLight),
          ),
        ),
      ),
    );
  }
}
