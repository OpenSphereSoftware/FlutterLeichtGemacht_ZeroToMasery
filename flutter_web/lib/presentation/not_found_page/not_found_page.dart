import 'package:flutter/material.dart';
import 'package:flutterweb/constants.dart';
import 'package:flutterweb/presentation/core/buttons/call_to_action.dart';
import 'package:flutterweb/presentation/core/page_wrapper/centered_constrained_wrapper.dart';
import 'package:flutterweb/presentation/core/page_wrapper/page_template.dart';
import 'package:flutterweb/presentation/home_page/homepage.dart';
import 'package:routemaster/routemaster.dart';

class NotFondPage extends StatelessWidget {
  const NotFondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      child: ListView(
        children: [
          CenteredConstrainedWrapper(
              child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Sorry, we couldn't find that page",
                  style: TextStyle(
                      fontFamily: fontFamily,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "404",
                  style: TextStyle(
                      fontFamily: fontFamily,
                      color: textPrimaryLight,
                      fontWeight: FontWeight.bold,
                      height: 0.9,
                      fontSize: 60),
                ),
                ConstrainedBox(
                    constraints: const BoxConstraints(maxHeight: 300),
                    child: Image.asset("assets/images/mixer.png")),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "But maybe you find help starting back from the homepage.",
                  style: TextStyle(
                      fontFamily: fontFamily,
                      color: textPrimaryLight,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                CallToAction(
                  text: "Back to homepage",
                  callback: () {
                    Routemaster.of(context).push(HomePage.homePagePath);
                  },
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
