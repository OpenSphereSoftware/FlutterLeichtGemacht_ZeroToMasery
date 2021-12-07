import 'package:flutter/material.dart';
import 'package:flutterweb/presentation/dev_page/dev_page.dart';
import 'package:flutterweb/presentation/eco_page/eco_page.dart';
import 'package:flutterweb/presentation/home_page/homepage.dart';
import 'package:flutterweb/presentation/not_found_page/not_found_page.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:routemaster/routemaster.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

final routes = RouteMap(
    onUnknownRoute: (route) {      return const MaterialPage(child: NotFondPage());
    },
    routes: {
      '/': (_) => const Redirect(HomePage.homePagePath),
      HomePage.homePagePath: (_) => const MaterialPage(child: HomePage()),
      DevPage.devPagePath: (_) => const MaterialPage(child: DevPage()),
      EcoPage.ecoPagePath: (_) => const MaterialPage(child: EcoPage()),
    });

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: const RoutemasterParser(),
      routerDelegate: RoutemasterDelegate(routesBuilder: (context) => routes),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Web Test',
      builder: (context, widget) => ResponsiveWrapper.builder(widget,
          defaultScale: true,
          minWidth: 400,
          defaultName: MOBILE,
          breakpoints: const [
            ResponsiveBreakpoint.autoScale(450, name: MOBILE),
            ResponsiveBreakpoint.resize(600, name: TABLET),
            ResponsiveBreakpoint.resize(1000, name: DESKTOP)
          ],
          backgroundColor: Colors.white),
    );
  }
}
