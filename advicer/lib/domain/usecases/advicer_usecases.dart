

import 'package:advicer/domain/entities/advice_Enitity.dart';
import 'package:advicer/domain/failures/failures.dart';
import 'package:dartz/dartz.dart';

class AdvicerUsecases {

   Future sleep1() {
    return Future.delayed(Duration(seconds: 2), () => "1");
  }


  Future<Either<Failure,AdviceEntity>> getAdviceUsecase() async {

    // call function from repository to get advice

    // Buisness logic implementieren z.b. rechnung etc
    await sleep1();

    //return Left(GeneralFailure());

    return Right(AdviceEntity(advice: "example", id: 1));


  

  }


}