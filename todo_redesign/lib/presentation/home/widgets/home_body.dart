import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/application/todos/observer/observer_bloc.dart';
import 'package:todo/presentation/home/widgets/flexible_space.dart';
import 'package:todo/presentation/home/widgets/progress_bar.dart';
import 'package:todo/presentation/home/widgets/todo_item.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  static const double _spacing = 20;

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
          return SafeArea(
            child: CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                SliverAppBar(
                  collapsedHeight: 70,
                  expandedHeight: 280,
                  backgroundColor: themeData.scaffoldBackgroundColor,
                  pinned: true,
                  
                  flexibleSpace: const FlexibleSpace(),
                ),
                SliverPadding(
                  padding: const EdgeInsets.only(left: _spacing, right: _spacing),
                  sliver: SliverToBoxAdapter(
                    child: ProgressBar(todos: state.todos),
                  ),
                ),
                SliverPadding(
                    padding: const EdgeInsets.all(_spacing),
                    sliver: SliverGrid(
                      delegate: SliverChildBuilderDelegate((context, index) {
                        final todo = state.todos[index];
                        return TodoItem(
                          todo: todo,
                        );
                      }, childCount: state.todos.length),
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 200,
                              crossAxisSpacing: _spacing,
                              childAspectRatio: 4 / 5,
                              mainAxisSpacing: _spacing),
                    )),
              ],
            ),
          );
        }

        return Container();
      },
    );
  }
}
