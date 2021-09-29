import 'package:flutter/material.dart';

class SignInRegisterButton extends StatelessWidget {
  final String buttonText;
  final Function callback;
  const SignInRegisterButton({Key? key, required this.buttonText, required this.callback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return InkResponse(
      onTap: () => callback(),
      child: Container(
        height: 40,
        width: double.infinity,
        decoration: BoxDecoration(color: themeData.colorScheme.secondary,
        borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Text(buttonText,
          style: themeData.textTheme.headline1!.copyWith(
            fontSize: 14,
            color: Colors.blueGrey[800],
            fontWeight: FontWeight.bold,
            letterSpacing: 4
          ),
          
          ),
        ),
      ),
    );
  }
}
