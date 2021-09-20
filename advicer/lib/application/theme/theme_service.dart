import 'package:advicer/domain/reposetories/theme_repositroy.dart';
import 'package:flutter/material.dart';

abstract class ThemeService extends ChangeNotifier {
  late bool isDarkModeOn;
  Future<void> toggleTheme();
  Future<void> setTheme({required bool mode});
  Future<void> init();
}

class ThemeServiceImpl extends ChangeNotifier implements ThemeService {
  final ThemeRepository themeRepository;

  ThemeServiceImpl({required this.themeRepository});

  @override
  bool isDarkModeOn = true;

  @override
  Future<void> setTheme({required bool mode}) async {
    isDarkModeOn = mode;
    notifyListeners();
    await themeRepository.setThemeMode(mode: isDarkModeOn);
  }

  @override
  Future<void> toggleTheme() async {
    isDarkModeOn = !isDarkModeOn;
    await setTheme(mode: isDarkModeOn);
  }

  @override
  Future<void> init() async {
    final modeOrFailure = await themeRepository.getThemeMode();

    await modeOrFailure.fold(
        (failure) async {
          await setTheme(mode: true);
        }, 
        (mode) => setTheme(mode: mode));
  }
}
