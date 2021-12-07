import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/application/auth/authbloc/auth_bloc.dart';

class FlexibleSpace extends StatelessWidget {
  const FlexibleSpace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      background: Padding(
        padding: const EdgeInsets.only(bottom: 90, top: 15),
        child: Image.asset("assets/todo.png"),
      ),
      titlePadding: const EdgeInsets.only(left: 20, bottom: 10),
      title: Row(
        children: [
          Text(
            "Todo",
            textScaleFactor: 2,
            style: Theme.of(context).textTheme.headline1!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          IconButton(
              onPressed: () {
                BlocProvider.of<AuthBloc>(context).add(SignOutPressedEvent());
              },
              icon: const Icon(Icons.exit_to_app)),
        ],
      ),
    );
  }
}
