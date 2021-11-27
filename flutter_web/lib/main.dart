import 'package:flutter/material.dart';
import 'package:flutterweb/presentation/dev_page/dev_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Web',
      home: DevPage(),
    );
  }
}
