import 'package:advicer/infrastructure/exceptions/exceptions.dart';
import 'package:shared_preferences/shared_preferences.dart';

const CACHED_THEME_MODE = 'CACHED_THEME_MODE';

const CACHED_USE_SYSTEM_THEME = 'CACHED_USE_SYSTEM_THEME';

abstract class ThemeLocalDatasource {
  Future<bool> getCachedThemeData();
  Future<bool> getUseSystemTheme();

  Future<void> cacheThemeData({required bool mode});
  Future<void> cacheUseSystemTheme({required bool useSystemTheme});
}

class ThemeLocalDatasourceImpl implements ThemeLocalDatasource {
  final SharedPreferences sharedPreferences;
  ThemeLocalDatasourceImpl({required this.sharedPreferences});

  @override
  Future<void> cacheThemeData({required bool mode}) {
    return sharedPreferences.setBool(CACHED_THEME_MODE, mode);
  }

  @override
  Future<bool> getCachedThemeData() {
    final modeBool = sharedPreferences.getBool(CACHED_THEME_MODE);

    if (modeBool != null) {
      return Future.value(modeBool);
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> cacheUseSystemTheme({required bool useSystemTheme}) {
    return sharedPreferences.setBool(CACHED_USE_SYSTEM_THEME, useSystemTheme);
  }

  @override
  Future<bool> getUseSystemTheme() {
    final useSystemTheme = sharedPreferences.getBool(CACHED_USE_SYSTEM_THEME);

    if (useSystemTheme != null) {
      return Future.value(useSystemTheme);
    } else {
      throw CacheException();
    }
  }
}
