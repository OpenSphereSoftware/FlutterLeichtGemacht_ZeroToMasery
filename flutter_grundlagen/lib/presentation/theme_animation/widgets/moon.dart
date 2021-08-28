import 'package:flutter/material.dart';

class Moon extends StatelessWidget {
  const Moon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
              colors: const [Color(0xFF8983F7), Color(0xFFA3DAFB)],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight)),
    );
  }
}
