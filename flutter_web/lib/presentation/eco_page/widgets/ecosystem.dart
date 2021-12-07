import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterweb/constants.dart';
import 'package:flutterweb/presentation/core/page_wrapper/centered_constrained_wrapper.dart';
import 'package:responsive_framework/responsive_framework.dart';

class Ecosystem extends StatelessWidget {
  const Ecosystem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveWrapper.of(context);
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [Colors.pink[50]!, Colors.white],
        ),
      ),
      child: CenteredConstrainedWrapper(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            ResponsiveRowColumn(
              columnVerticalDirection: VerticalDirection.up,
              columnMainAxisSize: MainAxisSize.min,
              layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                  ? ResponsiveRowColumnType.COLUMN
                  : ResponsiveRowColumnType.ROW,
              rowCrossAxisAlignment: CrossAxisAlignment.center,
              children: [
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
                          "A strong ecosystem, powered by open source",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: fontFamily,
                              fontSize: responsive.equals(DESKTOP) ? 75 : 40,
                              fontWeight: FontWeight.bold,
                              height: 0.9),
                          textAlign: responsive.isSmallerThan(DESKTOP)
                              ? TextAlign.center
                              : TextAlign.start,
                        ),
                      ],
                    ),
                  ),
                ),
                ResponsiveRowColumnItem(
                    rowFlex: 1,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: responsive.equals(TABLET) ? 120 : 50,
                        vertical: 20,
                      ),
                      child: Image.asset(
                        "assets/images/ecosystem.png",
                      ),
                    )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 50,
                vertical: 20,
              ),
              child: Text(
                "From packages and plugins to friendly developers, find all of the resources you need to be successful with Flutter.",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: fontFamily,
                  fontSize: responsive.equals(DESKTOP) ? 38 : 22,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
