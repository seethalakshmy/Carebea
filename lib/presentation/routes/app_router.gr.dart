// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:admin_580_tech/presentation/admin_creation/admin_creation_page.dart'
    as _i2;
import 'package:admin_580_tech/presentation/admins/admins_page.dart' as _i1;
import 'package:admin_580_tech/presentation/caregiver_creation/caregiver_creation_page.dart'
    as _i4;
import 'package:admin_580_tech/presentation/caregiver_detail/caregiver_detail_page.dart'
    as _i5;
import 'package:admin_580_tech/presentation/caregiver_profile/caregiver_profile_page.dart'
    as _i6;
import 'package:admin_580_tech/presentation/caregiver_verification/caregiver_verification_page.dart'
    as _i7;
import 'package:admin_580_tech/presentation/caregivers/caregivers_page.dart'
    as _i3;
import 'package:admin_580_tech/presentation/dashboard/dashboard_page.dart'
    as _i8;
import 'package:admin_580_tech/presentation/forgot_password/forgot_password_page.dart'
    as _i9;
import 'package:admin_580_tech/presentation/login/login_page.dart' as _i10;
import 'package:admin_580_tech/presentation/on_boarding/on_boarding_page.dart'
    as _i11;
import 'package:admin_580_tech/presentation/reset_password/reset_password_page.dart'
    as _i12;
import 'package:admin_580_tech/presentation/role_creation/role_creation_page.dart'
    as _i14;
import 'package:admin_580_tech/presentation/roles/role_page.dart' as _i13;
import 'package:admin_580_tech/presentation/side_menu/side_menu_page.dart'
    as _i15;
import 'package:admin_580_tech/presentation/transaction_management/transaction_management_page.dart'
    as _i16;
import 'package:admin_580_tech/presentation/user_management/user_management_page.dart'
    as _i17;
import 'package:admin_580_tech/presentation/user_mangement_detail/user_managemet_detail_page.dart'
    as _i18;
import 'package:auto_route/auto_route.dart' as _i19;
import 'package:flutter/material.dart' as _i20;

abstract class $AppRouter extends _i19.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i19.PageFactory> pagesMap = {
    AdminsRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AdminsPage(),
      );
    },
    AdminCreationRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<AdminCreationRouteArgs>(
          orElse: () => AdminCreationRouteArgs(
                isView: queryParams.optString('view'),
                isEdit: queryParams.optString('edit'),
                id: queryParams.optString('id'),
              ));
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.AdminCreationPage(
          key: args.key,
          isView: args.isView,
          isEdit: args.isEdit,
          id: args.id,
        ),
      );
    },
    CareGiversRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<CareGiversRouteArgs>(
          orElse: () => CareGiversRouteArgs(
                page: queryParams.optInt('page'),
                tab: queryParams.optInt('tab'),
              ));
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.CareGiversPage(
          key: args.key,
          page: args.page,
          tab: args.tab,
        ),
      );
    },
    CaregiverCreationRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.CaregiverCreationPage(),
      );
    },
    CareGiverDetailRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<CareGiverDetailRouteArgs>(
          orElse: () => CareGiverDetailRouteArgs(
                id: queryParams.optString(
                  'id',
                  '',
                ),
                page: queryParams.optInt('page'),
                tab: queryParams.optInt('tab'),
              ));
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.CareGiverDetailPage(
          key: args.key,
          id: args.id,
          page: args.page,
          tab: args.tab,
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
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.CareGiverProfilePage(
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
                tab: queryParams.optInt('tab'),
              ));
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.CaregiverVerificationPage(
          key: args.key,
          id: args.id,
          page: args.page,
          tab: args.tab,
        ),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.DashboardPage(),
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.ForgotPasswordPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.LoginPage(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.OnboardingPage(),
      );
    },
    ResetPasswordRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.ResetPasswordPage(),
      );
    },
    RolesRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.RolesPage(),
      );
    },
    RoleCreationRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<RoleCreationRouteArgs>(
          orElse: () => RoleCreationRouteArgs(
                isView: queryParams.optString('view'),
                isEdit: queryParams.optString('edit'),
                roleId: queryParams.optString('role_id'),
              ));
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.RoleCreationPage(
          key: args.key,
          isView: args.isView,
          isEdit: args.isEdit,
          roleId: args.roleId,
        ),
      );
    },
    SideMenuRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.SideMenuPage(),
      );
    },
    TransactionManagementRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.TransactionManagementPage(),
      );
    },
    UserManagementRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.UserManagementPage(),
      );
    },
    UserManagementDetailRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.UserManagementDetailPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AdminsPage]
