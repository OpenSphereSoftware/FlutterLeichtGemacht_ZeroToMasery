part of 'signupform_bloc.dart';

@immutable
abstract class SignupformEvent {}

class RegisterWithEmailAndPasswordPressed extends SignupformEvent {
  final String? email;
  final String? password;
  RegisterWithEmailAndPasswordPressed({required this.email,required this.password});
}

class SignInWithEmailAndPasswordPressed extends SignupformEvent {
  final String? email;
  final String? password;
  SignInWithEmailAndPasswordPressed({required this.email,required this.password});
}
