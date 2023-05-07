import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/application/todos/controller/controller_bloc.dart';
import 'package:todo/domain/entities/todo.dart';
import 'package:todo/presentation/routes/router.gr.dart';

class TodoCard extends StatelessWidget {
  final Todo todo;
  const TodoCard({Key? key, required this.todo}) : super(key: key);

  void _showDeletDialog(
      {required BuildContext context, required ControllerBloc bloc}) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Selected Todo to delete:"),
            content: Text(
              todo.title,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text(
                    "CANCLE",
                    style: TextStyle(color: Colors.white),
                  )),
              TextButton(
                  onPressed: () {
                    bloc.add(DeleteTodoEvent(todo: todo));
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "DELETE",
                    style: TextStyle(color: Colors.white),
                  )),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return InkResponse(
      onTap: (){
        AutoRouter.of(context).push(TodoDetailRoute(todo: todo));
      },
      onLongPress: () {
        final controllerBloc = context.read<ControllerBloc>();
        _showDeletDialog(context: context, bloc: controllerBloc);
      },
      child: Card(
        elevation: 16,
        color: todo.color.color,
        child: ListTile(
          leading: Checkbox(
            value: todo.done,
            onChanged: (value) {
              if (value != null) {
                BlocProvider.of<ControllerBloc>(context)
                    .add(UpdateTodoEvent(todo: todo, done: value));
              }
            },
          ),
          title: Text(
            todo.title,
            style: themeData.textTheme.displayLarge!
                .copyWith(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
