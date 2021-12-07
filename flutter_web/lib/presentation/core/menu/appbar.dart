import 'package:flutter/material.dart';
import 'package:flutterweb/constants.dart';
import 'package:flutterweb/presentation/core/menu/flutter_home_logo.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(color: textPrimaryLight),
      backgroundColor: background,
      title: Row(
        children: const [FlutterHomeLogo()],
      ),
    );
  }
}
