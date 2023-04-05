// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;

import '../screens/home_screen.dart' as _i6;
import '../screens/limit_quiz_screen.dart' as _i9;
import '../screens/login_screen.dart' as _i1;
import '../screens/profile_screen.dart' as _i5;
import '../screens/quiz_screen.dart' as _i8;
import '../screens/reset_pass_screen.dart' as _i4;
import '../screens/signup_screen.dart' as _i3;
import '../screens/table_score_screen.dart' as _i7;
import '../screens/time_screen.dart' as _i2;

class AppRouter extends _i10.RootStackRouter {
  AppRouter([_i11.GlobalKey<_i11.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    LoginScreen.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.LoginScreen(),
      );
    },
    TimeScreen.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.TimeScreen(),
      );
    },
    SignUpScreen.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.SignUpScreen(),
      );
    },
    ResetPassScreen.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.ResetPassScreen(),
      );
    },
    ProfileScreen.name: (routeData) {
      final args = routeData.argsAs<ProfileScreenArgs>();
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.ProfileScreen(
          key: args.key,
          id: args.id,
        ),
      );
    },
    HomeScreen.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.HomeScreen(),
      );
    },
    TableScoreScreen.name: (routeData) {
      final args = routeData.argsAs<TableScoreScreenArgs>();
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i7.TableScoreScreen(
          key: args.key,
          id: args.id,
        ),
      );
    },
    QuizScreen.name: (routeData) {
      final args = routeData.argsAs<QuizScreenArgs>();
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i8.QuizScreen(
          key: args.key,
          genre: args.genre,
          limit: args.limit,
          id: args.id,
        ),
      );
    },
    LimitQuizScreen.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.LimitQuizScreen(),
      );
    },
  };

  @override
  List<_i10.RouteConfig> get routes => [
        _i10.RouteConfig(
          LoginScreen.name,
          path: '/',
        ),
        _i10.RouteConfig(
          TimeScreen.name,
          path: '/time-screen',
        ),
        _i10.RouteConfig(
          SignUpScreen.name,
          path: '/sign-screen',
        ),
        _i10.RouteConfig(
          ResetPassScreen.name,
          path: '/reset-screen',
        ),
        _i10.RouteConfig(
          ProfileScreen.name,
          path: '/profile-sceen',
        ),
        _i10.RouteConfig(
          HomeScreen.name,
          path: '/home-screen',
        ),
        _i10.RouteConfig(
          TableScoreScreen.name,
          path: '/table-score-screen',
        ),
        _i10.RouteConfig(
          QuizScreen.name,
          path: '/quiz-screen',
        ),
        _i10.RouteConfig(
          LimitQuizScreen.name,
          path: '/limit-quiz-screen',
        ),
      ];
}

/// generated route for
/// [_i1.LoginScreen]
class LoginScreen extends _i10.PageRouteInfo<void> {
  const LoginScreen()
      : super(
          LoginScreen.name,
          path: '/',
        );

  static const String name = 'LoginScreen';
}

/// generated route for
/// [_i2.TimeScreen]
class TimeScreen extends _i10.PageRouteInfo<void> {
  const TimeScreen()
      : super(
          TimeScreen.name,
          path: '/time-screen',
        );

  static const String name = 'TimeScreen';
}

/// generated route for
/// [_i3.SignUpScreen]
class SignUpScreen extends _i10.PageRouteInfo<void> {
  const SignUpScreen()
      : super(
          SignUpScreen.name,
          path: '/sign-screen',
        );

  static const String name = 'SignUpScreen';
}

/// generated route for
/// [_i4.ResetPassScreen]
class ResetPassScreen extends _i10.PageRouteInfo<void> {
  const ResetPassScreen()
      : super(
          ResetPassScreen.name,
          path: '/reset-screen',
        );

  static const String name = 'ResetPassScreen';
}

/// generated route for
/// [_i5.ProfileScreen]
class ProfileScreen extends _i10.PageRouteInfo<ProfileScreenArgs> {
  ProfileScreen({
    _i11.Key? key,
    required int id,
  }) : super(
          ProfileScreen.name,
          path: '/profile-sceen',
          args: ProfileScreenArgs(
            key: key,
            id: id,
          ),
        );

  static const String name = 'ProfileScreen';
}

class ProfileScreenArgs {
  const ProfileScreenArgs({
    this.key,
    required this.id,
  });

  final _i11.Key? key;

  final int id;

  @override
  String toString() {
    return 'ProfileScreenArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i6.HomeScreen]
class HomeScreen extends _i10.PageRouteInfo<void> {
  const HomeScreen()
      : super(
          HomeScreen.name,
          path: '/home-screen',
        );

  static const String name = 'HomeScreen';
}

/// generated route for
/// [_i7.TableScoreScreen]
class TableScoreScreen extends _i10.PageRouteInfo<TableScoreScreenArgs> {
  TableScoreScreen({
    _i11.Key? key,
    required int id,
  }) : super(
          TableScoreScreen.name,
          path: '/table-score-screen',
          args: TableScoreScreenArgs(
            key: key,
            id: id,
          ),
        );

  static const String name = 'TableScoreScreen';
}

class TableScoreScreenArgs {
  const TableScoreScreenArgs({
    this.key,
    required this.id,
  });

  final _i11.Key? key;

  final int id;

  @override
  String toString() {
    return 'TableScoreScreenArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i8.QuizScreen]
class QuizScreen extends _i10.PageRouteInfo<QuizScreenArgs> {
  QuizScreen({
    _i11.Key? key,
    required String genre,
    required int limit,
    required int id,
  }) : super(
          QuizScreen.name,
          path: '/quiz-screen',
          args: QuizScreenArgs(
            key: key,
            genre: genre,
            limit: limit,
            id: id,
          ),
        );

  static const String name = 'QuizScreen';
}

class QuizScreenArgs {
  const QuizScreenArgs({
    this.key,
    required this.genre,
    required this.limit,
    required this.id,
  });

  final _i11.Key? key;

  final String genre;

  final int limit;

  final int id;

  @override
  String toString() {
    return 'QuizScreenArgs{key: $key, genre: $genre, limit: $limit, id: $id}';
  }
}

/// generated route for
/// [_i9.LimitQuizScreen]
class LimitQuizScreen extends _i10.PageRouteInfo<void> {
  const LimitQuizScreen()
      : super(
          LimitQuizScreen.name,
          path: '/limit-quiz-screen',
        );

  static const String name = 'LimitQuizScreen';
}
