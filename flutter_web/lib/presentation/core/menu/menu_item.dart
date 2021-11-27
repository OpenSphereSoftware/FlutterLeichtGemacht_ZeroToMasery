import 'package:flutter/material.dart';
import 'package:flutterweb/constants.dart';

class MenuItem extends StatelessWidget {
  final String text;
  const MenuItem({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          print("item tapped");
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            text,
            style: const TextStyle(
                fontSize: 15, fontFamily: fontFamily, color: textPrimaryLight),
          ),
        ),
      ),
    );
  }
}
