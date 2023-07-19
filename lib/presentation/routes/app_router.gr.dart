// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:admin_580_tech/presentation/caregiver_creation/caregiver_creation_page.dart'
    as _i2;
import 'package:admin_580_tech/presentation/caregiver_detail/caregiver_detail_page.dart'
    as _i3;
import 'package:admin_580_tech/presentation/caregiver_profile/caregiver_profile_page.dart'
    as _i4;
import 'package:admin_580_tech/presentation/caregiver_verification/caregiver_verification_page.dart'
    as _i5;
import 'package:admin_580_tech/presentation/caregivers/caregivers_page.dart'
    as _i1;
import 'package:admin_580_tech/presentation/dashboard/dashboard_page.dart'
    as _i6;
import 'package:admin_580_tech/presentation/forgot_password/forgot_password_page.dart'
    as _i7;
import 'package:admin_580_tech/presentation/login/login_page.dart' as _i8;
import 'package:admin_580_tech/presentation/on_boarding/on_boarding_page.dart'
    as _i9;
import 'package:admin_580_tech/presentation/reset_password/reset_password_page.dart'
    as _i10;
import 'package:admin_580_tech/presentation/side_menu/side_menu_page.dart'
    as _i11;
import 'package:admin_580_tech/presentation/transaction_management/transaction_management_page.dart'
    as _i12;
import 'package:admin_580_tech/presentation/user_management/user_management_page.dart'
    as _i13;
import 'package:admin_580_tech/presentation/user_mangement_detail/user_managemet_detail_page.dart'
    as _i14;
import 'package:auto_route/auto_route.dart' as _i15;
import 'package:flutter/material.dart' as _i16;

abstract class $AppRouter extends _i15.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i15.PageFactory> pagesMap = {
    CareGiversRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<CareGiversRouteArgs>(
          orElse: () => CareGiversRouteArgs(page: queryParams.optInt('page')));
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.CareGiversPage(
          key: args.key,
          page: args.page,
        ),
      );
    },
    CaregiverCreationRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CaregiverCreationPage(),
      );
    },
    CareGiverDetailRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<CareGiverDetailRouteArgs>(
          orElse: () => CareGiverDetailRouteArgs(
                  id: queryParams.optString(
                'id',
                '',
              )));
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.CareGiverDetailPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    CareGiverProfileRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<CareGiverProfileRouteArgs>(
          orElse: () => CareGiverProfileRouteArgs(
                  id: queryParams.optString(
                'id',
                '',
              )));
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.CareGiverProfilePage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    CaregiverVerificationRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<CaregiverVerificationRouteArgs>(
          orElse: () => CaregiverVerificationRouteArgs(
                id: queryParams.optString(
                  'id',
                  '',
                ),
                page: queryParams.optInt('page'),
              ));
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.CaregiverVerificationPage(
          key: args.key,
          id: args.id,
          page: args.page,
        ),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.DashboardPage(),
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.ForgotPasswordPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.LoginPage(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.OnboardingPage(),
      );
    },
    ResetPasswordRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.ResetPasswordPage(),
      );
    },
    SideMenuRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.SideMenuPage(),
      );
    },
    TransactionManagementRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.TransactionManagementPage(),
      );
    },
    UserManagementRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.UserManagementPage(),
      );
    },
    UserManagementDetailRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.UserManagementDetailPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.CareGiversPage]
class CareGiversRoute extends _i15.PageRouteInfo<CareGiversRouteArgs> {
  CareGiversRoute({
    _i16.Key? key,
    int? page,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          CareGiversRoute.name,
          args: CareGiversRouteArgs(
            key: key,
            page: page,
          ),
          rawQueryParams: {'page': page},
          initialChildren: children,
        );

  static const String name = 'CareGiversRoute';

  static const _i15.PageInfo<CareGiversRouteArgs> page =
      _i15.PageInfo<CareGiversRouteArgs>(name);
}

class CareGiversRouteArgs {
  const CareGiversRouteArgs({
    this.key,
    this.page,
  });

  final _i16.Key? key;

  final int? page;

  @override
  String toString() {
    return 'CareGiversRouteArgs{key: $key, page: $page}';
  }
}

/// generated route for
/// [_i2.CaregiverCreationPage]
class CaregiverCreationRoute extends _i15.PageRouteInfo<void> {
  const CaregiverCreationRoute({List<_i15.PageRouteInfo>? children})
      : super(
          CaregiverCreationRoute.name,
          initialChildren: children,
        );

