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
import 'package:admin_580_tech/presentation/caregivers/caregivers_page.dart'
    as _i6;
import 'package:admin_580_tech/presentation/cargiver_detail/caregiver_detail_page.dart'
    as _i7;
import 'package:admin_580_tech/presentation/dashboard/dashboard_page.dart'
    as _i5;
import 'package:admin_580_tech/presentation/forgot_password/forgot_password_page.dart'
    as _i2;
import 'package:admin_580_tech/presentation/login/login_page.dart' as _i1;
import 'package:admin_580_tech/presentation/menu_bar/menu_bar_view.dart' as _i4;
import 'package:admin_580_tech/presentation/reset_password/reset_password_page.dart'
    as _i3;
import 'package:admin_580_tech/presentation/user_management/user_management_page.dart'
    as _i8;
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

class AppRouter extends _i9.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return _i9.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.LoginPage(),
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i9.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.ForgotPasswordPage(),
        maintainState: false,
      );
    },
    ResetPasswordRoute.name: (routeData) {
      return _i9.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.ResetPasswordPage(),
        maintainState: false,
      );
    },
    MenuBarView.name: (routeData) {
      return _i9.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i4.MenuBarView(),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i9.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i5.DashboardPage(),
      );
    },
    CareGiversRoute.name: (routeData) {
      return _i9.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i6.CareGiversPage(),
      );
    },
    CareGiverDetailRoute.name: (routeData) {
      return _i9.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i7.CareGiverDetailPage(),
      );
    },
    UserManagementRoute.name: (routeData) {
      return _i9.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i8.UserManagementPage(),
      );
    },
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/admin/login',
          fullMatch: true,
        ),
        _i9.RouteConfig(
          LoginRoute.name,
          path: '/admin/login',
        ),
        _i9.RouteConfig(
          ForgotPasswordRoute.name,
          path: '/admin/forgot-password',
        ),
        _i9.RouteConfig(
          ResetPasswordRoute.name,
          path: '/admin/reset-password',
        ),
        _i9.RouteConfig(
          MenuBarView.name,
          path: '/admin',
          children: [
            _i9.RouteConfig(
              '#redirect',
              path: '',
              parent: MenuBarView.name,
              redirectTo: 'dashboard',
              fullMatch: true,
            ),
            _i9.RouteConfig(
              DashboardRoute.name,
              path: 'dashboard',
              parent: MenuBarView.name,
            ),
            _i9.RouteConfig(
              CareGiversRoute.name,
              path: 'caregiver-management',
              parent: MenuBarView.name,
            ),
            _i9.RouteConfig(
              CareGiverDetailRoute.name,
              path: 'caregiver-detail',
              parent: MenuBarView.name,
            ),
            _i9.RouteConfig(
              UserManagementRoute.name,
              path: 'user-management',
              parent: MenuBarView.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i9.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/admin/login',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i2.ForgotPasswordPage]
class ForgotPasswordRoute extends _i9.PageRouteInfo<void> {
  const ForgotPasswordRoute()
      : super(
          ForgotPasswordRoute.name,
          path: '/admin/forgot-password',
        );

  static const String name = 'ForgotPasswordRoute';
}

/// generated route for
/// [_i3.ResetPasswordPage]
class ResetPasswordRoute extends _i9.PageRouteInfo<void> {
  const ResetPasswordRoute()
      : super(
          ResetPasswordRoute.name,
          path: '/admin/reset-password',
        );

  static const String name = 'ResetPasswordRoute';
}

/// generated route for
/// [_i4.MenuBarView]
class MenuBarView extends _i9.PageRouteInfo<void> {
  const MenuBarView({List<_i9.PageRouteInfo>? children})
      : super(
          MenuBarView.name,
          path: '/admin',
          initialChildren: children,
        );

  static const String name = 'MenuBarView';
}

/// generated route for
/// [_i5.DashboardPage]
class DashboardRoute extends _i9.PageRouteInfo<void> {
  const DashboardRoute()
      : super(
          DashboardRoute.name,
          path: 'dashboard',
        );

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i6.CareGiversPage]
class CareGiversRoute extends _i9.PageRouteInfo<void> {
  const CareGiversRoute()
      : super(
          CareGiversRoute.name,
          path: 'caregiver-management',
        );

  static const String name = 'CareGiversRoute';
}

/// generated route for
/// [_i7.CareGiverDetailPage]
class CareGiverDetailRoute extends _i9.PageRouteInfo<void> {
  const CareGiverDetailRoute()
      : super(
          CareGiverDetailRoute.name,
          path: 'caregiver-detail',
        );

  static const String name = 'CareGiverDetailRoute';
}

/// generated route for
/// [_i8.UserManagementPage]
class UserManagementRoute extends _i9.PageRouteInfo<void> {
  const UserManagementRoute()
      : super(
          UserManagementRoute.name,
          path: 'user-management',
        );

  static const String name = 'UserManagementRoute';
}
