

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/application/auth/singupfrom/signupform_bloc.dart';
import 'package:todo/injection.dart';
import 'package:todo/presentation/signup/widgets/signup_form.dart';

@RoutePage()

class SignUpPage extends StatelessWidget {
  const SignUpPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: BlocProvider(
        create: (context) => sl<SignupformBloc>(),
        child: const SignUpForm()),
    );
  }
}