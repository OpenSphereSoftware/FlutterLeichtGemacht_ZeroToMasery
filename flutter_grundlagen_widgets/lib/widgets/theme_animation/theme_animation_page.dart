import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'service/theme_service.dart';
import 'widgets/moon.dart';
import 'widgets/star.dart';
import 'widgets/sun.dart';
import 'widgets/theme_switch.dart';

/// 🎬 Theme Animation Page - Provider & Animation Showcase
///
/// Diese Seite demonstriert:
/// - 🔄 ChangeNotifier mit Provider für State Management
/// - 🎬 Verschiedene Animationen (AnimatedPositioned, AnimatedOpacity, AnimatedPadding)
/// - 🌓 Theme-Wechsel mit visuellen Effekten
/// - ⭐ Dynamische UI-Updates basierend auf State-Änderungen
class ThemeAnimationPage extends StatelessWidget {
  const ThemeAnimationPage({super.key});

  @override
  Widget build(BuildContext context) {
    // 🔑 ChangeNotifierProvider bereitstellt den ThemeService für diese Seite
    // Alle Child-Widgets können jetzt auf den ThemeService zugreifen
    return ChangeNotifierProvider(create: (context) => ThemeService(), child: const _ThemeAnimationPageContent());
  }
}

/// 🎬 Inhalt der Theme Animation Page
///
/// Diese Klasse verwendet den ThemeService über Consumer
class _ThemeAnimationPageContent extends StatelessWidget {
  const _ThemeAnimationPageContent();

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

    // 🔑 Consumer<ThemeService> - Reagiert auf State-Änderungen
    // Wird automatisch neu aufgebaut, wenn sich der State ändert
    return Consumer<ThemeService>(
      builder: (context, themeService, child) {
        return Scaffold(
          backgroundColor: themeData.scaffoldBackgroundColor,
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: themeData.appBarTheme.backgroundColor,
            title: const Text("Theme Animation & State Management"),
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
                        colors: themeService.isDarkModeOn
                            ? const [
                                Color(0xFF94A9FF), // Hellblau
                                Color(0xFF6B66CC), // Blau
                                Color(0xFF200F75), // Dunkelblau
                              ]
                            : [
                                const Color(0xDDFFFA66), // Gelb
                                const Color(0xDDFFA057), // Orange
                                const Color(0xDD940B99), // Lila
                              ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                    child: Stack(
                      children: [
                        // ⭐ Sterne - erscheinen nur im Dark Mode
                        // 🎬 AnimatedOpacity für Fade-In/Out Effekt
                        Positioned(
                          top: 70,
                          right: 50,
                          child: AnimatedOpacity(
                            duration: const Duration(milliseconds: 200),
                            opacity: themeService.isDarkModeOn ? 1 : 0,
                            child: const Star(),
                          ),
                        ),
                        Positioned(
                          top: 150,
                          left: 60,
                          child: AnimatedOpacity(
                            duration: const Duration(milliseconds: 200),
                            opacity: themeService.isDarkModeOn ? 1 : 0,
                            child: const Star(),
                          ),
                        ),
                        Positioned(
                          top: 40,
                          left: 200,
                          child: AnimatedOpacity(
                            duration: const Duration(milliseconds: 200),
                            opacity: themeService.isDarkModeOn ? 1 : 0,
                            child: const Star(),
                          ),
                        ),
                        Positioned(
                          top: 50,
                          left: 50,
                          child: AnimatedOpacity(
                            duration: const Duration(milliseconds: 200),
                            opacity: themeService.isDarkModeOn ? 1 : 0,
                            child: const Star(),
                          ),
                        ),
                        Positioned(
                          top: 100,
                          right: 200,
                          child: AnimatedOpacity(
                            duration: const Duration(milliseconds: 200),
                            opacity: themeService.isDarkModeOn ? 1 : 0,
                            child: const Star(),
                          ),
                        ),

                        // 🌙 Mond - bewegt sich und wird sichtbar/unsichtbar
                        // 🎬 AnimatedPositioned für Bewegung, AnimatedOpacity für Fade
                        AnimatedPositioned(
                          duration: const Duration(milliseconds: 400),
                          top: themeService.isDarkModeOn ? 100 : 130,
                          right: themeService.isDarkModeOn ? 100 : -40,
                          child: AnimatedOpacity(
                            duration: const Duration(milliseconds: 300),
                            opacity: themeService.isDarkModeOn ? 1 : 0,
                            child: const Moon(),
                          ),
                        ),

                        // ☀️ Sonne - bewegt sich nach oben/unten
                        // 🎬 AnimatedPadding für vertikale Bewegung
                        AnimatedPadding(
                          duration: const Duration(milliseconds: 200),
                          padding: EdgeInsets.only(top: themeService.isDarkModeOn ? 110 : 50),
                          child: const Center(child: Sun()),
                        ),

                        // 📝 Info-Bereich mit Theme-Switcher
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 225,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: themeService.isDarkModeOn
                                  ? themeData.appBarTheme.backgroundColor
                                  : themeData.colorScheme.primary,
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  themeService.isDarkModeOn ? "Zu dunkel?" : "Zu hell?",
                                  style: themeData.textTheme.displayLarge!.copyWith(
                                    fontWeight: FontWeight.w600,
                                    height: 0.9,
                                    fontSize: 21,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 30),
                                Text(
                                  themeService.isDarkModeOn ? "Lass die Sonne aufgehen" : "Lass es Nacht werden",
                                  style: themeData.textTheme.bodyLarge!.copyWith(height: 0.9, fontSize: 18),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 40),

                                // 🔄 Theme-Switcher Widget
                                const ThemeSwitcher(),
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
      },
    );
  }
}