class AdminsRoute extends _i19.PageRouteInfo<void> {
  const AdminsRoute({List<_i19.PageRouteInfo>? children})
      : super(
          AdminsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AdminsRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AdminCreationPage]
class AdminCreationRoute extends _i19.PageRouteInfo<AdminCreationRouteArgs> {
  AdminCreationRoute({
    _i20.Key? key,
    String? isView,
    String? isEdit,
    String? id,
    List<_i19.PageRouteInfo>? children,
  }) : super(
          AdminCreationRoute.name,
          args: AdminCreationRouteArgs(
            key: key,
            isView: isView,
            isEdit: isEdit,
            id: id,
          ),
          rawQueryParams: {
            'view': isView,
            'edit': isEdit,
            'id': id,
          },
          initialChildren: children,
        );

  static const String name = 'AdminCreationRoute';

  static const _i19.PageInfo<AdminCreationRouteArgs> page =
      _i19.PageInfo<AdminCreationRouteArgs>(name);
}

class AdminCreationRouteArgs {
  const AdminCreationRouteArgs({
    this.key,
    this.isView,
    this.isEdit,
    this.id,
  });

  final _i20.Key? key;

  final String? isView;

  final String? isEdit;

  final String? id;

  @override
  String toString() {
    return 'AdminCreationRouteArgs{key: $key, isView: $isView, isEdit: $isEdit, id: $id}';
  }
}

/// generated route for
/// [_i3.CareGiversPage]
class CareGiversRoute extends _i19.PageRouteInfo<CareGiversRouteArgs> {
  CareGiversRoute({
    _i20.Key? key,
    int? page,
    int? tab,
    List<_i19.PageRouteInfo>? children,
  }) : super(
          CareGiversRoute.name,
          args: CareGiversRouteArgs(
            key: key,
            page: page,
            tab: tab,
          ),
          rawQueryParams: {
            'page': page,
            'tab': tab,
          },
          initialChildren: children,
        );

  static const String name = 'CareGiversRoute';

  static const _i19.PageInfo<CareGiversRouteArgs> page =
      _i19.PageInfo<CareGiversRouteArgs>(name);
}

class CareGiversRouteArgs {
  const CareGiversRouteArgs({
    this.key,
    this.page,
    this.tab,
  });

  final _i20.Key? key;

  final int? page;

  final int? tab;

  @override
  String toString() {
    return 'CareGiversRouteArgs{key: $key, page: $page, tab: $tab}';
  }
}

/// generated route for
/// [_i4.CaregiverCreationPage]
class CaregiverCreationRoute extends _i19.PageRouteInfo<void> {
  const CaregiverCreationRoute({List<_i19.PageRouteInfo>? children})
      : super(
          CaregiverCreationRoute.name,
          initialChildren: children,
        );

  static const String name = 'CaregiverCreationRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i5.CareGiverDetailPage]
class CareGiverDetailRoute
    extends _i19.PageRouteInfo<CareGiverDetailRouteArgs> {
  CareGiverDetailRoute({
    _i20.Key? key,
    String? id = '',
    int? page,
    int? tab,
    List<_i19.PageRouteInfo>? children,
  }) : super(
          CareGiverDetailRoute.name,
          args: CareGiverDetailRouteArgs(
            key: key,
            id: id,
            page: page,
            tab: tab,
          ),
          rawQueryParams: {
            'id': id,
            'page': page,
            'tab': tab,
          },
          initialChildren: children,
        );

  static const String name = 'CareGiverDetailRoute';

  static const _i19.PageInfo<CareGiverDetailRouteArgs> page =
      _i19.PageInfo<CareGiverDetailRouteArgs>(name);
}

class CareGiverDetailRouteArgs {
  const CareGiverDetailRouteArgs({
    this.key,
    this.id = '',
    this.page,
    this.tab,
  });

  final _i20.Key? key;

  final String? id;

  final int? page;

  final int? tab;