  static const String name = 'CaregiverCreationRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i3.CareGiverDetailPage]
class CareGiverDetailRoute
    extends _i15.PageRouteInfo<CareGiverDetailRouteArgs> {
  CareGiverDetailRoute({
    _i16.Key? key,
    String? id = '',
    List<_i15.PageRouteInfo>? children,
  }) : super(
          CareGiverDetailRoute.name,
          args: CareGiverDetailRouteArgs(
            key: key,
            id: id,
          ),
          rawQueryParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'CareGiverDetailRoute';

  static const _i15.PageInfo<CareGiverDetailRouteArgs> page =
      _i15.PageInfo<CareGiverDetailRouteArgs>(name);
}

class CareGiverDetailRouteArgs {
  const CareGiverDetailRouteArgs({
    this.key,
    this.id = '',
  });

  final _i16.Key? key;

  final String? id;

  @override
  String toString() {
    return 'CareGiverDetailRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i4.CareGiverProfilePage]
class CareGiverProfileRoute
    extends _i15.PageRouteInfo<CareGiverProfileRouteArgs> {
  CareGiverProfileRoute({
    _i16.Key? key,
    String? id = '',
    List<_i15.PageRouteInfo>? children,
  }) : super(
          CareGiverProfileRoute.name,
          args: CareGiverProfileRouteArgs(
            key: key,
            id: id,
          ),
          rawQueryParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'CareGiverProfileRoute';

  static const _i15.PageInfo<CareGiverProfileRouteArgs> page =
      _i15.PageInfo<CareGiverProfileRouteArgs>(name);
}

class CareGiverProfileRouteArgs {
  const CareGiverProfileRouteArgs({
    this.key,
    this.id = '',
  });

  final _i16.Key? key;

  final String? id;

  @override
  String toString() {
    return 'CareGiverProfileRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i5.CaregiverVerificationPage]
class CaregiverVerificationRoute
    extends _i15.PageRouteInfo<CaregiverVerificationRouteArgs> {
  CaregiverVerificationRoute({
    _i16.Key? key,
    String? id = '',
    int? page,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          CaregiverVerificationRoute.name,
          args: CaregiverVerificationRouteArgs(
            key: key,
            id: id,
            page: page,
          ),
          rawQueryParams: {
            'id': id,
            'page': page,
          },
          initialChildren: children,
        );

  static const String name = 'CaregiverVerificationRoute';

  static const _i15.PageInfo<CaregiverVerificationRouteArgs> page =
      _i15.PageInfo<CaregiverVerificationRouteArgs>(name);
}

class CaregiverVerificationRouteArgs {
  const CaregiverVerificationRouteArgs({
    this.key,
    this.id = '',
    this.page,
  });

  final _i16.Key? key;

  final String? id;

  final int? page;

  @override
  String toString() {
    return 'CaregiverVerificationRouteArgs{key: $key, id: $id, page: $page}';
  }
}

/// generated route for
/// [_i6.DashboardPage]
class DashboardRoute extends _i15.PageRouteInfo<void> {
  const DashboardRoute({List<_i15.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i7.ForgotPasswordPage]
class ForgotPasswordRoute extends _i15.PageRouteInfo<void> {
  const ForgotPasswordRoute({List<_i15.PageRouteInfo>? children})
      : super(
          ForgotPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i8.LoginPage]
class LoginRoute extends _i15.PageRouteInfo<void> {
  const LoginRoute({List<_i15.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i9.OnboardingPage]
class OnboardingRoute extends _i15.PageRouteInfo<void> {
  const OnboardingRoute({List<_i15.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i10.ResetPasswordPage]
class ResetPasswordRoute extends _i15.PageRouteInfo<void> {
  const ResetPasswordRoute({List<_i15.PageRouteInfo>? children})
      : super(
          ResetPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ResetPasswordRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i11.SideMenuPage]
class SideMenuRoute extends _i15.PageRouteInfo<void> {
  const SideMenuRoute({List<_i15.PageRouteInfo>? children})
      : super(
          SideMenuRoute.name,
          initialChildren: children,
        );

  static const String name = 'SideMenuRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i12.TransactionManagementPage]
class TransactionManagementRoute extends _i15.PageRouteInfo<void> {
  const TransactionManagementRoute({List<_i15.PageRouteInfo>? children})
      : super(
          TransactionManagementRoute.name,
          initialChildren: children,
        );

  static const String name = 'TransactionManagementRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i13.UserManagementPage]
class UserManagementRoute extends _i15.PageRouteInfo<void> {
  const UserManagementRoute({List<_i15.PageRouteInfo>? children})
      : super(
          UserManagementRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserManagementRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i14.UserManagementDetailPage]
class UserManagementDetailRoute extends _i15.PageRouteInfo<void> {
  const UserManagementDetailRoute({List<_i15.PageRouteInfo>? children})
      : super(
          UserManagementDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserManagementDetailRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}
