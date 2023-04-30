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
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../already/dashboard/dash_board_page.dart' as _i2;
import '../caregivers/caregivers_page.dart' as _i3;
import '../menu_bar/menu_bar_view.dart' as _i1;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    MenuBarView.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.MenuBarView(),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.DashboardPage(),
      );
    },
    CareGiversRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.CareGiversPage(),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          MenuBarView.name,
          path: '/',
          children: [
            _i4.RouteConfig(
              '#redirect',
              path: '',
              parent: MenuBarView.name,
              redirectTo: 'dashboard',
              fullMatch: true,
            ),
            _i4.RouteConfig(
              DashboardRoute.name,
              path: 'dashboard',
              parent: MenuBarView.name,
            ),
            _i4.RouteConfig(
              CareGiversRoute.name,
              path: 'caregivers',
              parent: MenuBarView.name,
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.MenuBarView]
class MenuBarView extends _i4.PageRouteInfo<void> {
  const MenuBarView({List<_i4.PageRouteInfo>? children})
      : super(
          MenuBarView.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'MenuBarView';
}

/// generated route for
/// [_i2.DashboardPage]
class DashboardRoute extends _i4.PageRouteInfo<void> {
  const DashboardRoute()
      : super(
          DashboardRoute.name,
          path: 'dashboard',
        );

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i3.CareGiversPage]
class CareGiversRoute extends _i4.PageRouteInfo<void> {
  const CareGiversRoute()
      : super(
          CareGiversRoute.name,
          path: 'caregivers',
        );

  static const String name = 'CareGiversRoute';
}
