import 'package:flutter/material.dart';
import 'package:flutterweb/constants.dart';
import 'package:flutterweb/presentation/core/menu/menu_bar.dart';

class PageTemplate extends StatelessWidget {
  final Widget child;
  const PageTemplate({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: background,
        appBar: const PreferredSize(
          preferredSize: Size(double.infinity, 66),
          child: MenuBar(),
        ),
        body: child);
  }
}
