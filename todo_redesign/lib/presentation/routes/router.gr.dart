// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:todo/domain/entities/todo.dart' as _i7;
import 'package:todo/presentation/home/home_page.dart' as _i2;
import 'package:todo/presentation/signup/signup_page.dart' as _i4;
import 'package:todo/presentation/splash/splash_page.dart' as _i3;
import 'package:todo/presentation/todo_detail/todo_detail_page.dart' as _i1;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    TodoDetailRoute.name: (routeData) {
      final args = routeData.argsAs<TodoDetailRouteArgs>();
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.TodoDetail(
          key: args.key,
          todo: args.todo,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomePage(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.SplashPage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.SignUpPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.TodoDetail]
class TodoDetailRoute extends _i5.PageRouteInfo<TodoDetailRouteArgs> {
  TodoDetailRoute({
    _i6.Key? key,
    required _i7.Todo? todo,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          TodoDetailRoute.name,
          args: TodoDetailRouteArgs(
            key: key,
            todo: todo,
          ),
          initialChildren: children,
        );

  static const String name = 'TodoDetailRoute';

  static const _i5.PageInfo<TodoDetailRouteArgs> page =
      _i5.PageInfo<TodoDetailRouteArgs>(name);
}

class TodoDetailRouteArgs {
  const TodoDetailRouteArgs({
    this.key,
    required this.todo,
  });

  final _i6.Key? key;

  final _i7.Todo? todo;

  @override
  String toString() {
    return 'TodoDetailRouteArgs{key: $key, todo: $todo}';
  }
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute({List<_i5.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.SplashPage]
class SplashRoute extends _i5.PageRouteInfo<void> {
  const SplashRoute({List<_i5.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.SignUpPage]
class SignUpRoute extends _i5.PageRouteInfo<void> {
  const SignUpRoute({List<_i5.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
