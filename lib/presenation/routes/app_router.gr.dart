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
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../already/dashboard/dash_board_page.dart' as _i3;
import '../caregivers/caregivers_page.dart' as _i4;
import '../login/login_page.dart' as _i1;
import '../menu_bar/menu_bar_view.dart' as _i2;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    Login.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.LoginPage(),
      );
    },
    MenuBarView.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.MenuBarView(),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.DashboardPage(),
      );
    },
    CareGiversRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.CareGiversPage(),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          Login.name,
          path: '/',
        ),
        _i5.RouteConfig(
          MenuBarView.name,
          path: '/',
          children: [
            _i5.RouteConfig(
              DashboardRoute.name,
              path: 'dashboard',
              parent: MenuBarView.name,
            ),
            _i5.RouteConfig(
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
class Login extends _i5.PageRouteInfo<void> {
  const Login()
      : super(
          Login.name,
          path: '/',
        );

  static const String name = 'Login';
}

/// generated route for
/// [_i2.MenuBarView]
class MenuBarView extends _i5.PageRouteInfo<void> {
  const MenuBarView({List<_i5.PageRouteInfo>? children})
      : super(
          MenuBarView.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'MenuBarView';
}

/// generated route for
/// [_i3.DashboardPage]
class DashboardRoute extends _i5.PageRouteInfo<void> {
  const DashboardRoute()
      : super(
          DashboardRoute.name,
          path: 'dashboard',
        );

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i4.CareGiversPage]
class CareGiversRoute extends _i5.PageRouteInfo<void> {
  const CareGiversRoute()
      : super(
          CareGiversRoute.name,
          path: 'caregivers',
        );

  static const String name = 'CareGiversRoute';
}