  @override
  String toString() {
    return 'CareGiverDetailRouteArgs{key: $key, id: $id, page: $page, tab: $tab}';
  }
}

/// generated route for
/// [_i6.CareGiverProfilePage]
class CareGiverProfileRoute
    extends _i19.PageRouteInfo<CareGiverProfileRouteArgs> {
  CareGiverProfileRoute({
    _i20.Key? key,
    String? id = '',
    List<_i19.PageRouteInfo>? children,
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

  static const _i19.PageInfo<CareGiverProfileRouteArgs> page =
      _i19.PageInfo<CareGiverProfileRouteArgs>(name);
}

class CareGiverProfileRouteArgs {
  const CareGiverProfileRouteArgs({
    this.key,
    this.id = '',
  });

  final _i20.Key? key;

  final String? id;

  @override
  String toString() {
    return 'CareGiverProfileRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i7.CaregiverVerificationPage]
class CaregiverVerificationRoute
    extends _i19.PageRouteInfo<CaregiverVerificationRouteArgs> {
  CaregiverVerificationRoute({
    _i20.Key? key,
    String? id = '',
    int? page,
    int? tab,
    List<_i19.PageRouteInfo>? children,
  }) : super(
          CaregiverVerificationRoute.name,
          args: CaregiverVerificationRouteArgs(
            key: key,
            id: id,
            page: page,
            tab: tab,
          ),
          rawQueryParams: {
            'id': id,
            'page': page,
            'tab': tab,
          },
          initialChildren: children,
        );

  static const String name = 'CaregiverVerificationRoute';

  static const _i19.PageInfo<CaregiverVerificationRouteArgs> page =
      _i19.PageInfo<CaregiverVerificationRouteArgs>(name);
}

class CaregiverVerificationRouteArgs {
  const CaregiverVerificationRouteArgs({
    this.key,
    this.id = '',
    this.page,
    this.tab,
  });

  final _i20.Key? key;

  final String? id;

  final int? page;

  final int? tab;

  @override
  String toString() {
    return 'CaregiverVerificationRouteArgs{key: $key, id: $id, page: $page, tab: $tab}';
  }
}

/// generated route for
/// [_i8.DashboardPage]
class DashboardRoute extends _i19.PageRouteInfo<void> {
  const DashboardRoute({List<_i19.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i9.ForgotPasswordPage]
class ForgotPasswordRoute extends _i19.PageRouteInfo<void> {
  const ForgotPasswordRoute({List<_i19.PageRouteInfo>? children})
      : super(
          ForgotPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i10.LoginPage]
class LoginRoute extends _i19.PageRouteInfo<void> {
  const LoginRoute({List<_i19.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i11.OnboardingPage]
class OnboardingRoute extends _i19.PageRouteInfo<void> {
  const OnboardingRoute({List<_i19.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i12.ResetPasswordPage]
class ResetPasswordRoute extends _i19.PageRouteInfo<void> {
  const ResetPasswordRoute({List<_i19.PageRouteInfo>? children})
      : super(
          ResetPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ResetPasswordRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i13.RolesPage]
class RolesRoute extends _i19.PageRouteInfo<void> {
  const RolesRoute({List<_i19.PageRouteInfo>? children})
      : super(
          RolesRoute.name,
          initialChildren: children,
        );

  static const String name = 'RolesRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i14.RoleCreationPage]
class RoleCreationRoute extends _i19.PageRouteInfo<RoleCreationRouteArgs> {
  RoleCreationRoute({
    _i20.Key? key,
    String? isView,
    String? isEdit,
    String? roleId,
    List<_i19.PageRouteInfo>? children,
  }) : super(
          RoleCreationRoute.name,
          args: RoleCreationRouteArgs(
            key: key,
            isView: isView,
            isEdit: isEdit,
            roleId: roleId,
          ),
          rawQueryParams: {
            'view': isView,
            'edit': isEdit,
            'role_id': roleId,
          },
          initialChildren: children,
        );

  static const String name = 'RoleCreationRoute';

  static const _i19.PageInfo<RoleCreationRouteArgs> page =
      _i19.PageInfo<RoleCreationRouteArgs>(name);
}

class RoleCreationRouteArgs {
  const RoleCreationRouteArgs({
    this.key,
    this.isView,
    this.isEdit,
    this.roleId,
  });

  final _i20.Key? key;

  final String? isView;

  final String? isEdit;

  final String? roleId;

  @override
  String toString() {
    return 'RoleCreationRouteArgs{key: $key, isView: $isView, isEdit: $isEdit, roleId: $roleId}';
  }
}

/// generated route for
/// [_i15.SideMenuPage]
class SideMenuRoute extends _i19.PageRouteInfo<void> {
  const SideMenuRoute({List<_i19.PageRouteInfo>? children})
      : super(
          SideMenuRoute.name,
          initialChildren: children,
        );

  static const String name = 'SideMenuRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i16.TransactionManagementPage]
class TransactionManagementRoute extends _i19.PageRouteInfo<void> {
  const TransactionManagementRoute({List<_i19.PageRouteInfo>? children})
      : super(
          TransactionManagementRoute.name,
          initialChildren: children,
        );

  static const String name = 'TransactionManagementRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i17.UserManagementPage]
class UserManagementRoute extends _i19.PageRouteInfo<void> {
  const UserManagementRoute({List<_i19.PageRouteInfo>? children})
      : super(
          UserManagementRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserManagementRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i18.UserManagementDetailPage]
class UserManagementDetailRoute extends _i19.PageRouteInfo<void> {
  const UserManagementDetailRoute({List<_i19.PageRouteInfo>? children})
      : super(
          UserManagementDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserManagementDetailRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}
