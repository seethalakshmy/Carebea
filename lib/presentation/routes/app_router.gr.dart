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
import 'package:admin_580_tech/presentation/admin_creation/admin_creation_page.dart'
    as _i17;
import 'package:admin_580_tech/presentation/admins/admins_page.dart' as _i18;
import 'package:admin_580_tech/presentation/caregiver_creation/caregiver_creation_page.dart'
    as _i12;
import 'package:admin_580_tech/presentation/caregiver_detail/caregiver_detail_page.dart'
    as _i8;
import 'package:admin_580_tech/presentation/caregiver_profile/caregiver_profile_page.dart'
    as _i11;
import 'package:admin_580_tech/presentation/caregiver_verification/caregiver_verification_page.dart'
    as _i14;
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
import 'package:admin_580_tech/presentation/role_creation/role_creation_page.dart'
    as _i16;
import 'package:admin_580_tech/presentation/roles/role_page.dart' as _i15;
import 'package:admin_580_tech/presentation/side_menu/side_menu_page.dart'
    as _i4;
import 'package:admin_580_tech/presentation/transaction_management/transaction_management_page.dart'
    as _i10;
import 'package:admin_580_tech/presentation/user_management/user_management_page.dart'
    as _i7;
import 'package:admin_580_tech/presentation/user_mangement_detail/user_managemet_detail_page.dart'
    as _i9;
import 'package:auto_route/auto_route.dart' as _i19;
import 'package:flutter/material.dart' as _i20;

