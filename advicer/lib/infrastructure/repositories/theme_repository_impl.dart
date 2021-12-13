import 'package:advicer/domain/failures/failures.dart';
import 'package:advicer/domain/reposetories/theme_repositroy.dart';
import 'package:advicer/infrastructure/datasources/theme_local_datasource.dart';
import 'package:dartz/dartz.dart';

class ThemeRespositoryImpl implements ThemeRepository {
  final ThemeLocalDatasource themeLocalDatasource;

  ThemeRespositoryImpl({required this.themeLocalDatasource});

  @override
  Future<Either<Failure, bool>> getThemeMode() async {
    try {
      final themeMode = await themeLocalDatasource.getCachedThemeData();
      return Right(themeMode);
    } catch (e) {
      return Left(CacheFailure());
    }
  }

  @override
  Future<void> setThemeMode({required bool mode}) {
    return themeLocalDatasource.cacheThemeData(mode: mode);
  }

  @override
  Future<Either<Failure, bool>> getUseSytemTheme() async {
   try {
      final themeMode = await themeLocalDatasource.getUseSystemTheme();
      return Right(themeMode);
    } catch (e) {
      return Left(CacheFailure());
    }
  }

  @override
  Future<void> setUseSytemTheme({required bool useSystemTheme}) {
    return themeLocalDatasource.cacheUseSystemTheme(useSystemTheme: useSystemTheme);
  }
}
