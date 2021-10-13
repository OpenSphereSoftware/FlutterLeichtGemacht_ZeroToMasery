import 'package:advicer/domain/entities/advice_enitity.dart';
import 'package:advicer/domain/failures/failures.dart';
import 'package:advicer/domain/usecases/advicer_usecases.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

part 'advicer_new_event.dart';
part 'advicer_new_state.dart';

const GENERAL_FAILURE_MESSAGE = "Ups, something gone wrong. Please try again!";
const SERVER_FAILURE_MESSAGE = "Ups, API Error. please try again!";

class AdvicerNewBloc extends Bloc<AdvicerEvent, AdvicerState> {
  final AdvicerUsecases usecases;

  AdvicerNewBloc({required this.usecases}) : super(AdvicerInitial()) {
    on<AdviceRequestedEvent>((event, emit) async {
      emit(AdvicerStateLoading());

      Either<Failure, AdviceEntity> adviceOrFailure =
          await usecases.getAdviceUsecase();

      adviceOrFailure.fold(
          (failure) =>
              emit(AdvicerStateError(message: _mapFailureToMessage(failure))),
          (advice) => emit(AdvicerStateLoaded(advice: advice.advice)));
    });
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return SERVER_FAILURE_MESSAGE;
      case GeneralFailure:
        return GENERAL_FAILURE_MESSAGE;

      default:
        return GENERAL_FAILURE_MESSAGE;
    }
  }
}