class AppRouter extends _i19.RootStackRouter {
  AppRouter([_i20.GlobalKey<_i20.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i19.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return _i19.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.LoginPage(),
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i19.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.ForgotPasswordPage(),
        maintainState: false,
      );
    },
    ResetPasswordRoute.name: (routeData) {
      return _i19.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.ResetPasswordPage(),
        maintainState: false,
      );
    },
    SideMenuRoute.name: (routeData) {
      return _i19.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i4.SideMenuPage(),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i19.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i5.DashboardPage(),
      );
    },
    CareGiversRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<CareGiversRouteArgs>(
          orElse: () => CareGiversRouteArgs(
                page: queryParams.optInt('page'),
                tab: queryParams.optInt('tab'),
              ));
      return _i19.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i6.CareGiversPage(
          key: args.key,
          page: args.page,
          tab: args.tab,
        ),
      );
    },
    UserManagementRoute.name: (routeData) {
      return _i19.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i7.UserManagementPage(),
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
      return _i19.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i8.CareGiverDetailPage(
          key: args.key,
          id: args.id,
          page: args.page,
          tab: args.tab,
        ),
      );
    },
    UserManagementDetailRoute.name: (routeData) {
      return _i19.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i9.UserManagementDetailPage(),
      );
    },
    TransactionManagementRoute.name: (routeData) {
      return _i19.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i10.TransactionManagementPage(),
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
      return _i19.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i11.CareGiverProfilePage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    CaregiverCreationRoute.name: (routeData) {
      return _i19.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i12.CaregiverCreationPage(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return _i19.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i13.OnboardingPage(),
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
      return _i19.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i14.CaregiverVerificationPage(
          key: args.key,
          id: args.id,
          page: args.page,
          tab: args.tab,
        ),
        maintainState: false,
      );
    },
    RolesRoute.name: (routeData) {
      return _i19.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i15.RolesPage(),
        maintainState: false,
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
      return _i19.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i16.RoleCreationPage(
          key: args.key,
          isView: args.isView,
          isEdit: args.isEdit,
          roleId: args.roleId,
        ),
        maintainState: false,
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
      return _i19.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i17.AdminCreationPage(
          key: args.key,
          isView: args.isView,
          isEdit: args.isEdit,
          id: args.id,
        ),
        maintainState: false,
      );
    },
    AdminsRoute.name: (routeData) {
      return _i19.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i18.AdminsPage(),
        maintainState: false,
      );
    },
  };

  @override
  List<_i19.RouteConfig> get routes => [
        _i19.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: 'admin/login',
          fullMatch: true,
        ),
        _i19.RouteConfig(
          LoginRoute.name,
          path: 'admin/login',
        ),
        _i19.RouteConfig(
          ForgotPasswordRoute.name,
          path: 'admin/forgot-password',
        ),
        _i19.RouteConfig(
          ResetPasswordRoute.name,
          path: 'admin/reset-password',
        ),
        _i19.RouteConfig(
          SideMenuRoute.name,
          path: 'admin/main',
          children: [
            _i19.RouteConfig(
              '#redirect',
              path: '',
              parent: SideMenuRoute.name,
              redirectTo: 'dashboard',
              fullMatch: true,
            ),
            _i19.RouteConfig(
              DashboardRoute.name,
              path: 'dashboard',
              parent: SideMenuRoute.name,
            ),
            _i19.RouteConfig(
              CareGiversRoute.name,
              path: 'care-ambassador',
              parent: SideMenuRoute.name,
            ),
            _i19.RouteConfig(
              UserManagementRoute.name,
              path: 'user-management',
              parent: SideMenuRoute.name,
            ),
            _i19.RouteConfig(
              CareGiverDetailRoute.name,
              path: 'care-ambassador-detail',
              parent: SideMenuRoute.name,
            ),
            _i19.RouteConfig(
              UserManagementDetailRoute.name,
              path: 'user-management-detail',
              parent: SideMenuRoute.name,
            ),
            _i19.RouteConfig(
              TransactionManagementRoute.name,
              path: 'transaction-management',
              parent: SideMenuRoute.name,
            ),
            _i19.RouteConfig(
              CareGiverProfileRoute.name,
              path: 'care-ambassador-profile',
              parent: SideMenuRoute.name,
            ),
            _i19.RouteConfig(
              CaregiverCreationRoute.name,
              path: 'care-ambassador-creation',
              parent: SideMenuRoute.name,
            ),
            _i19.RouteConfig(
              OnboardingRoute.name,
              path: 'caregiver-on_boarding',
              parent: SideMenuRoute.name,
            ),
            _i19.RouteConfig(
              CaregiverVerificationRoute.name,
              path: 'care-ambassador-verification',
              parent: SideMenuRoute.name,
            ),
            _i19.RouteConfig(
              RolesRoute.name,
              path: 'role-management',
              parent: SideMenuRoute.name,
            ),
            _i19.RouteConfig(
              RoleCreationRoute.name,
              path: 'role-manage',
              parent: SideMenuRoute.name,
            ),
            _i19.RouteConfig(
              AdminCreationRoute.name,
              path: 'admin-manage',
              parent: SideMenuRoute.name,
            ),
            _i19.RouteConfig(
              AdminsRoute.name,
              path: 'admin-management',
              parent: SideMenuRoute.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i19.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: 'admin/login',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i2.ForgotPasswordPage]
class ForgotPasswordRoute extends _i19.PageRouteInfo<void> {
  const ForgotPasswordRoute()
      : super(
          ForgotPasswordRoute.name,
          path: 'admin/forgot-password',
        );

  static const String name = 'ForgotPasswordRoute';
}

/// generated route for
/// [_i3.ResetPasswordPage]
class ResetPasswordRoute extends _i19.PageRouteInfo<void> {
  const ResetPasswordRoute()
      : super(
          ResetPasswordRoute.name,
          path: 'admin/reset-password',
        );

  static const String name = 'ResetPasswordRoute';
}

/// generated route for
/// [_i4.SideMenuPage]
class SideMenuRoute extends _i19.PageRouteInfo<void> {
  const SideMenuRoute({List<_i19.PageRouteInfo>? children})
      : super(
          SideMenuRoute.name,
          path: 'admin/main',
          initialChildren: children,
        );

  static const String name = 'SideMenuRoute';
}

/// generated route for
/// [_i5.DashboardPage]
class DashboardRoute extends _i19.PageRouteInfo<void> {
  const DashboardRoute()
      : super(
          DashboardRoute.name,
          path: 'dashboard',
        );

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i6.CareGiversPage]
class CareGiversRoute extends _i19.PageRouteInfo<CareGiversRouteArgs> {
  CareGiversRoute({
    _i20.Key? key,
    int? page,
    int? tab,
  }) : super(
          CareGiversRoute.name,
          path: 'care-ambassador',
          args: CareGiversRouteArgs(
            key: key,
            page: page,
            tab: tab,
          ),
          rawQueryParams: {
            'page': page,
            'tab': tab,
          },
        );

  static const String name = 'CareGiversRoute';
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
/// [_i7.UserManagementPage]
class UserManagementRoute extends _i19.PageRouteInfo<void> {
  const UserManagementRoute()
      : super(
          UserManagementRoute.name,
          path: 'user-management',
        );

  static const String name = 'UserManagementRoute';
}

/// generated route for
/// [_i8.CareGiverDetailPage]
class CareGiverDetailRoute
    extends _i19.PageRouteInfo<CareGiverDetailRouteArgs> {
  CareGiverDetailRoute({
    _i20.Key? key,
    String? id = '',
    int? page,
    int? tab,
  }) : super(
          CareGiverDetailRoute.name,
          path: 'care-ambassador-detail',
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
        );

  static const String name = 'CareGiverDetailRoute';
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
/// [_i9.UserManagementDetailPage]
class UserManagementDetailRoute extends _i19.PageRouteInfo<void> {
  const UserManagementDetailRoute()
      : super(
          UserManagementDetailRoute.name,
          path: 'user-management-detail',
        );

  static const String name = 'UserManagementDetailRoute';
}

/// generated route for
/// [_i10.TransactionManagementPage]
class TransactionManagementRoute extends _i19.PageRouteInfo<void> {
  const TransactionManagementRoute()
      : super(
          TransactionManagementRoute.name,
          path: 'transaction-management',
        );

  static const String name = 'TransactionManagementRoute';
}

/// generated route for
/// [_i11.CareGiverProfilePage]
class CareGiverProfileRoute
    extends _i19.PageRouteInfo<CareGiverProfileRouteArgs> {
  CareGiverProfileRoute({
    _i20.Key? key,
    String? id = '',
  }) : super(
          CareGiverProfileRoute.name,
          path: 'care-ambassador-profile',
          args: CareGiverProfileRouteArgs(
            key: key,
            id: id,
          ),
          rawQueryParams: {'id': id},
        );

  static const String name = 'CareGiverProfileRoute';
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
/// [_i12.CaregiverCreationPage]
class CaregiverCreationRoute extends _i19.PageRouteInfo<void> {
  const CaregiverCreationRoute()
      : super(
          CaregiverCreationRoute.name,
          path: 'care-ambassador-creation',
        );

  static const String name = 'CaregiverCreationRoute';
}

/// generated route for
/// [_i13.OnboardingPage]
class OnboardingRoute extends _i19.PageRouteInfo<void> {
  const OnboardingRoute()
      : super(
          OnboardingRoute.name,
          path: 'caregiver-on_boarding',
        );

  static const String name = 'OnboardingRoute';
}

/// generated route for
/// [_i14.CaregiverVerificationPage]
class CaregiverVerificationRoute
    extends _i19.PageRouteInfo<CaregiverVerificationRouteArgs> {
  CaregiverVerificationRoute({
    _i20.Key? key,
    String? id = '',
    int? page,
    int? tab,
  }) : super(
          CaregiverVerificationRoute.name,
          path: 'care-ambassador-verification',
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
        );

  static const String name = 'CaregiverVerificationRoute';
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
/// [_i15.RolesPage]
class RolesRoute extends _i19.PageRouteInfo<void> {
  const RolesRoute()
      : super(
          RolesRoute.name,
          path: 'role-management',
        );

  static const String name = 'RolesRoute';
}

/// generated route for
/// [_i16.RoleCreationPage]
class RoleCreationRoute extends _i19.PageRouteInfo<RoleCreationRouteArgs> {
  RoleCreationRoute({
    _i20.Key? key,
    String? isView,
    String? isEdit,
    String? roleId,
  }) : super(
          RoleCreationRoute.name,
          path: 'role-manage',
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
        );

  static const String name = 'RoleCreationRoute';
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
/// [_i17.AdminCreationPage]
class AdminCreationRoute extends _i19.PageRouteInfo<AdminCreationRouteArgs> {
  AdminCreationRoute({
    _i20.Key? key,
    String? isView,
    String? isEdit,
    String? id,
  }) : super(
          AdminCreationRoute.name,
          path: 'admin-manage',
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
        );

  static const String name = 'AdminCreationRoute';
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
/// [_i18.AdminsPage]
class AdminsRoute extends _i19.PageRouteInfo<void> {
  const AdminsRoute()
      : super(
          AdminsRoute.name,
          path: 'admin-management',
        );

  static const String name = 'AdminsRoute';
}
