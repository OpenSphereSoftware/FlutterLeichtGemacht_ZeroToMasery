import 'package:flutter/material.dart';

class MediaQueryExample extends StatelessWidget {
  const MediaQueryExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.1,
      width: size.width * 0.8,
      color: Colors.green,
    );
  }
}
