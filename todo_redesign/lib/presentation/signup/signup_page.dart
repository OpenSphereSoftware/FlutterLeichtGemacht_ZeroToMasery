

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/application/auth/singupfrom/signupform_bloc.dart';
import 'package:todo/injection.dart';
import 'package:todo/presentation/signup/widgets/signup_form.dart';

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