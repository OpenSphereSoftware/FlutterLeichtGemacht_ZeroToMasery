part of 'todoform_bloc.dart';

@immutable
abstract class TodoformEvent {}

class InitializeTodoDetailPage extends TodoformEvent {
  final Todo? todo;
  InitializeTodoDetailPage({required this.todo});
}

class ColorChangedEvent extends TodoformEvent {
  final Color color;
  ColorChangedEvent({required this.color});
}
