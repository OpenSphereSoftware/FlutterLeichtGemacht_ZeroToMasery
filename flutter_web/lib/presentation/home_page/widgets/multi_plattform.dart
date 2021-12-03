import 'package:flutter/material.dart';
import 'package:flutterweb/constants.dart';
import 'package:flutterweb/presentation/core/buttons/call_to_action.dart';
import 'package:responsive_framework/responsive_framework.dart';

class MultiPlattform extends StatelessWidget {
  const MultiPlattform({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsiveValue = ResponsiveWrapper.of(context);
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(color: background),
      child: ResponsiveRowColumn(
        columnVerticalDirection: VerticalDirection.up,
        rowCrossAxisAlignment: CrossAxisAlignment.center,
        layout: responsiveValue.isSmallerThan(DESKTOP)
            ? ResponsiveRowColumnType.COLUMN
            : ResponsiveRowColumnType.ROW,
        children: [
          ResponsiveRowColumnItem(
              rowFlex: 1,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Multi-Platform",
                      style: TextStyle(
                          color: Colors.lightBlue,
                          fontFamily: fontFamily,
                          fontSize:
                              responsiveValue.isLargerThan(TABLET) ? 20 : 18,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Reach users on every screen",
                      style: TextStyle(
                          color: textPrimaryLight,
                          fontFamily: fontFamily,
                          fontSize:
                              responsiveValue.isLargerThan(TABLET) ? 60 : 40,
                          height: 0.9,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Deploy to multiple devices from a single codebase: mobile, web, desktop, and embedded devices.",
                      style: TextStyle(
                        color: textPrimaryLight,
                        fontFamily: fontFamily,
                        fontSize:
                            responsiveValue.isLargerThan(TABLET) ? 20 : 18,
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    CallToAction(
                      text: "See the target platforms",
                      callback: () {},
                    )
                  ],
                ),
              )),
          ResponsiveRowColumnItem(
              rowFlex: 1,
              child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: responsiveValue.equals(TABLET) ? 120 : 50,
                      vertical: 20),
                  child: Image.asset("assets/images/multi_plattform.png"))),
        ],
      ),
    );
  }
}
