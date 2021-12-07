// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../../domain/entities/todo.dart' as _i7;
import '../home/home_page.dart' as _i5;
import '../signup/signup_page.dart' as _i4;
import '../splash/splash_page.dart' as _i3;
import '../todo_detail/todo_detail_page.dart' as _i6;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SplashPage());
    },
    SignUpPageRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.SignUpPage());
    },
    HomePageRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.HomePage());
    },
    TodoDetailRoute.name: (routeData) {
      final args = routeData.argsAs<TodoDetailRouteArgs>();
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i6.TodoDetail(key: args.key, todo: args.todo),
          fullscreenDialog: true);
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashPageRoute.name, path: '/'),
        _i1.RouteConfig(SignUpPageRoute.name, path: '/sign-up-page'),
        _i1.RouteConfig(HomePageRoute.name, path: '/home-page'),
        _i1.RouteConfig(TodoDetailRoute.name, path: '/todo-detail')
      ];
}

class SplashPageRoute extends _i1.PageRouteInfo<void> {
  const SplashPageRoute() : super(name, path: '/');

  static const String name = 'SplashPageRoute';
}

class SignUpPageRoute extends _i1.PageRouteInfo<void> {
  const SignUpPageRoute() : super(name, path: '/sign-up-page');

  static const String name = 'SignUpPageRoute';
}

class HomePageRoute extends _i1.PageRouteInfo<void> {
  const HomePageRoute() : super(name, path: '/home-page');

  static const String name = 'HomePageRoute';
}

class TodoDetailRoute extends _i1.PageRouteInfo<TodoDetailRouteArgs> {
  TodoDetailRoute({_i2.Key? key, required _i7.Todo? todo})
      : super(name,
            path: '/todo-detail',
            args: TodoDetailRouteArgs(key: key, todo: todo));

  static const String name = 'TodoDetailRoute';
}

class TodoDetailRouteArgs {
  const TodoDetailRouteArgs({this.key, required this.todo});

  final _i2.Key? key;

  final _i7.Todo? todo;
}
