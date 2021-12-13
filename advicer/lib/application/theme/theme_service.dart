import 'package:advicer/domain/reposetories/theme_repositroy.dart';
import 'package:flutter/material.dart';

abstract class ThemeService extends ChangeNotifier {
  late bool isDarkModeOn;
  late bool useSystemTheme;
  Future<void> toggleTheme();
  Future<void> toggleUseSystemTheme();
  Future<void> setTheme({required bool mode});
  Future<void> setUseSystemTheme({required bool sytemTheme});
  Future<void> init();
}

class ThemeServiceImpl extends ChangeNotifier implements ThemeService {
  final ThemeRepository themeRepository;

  ThemeServiceImpl({required this.themeRepository});

  @override
  bool isDarkModeOn = true;

  @override
  late bool useSystemTheme;

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
  Future<void> setUseSystemTheme({required bool sytemTheme}) async {
    useSystemTheme = sytemTheme;
    notifyListeners();
    await themeRepository.setUseSytemTheme(useSystemTheme: useSystemTheme);
  }

  @override
  Future<void> toggleUseSystemTheme() async {
    useSystemTheme = !useSystemTheme;
    await setUseSystemTheme(sytemTheme: useSystemTheme);
  }

  @override
  Future<void> init() async {
    final useSystemThemeOrFailure = await themeRepository.getUseSytemTheme();

    await useSystemThemeOrFailure.fold((failure) async {
      await setUseSystemTheme(sytemTheme: false);
    }, (useSystemTheme) async {
      await setUseSystemTheme(sytemTheme: useSystemTheme);
    });

    final modeOrFailure = await themeRepository.getThemeMode();

    await modeOrFailure.fold((failure) async {
      await setTheme(mode: true);
    }, (mode) => setTheme(mode: mode));
  }
}
