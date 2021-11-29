import 'package:flutter/material.dart';
import 'package:flutterweb/presentation/dev_page/dev_page.dart';
import 'package:flutterweb/presentation/home_page/homepage.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Web',
      home: const HomePage(),
      builder: (context, widget)=> ResponsiveWrapper.builder(
        widget,
        defaultScale: true,
        minWidth: 400,
        defaultName: MOBILE,
        breakpoints: const [
          ResponsiveBreakpoint.autoScale(450, name: MOBILE),
          ResponsiveBreakpoint.resize(600, name: TABLET),
          ResponsiveBreakpoint.resize(1000, name: DESKTOP)
        ],
        backgroundColor: Colors.white
        
      ),
    );
  }
}
