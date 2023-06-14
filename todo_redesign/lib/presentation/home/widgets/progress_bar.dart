import 'package:flutter/material.dart';
import 'package:todo/domain/entities/todo.dart';
import 'package:todo/presentation/home/widgets/progress_bar_painter.dart';

class ProgressBar extends StatelessWidget {
  final List<Todo> todos;
  const ProgressBar({Key? key, required this.todos}) : super(key: key);

  double _getDoneTodoPercentage({required List<Todo> todos}){
    int done = 0;

    for(var todo in todos){
      if(todo.done){
        done++;
      }
    }

    double percent = (1/todos.length) * done;
    return percent;
  }

  @override
  Widget build(BuildContext context) {
    final _radius = BorderRadius.circular(10);
    return Material(
      elevation: 16,
      borderRadius: _radius,
      child: Container(
        height: 80,
        decoration: BoxDecoration(
            color: Theme.of(context).appBarTheme.backgroundColor,
            borderRadius: _radius),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Todos progress",
                style: Theme.of(context)
                    .textTheme
                    .displayLarge!
                    .copyWith(fontSize: 16),
              ),
              const SizedBox(height: 10),
              Expanded(child: LayoutBuilder(
                builder: (context, constraints) {
                return Center(
                  child: CustomPaint(
                    painter: ProgressPainter(
                      donePercent: _getDoneTodoPercentage(todos: todos),
                      backgroundColor: Colors.grey,
                      percentageColor: Colors.tealAccent,
                        barHeight: 25, barWidth: constraints.maxWidth),
                  ),
                );
              }))
            ],
          ),
        ),
      ),
    );
  }
}
