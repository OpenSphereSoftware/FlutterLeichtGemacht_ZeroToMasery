import 'package:advicer/application/bloc/advicer_new_bloc.dart';
import 'package:advicer/application/theme/theme_service.dart';
import 'package:advicer/presentation/advicer/widgets/advice_field.dart';
import 'package:advicer/presentation/advicer/widgets/custom_button.dart';
import 'package:advicer/presentation/advicer/widgets/error_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class AdvicerPage extends StatelessWidget {
  const AdvicerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          actions: [
            Visibility(
              visible: !Provider.of<ThemeService>(context).useSystemTheme,
              child: Switch(
                  value: Provider.of<ThemeService>(context).isDarkModeOn,
                  onChanged: (_) {
                    Provider.of<ThemeService>(context, listen: false)
                        .toggleTheme();
                  }),
            ),
            Switch(
                value: Provider.of<ThemeService>(context).useSystemTheme,
                activeColor: Colors.redAccent,
                onChanged: (_) {
                  Provider.of<ThemeService>(context, listen: false)
                      .toggleUseSystemTheme();
                })
          ],
          title: Text(
            "Advicer",
            style: themeData.textTheme.displayLarge,
          )),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            children: [
              Expanded(
                child: Center(
                    child: BlocBuilder<AdvicerNewBloc, AdvicerState>(
                  bloc: BlocProvider.of<AdvicerNewBloc>(context),
                  builder: (context, adviceState) {
                    if (adviceState is AdvicerInitial) {
                      return Text(
                        "Your Advice is waiting for you!",
                        style: themeData.textTheme.displayLarge,
                      );
                    } else if (adviceState is AdvicerStateLoading) {
                      return CircularProgressIndicator(
                        color: themeData.colorScheme.secondary,
                      );
                    } else if (adviceState is AdvicerStateLoaded) {
                      return AdviceField(
                        advice: adviceState.advice,
                      );
                    } else if (adviceState is AdvicerStateError) {
                      return ErrorMessage(
                        message: adviceState.message,
                      );
                    }
                    return const Placeholder();
                  },
                )),
              ),
              const SizedBox(
                height: 200,
                child: Center(
                  child: CustomButton(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
