

import 'package:advicer/domain/entities/advice_enitity.dart';
import 'package:advicer/domain/failures/failures.dart';
import 'package:dartz/dartz.dart';

abstract class AdvicerRepository {
  /// Calls free Advice Slip api to get a random advice
  /// returns a [serverFailure] if status code was not 200  
  /// it will return a [genralFailure] for all other failures
  Future<Either<Failure,AdviceEntity>> getAdviceFromApi();
}