import 'package:flutter/material.dart';
import 'package:flutterweb/constants.dart';
import 'package:flutterweb/presentation/core/buttons/call_to_action.dart';
import 'package:responsive_framework/responsive_framework.dart';

class DeveloperExperience extends StatelessWidget {
  const DeveloperExperience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveWrapper.of(context);
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: ResponsiveRowColumn(
        layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
            ? ResponsiveRowColumnType.COLUMN
            : ResponsiveRowColumnType.ROW,
        rowCrossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ResponsiveRowColumnItem(
              rowFlex: 1,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: responsive.equals(TABLET) ? 120 : 50,
                  vertical: 20,
                ),
                child: Image.asset(
                  "assets/images/dev_exp.png",
                ),
              )),
          ResponsiveRowColumnItem(
            rowFlex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 50,
                vertical: 20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Developer-Experience",
                    style: TextStyle(
                        color: Colors.teal[400],
                        fontFamily: fontFamily,
                        fontSize: responsive.equals(DESKTOP) ? 20 : 18,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Transform your workflow",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: fontFamily,
                        fontSize: responsive.equals(DESKTOP) ? 60 : 40,
                        fontWeight: FontWeight.bold,
                        height: 0.9),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Take control of your codebase with automated testing, developer tooling, and everything else you need to build production-quality apps.",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: fontFamily,
                      fontSize: responsive.equals(DESKTOP) ? 20 : 18,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                   CallToAction(
                    text: "Flutter for developers",
                    callback: (){},
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
