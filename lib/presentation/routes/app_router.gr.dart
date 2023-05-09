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
import 'package:admin_580_tech/presentation/already/dashboard/dash_board_page.dart'
    as _i5;
import 'package:admin_580_tech/presentation/caregivers/caregivers_page.dart'
    as _i6;
import 'package:admin_580_tech/presentation/forgot_password/forgot_password_page.dart'
    as _i2;
import 'package:admin_580_tech/presentation/login/login_page.dart' as _i1;
import 'package:admin_580_tech/presentation/menu_bar/menu_bar_view.dart' as _i4;
import 'package:admin_580_tech/presentation/reset_password/reset_password_page.dart'
    as _i3;
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    Login.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.LoginPage(),
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.ForgotPasswordPage(),
        maintainState: false,
      );
    },
    ResetPasswordRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.ResetPasswordPage(),
        maintainState: false,
      );
    },
    MenuBarView.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i4.MenuBarView(),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i5.DashboardPage(),
      );
    },
    CareGiversRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i6.CareGiversPage(),
      );
    },
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(
          Login.name,
          path: '/',
        ),
        _i7.RouteConfig(
          ForgotPasswordRoute.name,
          path: '/forgot-password',
        ),
        _i7.RouteConfig(
          ResetPasswordRoute.name,
          path: '/reset-password',
        ),
        _i7.RouteConfig(
          MenuBarView.name,
          path: '/menu-bar-view',
          children: [
            _i7.RouteConfig(
              '#redirect',
              path: '',
              parent: MenuBarView.name,
              redirectTo: 'dashboard',
              fullMatch: true,
            ),
            _i7.RouteConfig(
              DashboardRoute.name,
              path: 'dashboard',
              parent: MenuBarView.name,
            ),
            _i7.RouteConfig(
              CareGiversRoute.name,
              path: 'caregivers',
              parent: MenuBarView.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.LoginPage]
class Login extends _i7.PageRouteInfo<void> {
  const Login()
      : super(
          Login.name,
          path: '/',
        );

  static const String name = 'Login';
}

/// generated route for
/// [_i2.ForgotPasswordPage]
class ForgotPasswordRoute extends _i7.PageRouteInfo<void> {
  const ForgotPasswordRoute()
      : super(
          ForgotPasswordRoute.name,
          path: '/forgot-password',
        );

  static const String name = 'ForgotPasswordRoute';
}

/// generated route for
/// [_i3.ResetPasswordPage]
class ResetPasswordRoute extends _i7.PageRouteInfo<void> {
  const ResetPasswordRoute()
      : super(
          ResetPasswordRoute.name,
          path: '/reset-password',
        );

  static const String name = 'ResetPasswordRoute';
}

/// generated route for
/// [_i4.MenuBarView]
class MenuBarView extends _i7.PageRouteInfo<void> {
  const MenuBarView({List<_i7.PageRouteInfo>? children})
      : super(
          MenuBarView.name,
          path: '/menu-bar-view',
          initialChildren: children,
        );

  static const String name = 'MenuBarView';
}

/// generated route for
/// [_i5.DashboardPage]
class DashboardRoute extends _i7.PageRouteInfo<void> {
  const DashboardRoute()
      : super(
          DashboardRoute.name,
          path: 'dashboard',
        );

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i6.CareGiversPage]
class CareGiversRoute extends _i7.PageRouteInfo<void> {
  const CareGiversRoute()
      : super(
          CareGiversRoute.name,
          path: 'caregivers',
        );

  static const String name = 'CareGiversRoute';
}
