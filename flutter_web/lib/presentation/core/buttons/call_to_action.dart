import 'package:flutter/material.dart';
import 'package:flutterweb/constants.dart';

class CallToAction extends StatelessWidget {
  final String text;
  final Function callback;

  const CallToAction({Key? key, required this.text, required this.callback}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: (){
          callback();
        },
        child: IntrinsicWidth(
          child: Container(
            height: 40,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: primaryDark),
                borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                text,
                style: const TextStyle(
                    fontFamily: fontFamily, fontSize: 15, color: primaryDark),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
