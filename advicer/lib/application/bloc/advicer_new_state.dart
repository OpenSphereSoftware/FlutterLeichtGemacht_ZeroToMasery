part of 'advicer_new_bloc.dart';

abstract class AdvicerState {}

class AdvicerInitial extends AdvicerState with EquatableMixin {
  @override
  List<Object?> get props => [];
}

class AdvicerStateLoading extends AdvicerState with EquatableMixin {
  @override
  List<Object?> get props => [];
}

class AdvicerStateLoaded extends AdvicerState with EquatableMixin {

  @override
  List<Object?> get props => [advice];
  final String advice;
  AdvicerStateLoaded({required this.advice});
}

class AdvicerStateError extends AdvicerState with EquatableMixin {

  
  @override
  List<Object?> get props => [message];
  final String message;

  AdvicerStateError({required this.message});
}