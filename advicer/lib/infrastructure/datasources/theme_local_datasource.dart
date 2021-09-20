import 'package:advicer/infrastructure/exceptions/exceptions.dart';
import 'package:shared_preferences/shared_preferences.dart';

const CACHED_THEME_MODE = 'CACHED_THEME_MODE';

abstract class ThemeLocalDatasource {
  Future<bool> getCachedThemeData();

  Future<void> cacheThemeData({required bool mode});
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
}
