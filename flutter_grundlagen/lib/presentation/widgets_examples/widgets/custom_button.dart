import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  final Color buttonColor;
  const CustomButton({Key? key, required this.onPressed, required this.text, required this.buttonColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPressed(),
      child: Material(
        elevation: 26,
        borderRadius: BorderRadius.circular(8),
        child: Container(
          height: 30,
          width: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: buttonColor),
          child: Center(
              child: Text(
            text,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          )),
        ),
      ),
    );
  }
}
