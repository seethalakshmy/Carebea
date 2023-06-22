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
import 'package:admin_580_tech/presentation/caregiver_creation/caregiver_creation_page.dart'
    as _i12;
import 'package:admin_580_tech/presentation/caregiver_detail/caregiver_detail_page.dart'
    as _i8;
import 'package:admin_580_tech/presentation/caregiver_profile/caregiver_profile_page.dart'
    as _i11;
import 'package:admin_580_tech/presentation/caregivers/caregivers_page.dart'
    as _i6;
import 'package:admin_580_tech/presentation/dashboard/dashboard_page.dart'
    as _i5;
import 'package:admin_580_tech/presentation/forgot_password/forgot_password_page.dart'
    as _i2;
import 'package:admin_580_tech/presentation/login/login_page.dart' as _i1;
import 'package:admin_580_tech/presentation/on_boarding/on_boarding_page.dart'
    as _i13;
import 'package:admin_580_tech/presentation/reset_password/reset_password_page.dart'
    as _i3;
import 'package:admin_580_tech/presentation/side_menu/side_menu_page.dart'
    as _i4;
import 'package:admin_580_tech/presentation/transaction_management/transaction_management_page.dart'
    as _i10;
import 'package:admin_580_tech/presentation/user_management/user_management_page.dart'
    as _i7;
import 'package:admin_580_tech/presentation/user_mangement_detail/user_managemet_detail_page.dart'
    as _i9;
import 'package:auto_route/auto_route.dart' as _i14;
import 'package:flutter/material.dart' as _i15;

