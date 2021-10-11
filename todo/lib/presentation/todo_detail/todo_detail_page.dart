import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/application/todos/todoForm/todoform_bloc.dart';
import 'package:todo/domain/entities/todo.dart';
import 'package:todo/injection.dart';
import 'package:todo/presentation/routes/router.gr.dart';
import 'package:todo/presentation/todo_detail/widgets/todo_form.dart';

class TodoDetail extends StatelessWidget {
  final Todo? todo;
  const TodoDetail({Key? key, required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return BlocProvider(
      create: (context) =>
          sl<TodoformBloc>()..add(InitializeTodoDetailPage(todo: todo)),
      child: BlocListener<TodoformBloc, TodoformState>(
        listenWhen: (p, c) =>
            p.failureOrSuccessOption != c.failureOrSuccessOption,
        listener: (context, state) {
          state.failureOrSuccessOption.fold(
              () {},
              (eitherFailureOrSuccess) => eitherFailureOrSuccess.fold(
                  (failure) => ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                          content: Text("failure"),
                          backgroundColor: Colors.redAccent)),
                  (_) => Navigator.of(context).popUntil(
                      (route) => route.settings.name == HomePageRoute.name)));
        },
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(todo == null ? "Create Todo" : "Edit Todo"),
          ),
          body: const TodoForm(),
        ),
      ),
    );
  }
}
