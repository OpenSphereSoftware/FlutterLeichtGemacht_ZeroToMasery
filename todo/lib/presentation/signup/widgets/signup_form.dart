import 'package:flutter/material.dart';
import 'package:todo/presentation/signup/widgets/signin_register_button.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    String? validateEmail(String? input) {
      const emailRegex =
          r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";

      if (input == null || input.isEmpty) {
        return "please enter email";
      } else if (RegExp(emailRegex).hasMatch(input)) {
        return null;
      } else {
        return "invalid email format";
      }
    }

    String? validatePassword(String? input) {
      if (input == null || input.isEmpty) {
        return "please enter password";
      } else if (input.length >= 6) {
        return null;
      } else {
        return "short password";
      }
    }

    final themeData = Theme.of(context);
    return Form(
      key: formKey,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          const SizedBox(
            height: 80,
          ),
          Text(
            "Welcome",
            style: themeData.textTheme.headline1!.copyWith(
                fontSize: 50, fontWeight: FontWeight.w500, letterSpacing: 4),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Please register or sign in",
            style: themeData.textTheme.headline1!.copyWith(
                fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 4),
          ),
          const SizedBox(
            height: 80,
          ),
          TextFormField(
            autovalidateMode: AutovalidateMode.disabled,
            cursorColor: Colors.white,
            decoration: const InputDecoration(labelText: "E-Mail"),
            validator: validateEmail,
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            autovalidateMode: AutovalidateMode.disabled,
            cursorColor: Colors.white,
            obscureText: true,
            decoration: const InputDecoration(
              labelText: "Password",
            ),
            validator: validatePassword,
          ),
          const SizedBox(
            height: 40,
          ),
          SignInRegisterButton(
            buttonText: "Sign in",
            callback: () {
              print("sign in pressed");

              if (formKey.currentState!.validate()) {
                print("validated");
              } else {
                print("unvalid ");

                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    backgroundColor: Colors.redAccent,
                    content: Text(
                      "invalid input",
                      style: themeData.textTheme.bodyText1,
                    )));
              }
            },
          ),
          const SizedBox(
            height: 20,
          ),
          SignInRegisterButton(
            buttonText: "Register",
            callback: () {
              print("register pressed");
            },
          ),
        ],
      ),
    );
  }
}
