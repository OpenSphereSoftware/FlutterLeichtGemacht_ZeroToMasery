import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:nativedesign/presentation/login/login.dart';
import 'package:nativedesign/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlatformApp(
      title: "native desing ",
      debugShowCheckedModeBanner: false,
      home: const LogInPage(),
      material: (_, __) => MaterialAppData(theme: materialThemeData),
      cupertino: (_, __) => CupertinoAppData(theme: cupertinoTheme),
    );
  }
}
