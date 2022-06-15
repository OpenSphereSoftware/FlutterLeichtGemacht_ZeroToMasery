import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:todo/core/Failures/auth_failures.dart';
import 'package:todo/domain/repositries/auth_repository.dart';

part 'signupform_event.dart';
part 'signupform_state.dart';

class SignupformBloc extends Bloc<SignupformEvent, SignupformState> {
  final AuthRepository authRepository;
  SignupformBloc({required this.authRepository})
      : super(SignupformState(
            isSubmitting: false,
            showValidationMessages: false,
            authFailureOrSuccessOption: none())) {
    on<RegisterWithEmailAndPasswordPressed>((event, emit) async {
      if (event.email == null || event.password == null) {
        emit(state.copyWith(
          isSubmitting: false,
          showValidationMessages: true,
          authFailureOrSuccessOption: none(),
        ));
      } else {
        emit(state.copyWith(isSubmitting: true, showValidationMessages: false));
        final failureOrSuccess =
            await authRepository.registerWithEmailAndPassword(
                email: event.email!, password: event.password!);

        emit(state.copyWith(
            isSubmitting: false,
            authFailureOrSuccessOption: optionOf(failureOrSuccess)));
      }
    });

    on<SignInWithEmailAndPasswordPressed>((event, emit) async {
      if (event.email == null || event.password == null) {
        emit(state.copyWith(
          isSubmitting: false,
          showValidationMessages: true,
          authFailureOrSuccessOption: none(),
        ));
      } else {
        emit(state.copyWith(isSubmitting: true, showValidationMessages: false));
        final failureOrSuccess =
            await authRepository.signInWithEmailAndPassword(
                email: event.email!, password: event.password!);

        emit(state.copyWith(
            isSubmitting: false,
            authFailureOrSuccessOption: optionOf(failureOrSuccess)));
      }
    });
  }
}
