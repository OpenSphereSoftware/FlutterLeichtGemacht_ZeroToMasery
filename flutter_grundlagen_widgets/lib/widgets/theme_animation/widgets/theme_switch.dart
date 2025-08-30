import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../service/theme_service.dart';

/// 🔄 Theme Switcher Widget - Provider Showcase
///
/// Dieses Widget demonstriert die Verwendung von Provider:
/// - Provider.of<ThemeService>(context) für State-Zugriff
/// - Consumer-Pattern für reaktive UI-Updates
/// - Animierte Schaltfläche zwischen Light/Dark Mode
class ThemeSwitcher extends StatelessWidget {
  const ThemeSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    // 🔑 Provider.of() gibt uns Zugriff auf den ThemeService
    final themeProvider = Provider.of<ThemeService>(context);
    final themeData = Theme.of(context);

    // Theme-spezifische Farben
    final Color backgroundColor = themeData.colorScheme.primaryContainer;
    final Color buttonColor = themeData.colorScheme.onPrimary;
    final Color textColor = themeData.textTheme.displayLarge!.color!;

    final List<String> values = ["Light", "Dark"];

    return SizedBox(
      width: 200,
      height: 30,
      child: Stack(
        children: <Widget>[
          // Hintergrund-Container
          InkWell(
            onHover: (_) {},
            onTap: () {
              // 🔑 Provider.of mit listen: false für Actions
              // (kein Rebuild bei State-Änderungen)
              Provider.of<ThemeService>(context, listen: false).toggleTheme();
            },
            child: Container(
              height: 30,
              decoration: BoxDecoration(color: backgroundColor, borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        values[0],
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: textColor,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        values[1],
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: textColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Animierter Schalter-Button
          InkWell(
            onHover: (_) {},
            onTap: () {
              Provider.of<ThemeService>(context, listen: false).toggleTheme();
            },
            child: AnimatedAlign(
              duration: const Duration(milliseconds: 200),
              curve: Curves.decelerate,
              // 🎬 Animation: Button bewegt sich basierend auf dem State
              alignment: !themeProvider.isDarkModeOn ? Alignment.centerLeft : Alignment.centerRight,
              child: Container(
                width: 100,
                height: 30,
                decoration: ShapeDecoration(
                  color: buttonColor,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
                alignment: Alignment.center,
                child: Text(
                  !themeProvider.isDarkModeOn ? values[0] : values[1],
                  style: TextStyle(
                    fontFamily: "Open Sans",
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: textColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
