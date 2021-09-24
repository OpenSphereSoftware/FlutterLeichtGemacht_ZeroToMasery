import 'package:flutter/material.dart';
import 'package:todo/presentation/signup/signup_page.dart';
import 'package:todo/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TODO',
      theme: AppTheme.lightTheme,
      darkTheme:  AppTheme.darkTheme,
      themeMode:  ThemeMode.dark,
      home: const SignUpPage(),
    );
  }
}
