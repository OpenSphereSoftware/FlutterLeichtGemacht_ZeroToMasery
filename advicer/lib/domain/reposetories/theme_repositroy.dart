

import 'package:advicer/domain/failures/failures.dart';
import 'package:dartz/dartz.dart';

abstract class ThemeRepository {

    Future<Either<Failure, bool>> getThemeMode();

    Future<void> setThemeMode({required bool mode});
    
}