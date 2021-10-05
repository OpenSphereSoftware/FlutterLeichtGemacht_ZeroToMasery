import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo/domain/entities/todo.dart';

class TodoCard extends StatelessWidget {
  final Todo todo;
  const TodoCard({Key? key, required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Card(
      elevation: 16,
      color: todo.color.color,
      child: ListTile(
        leading: Checkbox(
          value: todo.done,
          onChanged: (_) {},
        ),
        title: Text(
          todo.title,
          style: themeData.textTheme.headline1!
              .copyWith(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
