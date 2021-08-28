import 'package:flutter/material.dart';
import 'package:fluttergrundlagen/application/theme_service.dart';
import 'package:fluttergrundlagen/presentation/counter_app/counter_app_page.dart';
import 'package:fluttergrundlagen/presentation/navigation_example_screens/screen1.dart';
import 'package:fluttergrundlagen/presentation/navigation_example_screens/screen2.dart';
import 'package:fluttergrundlagen/presentation/widgets_examples/widgets_examples_page.dart';
import 'package:fluttergrundlagen/root.dart';
import 'package:fluttergrundlagen/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeService(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(builder: (context, themeService, child) {
      return MaterialApp(
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode:
              themeService.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
          debugShowCheckedModeBanner: false,
          routes: <String, WidgetBuilder>{
            "/root": (BuildContext countext) => RootWidget(),
            "/screen1": (BuildContext countext) => Screen1(),
            "/screen2": (BuildContext countext) => Screen2(),
          },
          home: RootWidget());
    });
  }
}
