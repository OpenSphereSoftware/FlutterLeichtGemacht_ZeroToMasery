import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/application/todos/observer/observer_bloc.dart';
import 'package:todo/presentation/home/widgets/todo_card.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return BlocBuilder<ObserverBloc, ObserverState>(
      builder: (context, state) {
        if (state is ObserverInitial) {
          return Container();
        } else if (state is ObserverLoading) {
          return Center(
            child: CircularProgressIndicator(
              color: themeData.colorScheme.secondary,
            ),
          );
        } else if (state is ObserverFailure) {
          return const Center(child: Text("Failure"));
        } else if (state is ObserverSuccess) {
          return ListView.builder(
            itemCount: state.todos.length,
            itemBuilder: (context, index) {
            final todo = state.todos[index];
            return TodoCard(todo: todo);
          });
        }

        return Container();
      },
    );
  }
}
