part of 'todoform_bloc.dart';

class TodoformState {
  final Todo todo;
  final bool showErrorMessages;
  final bool isSaving;
  final bool isEditing;
  final Option<Either<TodoFailure, Unit>> failureOrSuccessOption;

  TodoformState(
      {required this.todo,
      required this.showErrorMessages,
      required this.isEditing,
      required this.isSaving,
      required this.failureOrSuccessOption});

  factory TodoformState.initial() => TodoformState(
      todo: Todo.empty(),
      showErrorMessages: false,
      isEditing: false,
      isSaving: false,
      failureOrSuccessOption: none());

  TodoformState copyWith({
    Todo? todo,
    bool? showErrorMessages,
    bool? isSaving,
    bool? isEditing,
    Option<Either<TodoFailure, Unit>>? failureOrSuccessOption,
  }) {
    return TodoformState(
      todo: todo ?? this.todo,
      showErrorMessages: showErrorMessages ?? this.showErrorMessages,
      isSaving: isSaving ?? this.isSaving,
      isEditing: isEditing ?? this.isEditing,
      failureOrSuccessOption:
          failureOrSuccessOption ?? this.failureOrSuccessOption,
    );
  }
}
