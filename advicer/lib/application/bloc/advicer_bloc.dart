import 'dart:async';

import 'package:advicer/domain/entities/advice_Enitity.dart';
import 'package:advicer/domain/failures/failures.dart';
import 'package:advicer/domain/usecases/advicer_usecases.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

part 'advicer_event.dart';
part 'advicer_state.dart';

class AdvicerBloc extends Bloc<AdvicerEvent, AdvicerState> {
  AdvicerBloc({required this.usecases}) : super(AdvicerInitial());
  final AdvicerUsecases usecases;

  @override
  Stream<AdvicerState> mapEventToState(
    AdvicerEvent event,
  ) async* {
    if (event is AdviceRequestedEvent) {
      yield AdvicerStateLoading();

      Either<Failure,AdviceEntity> adviceOrFailure =  await usecases.getAdviceUsecase();

      yield adviceOrFailure.fold(
        (failure) => AdvicerStateError(message: _mapFailureToMessage(failure)), 
        (advice) => AdvicerStateLoaded(advice: advice.advice));


   
    } 
    else if (event is ExampleEvent) {
      
    }
  }

  String _mapFailureToMessage(Failure failure){
    switch (failure.runtimeType) {
      case ServerFailure:
        return "Ups, API Error. please try again!";
      case GeneralFailure:
        return "Ups, something gone wrong. Please try again!";
    
      default:
         return "Ups, something gone wrong. Please try again!";
    }
  }
}
