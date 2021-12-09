import 'package:flutter/material.dart';
import 'package:fluttergrundlagen/application/theme_service.dart';
import 'package:fluttergrundlagen/presentation/theme_animation/widgets/moon.dart';
import 'package:fluttergrundlagen/presentation/theme_animation/widgets/star.dart';
import 'package:fluttergrundlagen/presentation/theme_animation/widgets/sun.dart';
import 'package:fluttergrundlagen/presentation/theme_animation/widgets/theme_switch.dart';
import 'package:provider/provider.dart';

class ThemeAnimationPage extends StatelessWidget {
  const ThemeAnimationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Consumer<ThemeService>(builder: (context, themeServie, child) {
      return Scaffold(
        backgroundColor: themeData.scaffoldBackgroundColor,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: themeData.appBarTheme.backgroundColor,
          title: const Text("Theme Animation"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Material(
              borderRadius: BorderRadius.circular(15),
              elevation: 20,
              child: ConstrainedBox(
                constraints: const BoxConstraints(minWidth: double.infinity),
                child: Container(
                  height: 500,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                          colors: themeServie.isDarkModeOn
                              ? const [
                                  Color(0xFF94A9FF),
                                  Color(0xFF6B66CC),
                                  Color(0xFF200F75),
                                ]
                              : [
                                  const Color(0xDDFFFA66),
                                  const Color(0xDDFFA057),
                                  const Color(0xDD940B99)
                                ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter)),
                  child: Stack(
                    children: [
                      Positioned(
                          top: 70,
                          right: 50,
                          child: AnimatedOpacity(
                              duration: const Duration(milliseconds: 200),
                              opacity: themeServie.isDarkModeOn ? 1 : 0,
                              child: const Star())),
                      Positioned(
                          top: 150,
                          left: 60,
                          child: AnimatedOpacity(
                              duration: const Duration(milliseconds: 200),
                              opacity: themeServie.isDarkModeOn ? 1 : 0,
                              child: const Star())),
                      Positioned(
                          top: 40,
                          left: 200,
                          child: AnimatedOpacity(
                              duration: const Duration(milliseconds: 200),
                              opacity: themeServie.isDarkModeOn ? 1 : 0,
                              child: const Star())),
                      Positioned(
                          top: 50,
                          left: 50,
                          child: AnimatedOpacity(
                              duration: const Duration(milliseconds: 200),
                              opacity: themeServie.isDarkModeOn ? 1 : 0,
                              child: const Star())),
                      Positioned(
                          top: 100,
                          right: 200,
                          child: AnimatedOpacity(
                              duration: const Duration(milliseconds: 200),
                              opacity: themeServie.isDarkModeOn ? 1 : 0,
                              child: const Star())),
                      //

                      AnimatedPositioned(
                          duration: const Duration(milliseconds: 400),
                          top: themeServie.isDarkModeOn ? 100 : 130,
                          right: themeServie.isDarkModeOn ? 100 : -40,
                          child: AnimatedOpacity(
                              duration: const Duration(milliseconds: 300),
                              opacity: themeServie.isDarkModeOn ? 1 : 0,
                              child: const Moon())),
                      AnimatedPadding(
                        duration: const Duration(milliseconds: 200),
                        padding: EdgeInsets.only(
                            top: themeServie.isDarkModeOn ? 110 : 50),
                        child: const Center(child: Sun()),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 225,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: themeServie.isDarkModeOn
                                  ? themeData.appBarTheme.backgroundColor
                                  : themeData.colorScheme.primary,
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                Provider.of<ThemeService>(context).isDarkModeOn
                                    ? "Zu dunkel?"
                                    : "Zu hell?",
                                style: themeData.textTheme.headline1!.copyWith(
                                  fontWeight: FontWeight.w600,
                                  height: 0.9,
                                  fontSize: 21,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Text(
                                Provider.of<ThemeService>(context).isDarkModeOn
                                    ? "Lass die Sonne aufgehen"
                                    : "Lass es Nacht werden",
                                style: themeData.textTheme.bodyText1!.copyWith(
                                  height: 0.9,
                                  fontSize: 18,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              const ThemeSwitcher()
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
