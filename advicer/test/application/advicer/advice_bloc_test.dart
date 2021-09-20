import 'package:advicer/application/advicer/advicer_bloc.dart';
import 'package:advicer/domain/entities/advice_Enitity.dart';
import 'package:advicer/domain/failures/failures.dart';
import 'package:advicer/domain/usecases/advicer_usecases.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'advice_bloc_test.mocks.dart';

@GenerateMocks([AdvicerUsecases])
void main() {
  late AdvicerBloc advicerBloc;
  late MockAdvicerUsecases mockAdvicerUsecases;

  setUp(() {
    mockAdvicerUsecases = MockAdvicerUsecases();
    advicerBloc = AdvicerBloc(usecases: mockAdvicerUsecases);
  });

  test(" initState should be AdvicerInitial", () {
    // assert
    expect(advicerBloc.state, equals(AdvicerInitial()));
  });

  group("AdviceRequestedEvent", () {
    final t_Advice = AdviceEntity(advice: "test", id: 1);
    final t_Advice_String = "test";

    test("should call usecase if event is added", () async {
      // arrange
      when(mockAdvicerUsecases.getAdviceUsecase())
          .thenAnswer((_) async => Right(t_Advice));

      //act
      advicerBloc.add(AdviceRequestedEvent());
      await untilCalled(mockAdvicerUsecases.getAdviceUsecase());

      // assert
      verify(mockAdvicerUsecases.getAdviceUsecase());
      verifyNoMoreInteractions(mockAdvicerUsecases);
    });

    test("should emmit loading then the loaded state after event is added",
        () async {
      // arrange
      when(mockAdvicerUsecases.getAdviceUsecase())
          .thenAnswer((_) async => Right(t_Advice));

      //assert later
      final expected = [
        AdvicerStateLoading(),
        AdvicerStateLoaded(advice: t_Advice_String)
      ];
      expectLater(advicerBloc.stream, emitsInOrder(expected));

      // act
      advicerBloc.add(AdviceRequestedEvent());
    });

    test(
        "should emmit loading then the error state after event is added -> usecase fails -> server failure",
        () async {
      // arrange
      when(mockAdvicerUsecases.getAdviceUsecase())
          .thenAnswer((_) async => Left(ServerFailure()));

      //assert later
      final expected = [
        AdvicerStateLoading(),
        AdvicerStateError(message: SERVER_FAILURE_MESSAGE)
      ];
      expectLater(advicerBloc.stream, emitsInOrder(expected));

      // act
      advicerBloc.add(AdviceRequestedEvent());
    });

    test(
        "should emmit loading then the error state after event is added -> usecase fails -> general failure",
        () async {
      // arrange
      when(mockAdvicerUsecases.getAdviceUsecase())
          .thenAnswer((_) async => Left(GeneralFailure()));

      //assert later
      final expected = [
        AdvicerStateLoading(),
        AdvicerStateError(message: GENERAL_FAILURE_MESSAGE)
      ];
      expectLater(advicerBloc.stream, emitsInOrder(expected));

      // act
      advicerBloc.add(AdviceRequestedEvent());
    });
  });
}