class AppRouter extends _i14.RootStackRouter {
  AppRouter([_i15.GlobalKey<_i15.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i14.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return _i14.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.LoginPage(),
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i14.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.ForgotPasswordPage(),
        maintainState: false,
      );
    },
    ResetPasswordRoute.name: (routeData) {
      return _i14.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.ResetPasswordPage(),
        maintainState: false,
      );
    },
    SideMenuRoute.name: (routeData) {
      return _i14.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i4.SideMenuPage(),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i14.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i5.DashboardPage(),
      );
    },
    CareGiversRoute.name: (routeData) {
      return _i14.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i6.CareGiversPage(),
      );
    },
    UserManagementRoute.name: (routeData) {
      return _i14.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i7.UserManagementPage(),
      );
    },
    CareGiverDetailRoute.name: (routeData) {
      return _i14.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i8.CareGiverDetailPage(),
      );
    },
    UserManagementDetailRoute.name: (routeData) {
      return _i14.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i9.UserManagementDetailPage(),
      );
    },
    TransactionManagementRoute.name: (routeData) {
      return _i14.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i10.TransactionManagementPage(),
      );
    },
    CareGiverProfileRoute.name: (routeData) {
      return _i14.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i11.CareGiverProfilePage(),
      );
    },
    CaregiverCreationRoute.name: (routeData) {
      return _i14.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i12.CaregiverCreationPage(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return _i14.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i13.OnboardingPage(),
      );
    },
  };

  @override
  List<_i14.RouteConfig> get routes => [
        _i14.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/admin/login',
          fullMatch: true,
        ),
        _i14.RouteConfig(
          LoginRoute.name,
          path: '/admin/login',
        ),
        _i14.RouteConfig(
          ForgotPasswordRoute.name,
          path: '/admin/forgot-password',
        ),
        _i14.RouteConfig(
          ResetPasswordRoute.name,
          path: '/admin/reset-password',
        ),
        _i14.RouteConfig(
          SideMenuRoute.name,
          path: '/admin',
          children: [
            _i14.RouteConfig(
              '#redirect',
              path: '',
              parent: SideMenuRoute.name,
              redirectTo: 'dashboard',
              fullMatch: true,
            ),
            _i14.RouteConfig(
              DashboardRoute.name,
              path: 'dashboard',
              parent: SideMenuRoute.name,
            ),
            _i14.RouteConfig(
              CareGiversRoute.name,
              path: 'care-ambassador',
              parent: SideMenuRoute.name,
            ),
            _i14.RouteConfig(
              UserManagementRoute.name,
              path: 'user-management',
              parent: SideMenuRoute.name,
            ),
            _i14.RouteConfig(
              CareGiverDetailRoute.name,
              path: 'care-ambassador-detail',
              parent: SideMenuRoute.name,
            ),
            _i14.RouteConfig(
              UserManagementDetailRoute.name,
              path: 'user-management-detail',
              parent: SideMenuRoute.name,
            ),
            _i14.RouteConfig(
              TransactionManagementRoute.name,
              path: 'transaction-management',
              parent: SideMenuRoute.name,
            ),
            _i14.RouteConfig(
              CareGiverProfileRoute.name,
              path: 'care-ambassador-profile',
              parent: SideMenuRoute.name,
            ),
            _i14.RouteConfig(
              CaregiverCreationRoute.name,
              path: 'caregiver-creation',
              parent: SideMenuRoute.name,
            ),
            _i14.RouteConfig(
              OnboardingRoute.name,
              path: 'caregiver-on_boarding',
              parent: SideMenuRoute.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i14.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/admin/login',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i2.ForgotPasswordPage]
class ForgotPasswordRoute extends _i14.PageRouteInfo<void> {
  const ForgotPasswordRoute()
      : super(
          ForgotPasswordRoute.name,
          path: '/admin/forgot-password',
        );

  static const String name = 'ForgotPasswordRoute';
}

/// generated route for
/// [_i3.ResetPasswordPage]
class ResetPasswordRoute extends _i14.PageRouteInfo<void> {
  const ResetPasswordRoute()
      : super(
          ResetPasswordRoute.name,
          path: '/admin/reset-password',
        );

  static const String name = 'ResetPasswordRoute';
}

/// generated route for
/// [_i4.SideMenuPage]
class SideMenuRoute extends _i14.PageRouteInfo<void> {
  const SideMenuRoute({List<_i14.PageRouteInfo>? children})
      : super(
          SideMenuRoute.name,
          path: '/admin',
          initialChildren: children,
        );

  static const String name = 'SideMenuRoute';
}

/// generated route for
/// [_i5.DashboardPage]
class DashboardRoute extends _i14.PageRouteInfo<void> {
  const DashboardRoute()
      : super(
          DashboardRoute.name,
          path: 'dashboard',
        );

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i6.CareGiversPage]
class CareGiversRoute extends _i14.PageRouteInfo<void> {
  const CareGiversRoute()
      : super(
          CareGiversRoute.name,
          path: 'care-ambassador',
        );

  static const String name = 'CareGiversRoute';
}

/// generated route for
/// [_i7.UserManagementPage]
class UserManagementRoute extends _i14.PageRouteInfo<void> {
  const UserManagementRoute()
      : super(
          UserManagementRoute.name,
          path: 'user-management',
        );

  static const String name = 'UserManagementRoute';
}

/// generated route for
/// [_i8.CareGiverDetailPage]
class CareGiverDetailRoute extends _i14.PageRouteInfo<void> {
  const CareGiverDetailRoute()
      : super(
          CareGiverDetailRoute.name,
          path: 'care-ambassador-detail',
        );

  static const String name = 'CareGiverDetailRoute';
}

/// generated route for
/// [_i9.UserManagementDetailPage]
class UserManagementDetailRoute extends _i14.PageRouteInfo<void> {
  const UserManagementDetailRoute()
      : super(
          UserManagementDetailRoute.name,
          path: 'user-management-detail',
        );

  static const String name = 'UserManagementDetailRoute';
}

/// generated route for
/// [_i10.TransactionManagementPage]
class TransactionManagementRoute extends _i14.PageRouteInfo<void> {
  const TransactionManagementRoute()
      : super(
          TransactionManagementRoute.name,
          path: 'transaction-management',
        );

  static const String name = 'TransactionManagementRoute';
}

/// generated route for
/// [_i11.CareGiverProfilePage]
class CareGiverProfileRoute extends _i14.PageRouteInfo<void> {
  const CareGiverProfileRoute()
      : super(
          CareGiverProfileRoute.name,
          path: 'care-ambassador-profile',
        );

  static const String name = 'CareGiverProfileRoute';
}

/// generated route for
/// [_i12.CaregiverCreationPage]
class CaregiverCreationRoute extends _i14.PageRouteInfo<void> {
  const CaregiverCreationRoute()
      : super(
          CaregiverCreationRoute.name,
          path: 'caregiver-creation',
        );

  static const String name = 'CaregiverCreationRoute';
}

/// generated route for
/// [_i13.OnboardingPage]
class OnboardingRoute extends _i14.PageRouteInfo<void> {
  const OnboardingRoute()
      : super(
          OnboardingRoute.name,
          path: 'caregiver-on_boarding',
        );

  static const String name = 'OnboardingRoute';
}
