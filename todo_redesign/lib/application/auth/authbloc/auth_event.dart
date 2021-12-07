part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent {}

class SignOutPressedEvent extends AuthEvent {}

class AuthCheckRequestedEvent extends AuthEvent {}
