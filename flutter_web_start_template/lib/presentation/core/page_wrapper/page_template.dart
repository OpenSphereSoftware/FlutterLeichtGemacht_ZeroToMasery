import 'package:flutter/material.dart';
import 'package:flutterweb/constants.dart';

class PageTemplate extends StatelessWidget {
  final Widget child;
  const PageTemplate({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        title: const Text(
          "flutter web",
          style: TextStyle(fontFamily: fontFamily),
        ),
      ),
      body: child,
    );
  }
}
