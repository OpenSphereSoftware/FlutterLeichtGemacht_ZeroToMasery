import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static final Color _lightPrimaryColor = Colors.blueGrey.shade50;
  static final Color _lightPrimaryVariantColor = Colors.blueGrey.shade800;
  static final Color _lightOnPrimaryColor = Colors.blueGrey.shade200;
  static final Color _lightTextColorPrimary = Colors.black;
  static final Color _appbarColorLight = Colors.blue;

  static final Color _darkPrimaryColor = Colors.blueGrey.shade900;
  static final Color _darkPrimaryVariantColor = Colors.black;
  static final Color _darkOnPrimaryColor = Colors.blueGrey.shade300;
  static const Color _darkTextColorPrimary = Colors.white;
  static final Color _appbarColorDark = Colors.blueGrey.shade800;

  static const Color _iconColor = Colors.white;

  static final TextStyle _lightHeadingText =
      TextStyle(color: _lightTextColorPrimary, fontFamily: "Rubik");

  static final TextStyle _lightBodyText = TextStyle(
      color: _lightTextColorPrimary,
      fontFamily: "Rubik",
      fontStyle: FontStyle.italic);

  static final TextTheme _lightTextTheme = TextTheme(
    headline1: _lightHeadingText,
    bodyText1: _lightBodyText,
  );

  static final TextStyle _darkThemeHeadingTextStyle =
      _lightHeadingText.copyWith(color: _darkTextColorPrimary);

  static final TextStyle _darkThemeBodyeTextStyle =
      _lightBodyText.copyWith(color: _darkTextColorPrimary);

  static final TextTheme _darkTextTheme = TextTheme(
    headline1: _darkThemeHeadingTextStyle,
    bodyText1: _darkThemeBodyeTextStyle,
  );

  static final ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: _lightPrimaryColor,
      appBarTheme: AppBarTheme(
          color: _appbarColorLight,
          iconTheme: IconThemeData(color: _iconColor)),
      bottomAppBarColor: _appbarColorLight,
      colorScheme: ColorScheme.light(
          primary: _lightPrimaryColor,
          onPrimary: _lightOnPrimaryColor,
          primaryVariant: _lightPrimaryVariantColor),
      textTheme: _lightTextTheme);

  static final ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: _darkPrimaryColor,
      appBarTheme: AppBarTheme(
          color: _appbarColorDark, iconTheme: IconThemeData(color: _iconColor)),
      bottomAppBarColor: _appbarColorDark,
      colorScheme: ColorScheme.dark(
        primary: _darkPrimaryColor,
        onPrimary: _darkOnPrimaryColor,
        primaryVariant: _darkPrimaryVariantColor,
      ),
      textTheme: _darkTextTheme);
}
