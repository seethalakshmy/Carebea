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
import 'package:admin_580_tech/presentation/care_ambassador_analytics/care_ambassador_analysis.dart'
    as _i23;
import 'package:admin_580_tech/presentation/care_ambassador_registeration/care_ambassador_registration.dart'
    as _i25;
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
import 'package:admin_580_tech/presentation/client_analytics/client_analytics_page.dart'
    as _i22;
import 'package:admin_580_tech/presentation/client_subProfile_details/client_subProfile_details_view.dart'
    as _i29;
import 'package:admin_580_tech/presentation/complaint_details/support_tickets_detail_page.dart'
    as _i31;
import 'package:admin_580_tech/presentation/complaints/help_and_support_page.dart'
    as _i30;
import 'package:admin_580_tech/presentation/dashboard/dashboard_page.dart'
    as _i8;
import 'package:admin_580_tech/presentation/faq/faq_screen.dart' as _i9;
import 'package:admin_580_tech/presentation/faq_creation/faq_creation_screen.dart'
    as _i10;
import 'package:admin_580_tech/presentation/forgot_password/forgot_password_page.dart'
    as _i11;
import 'package:admin_580_tech/presentation/login/login_page.dart' as _i12;
import 'package:admin_580_tech/presentation/mobile_otp_verification/mobile_otp_verification_page.dart'
    as _i28;
import 'package:admin_580_tech/presentation/on_boarding/modules/email_otp_varification/otp_varification_view.dart'
    as _i27;
import 'package:admin_580_tech/presentation/on_boarding/on_boarding_page.dart'
    as _i13;
import 'package:admin_580_tech/presentation/region_analytics/region_analytics_page.dart'
    as _i24;
import 'package:admin_580_tech/presentation/reset_password/reset_password_page.dart'
    as _i14;
import 'package:admin_580_tech/presentation/role_creation/role_creation_page.dart'
    as _i16;
import 'package:admin_580_tech/presentation/roles/role_page.dart' as _i15;
import 'package:admin_580_tech/presentation/service_request_management/service_request_management_page.dart'
    as _i17;
import 'package:admin_580_tech/presentation/side_menu/side_menu_page.dart'
    as _i18;
import 'package:admin_580_tech/presentation/signup/sign_up.dart' as _i26;
import 'package:admin_580_tech/presentation/transaction_management/transaction_management_page.dart'
    as _i19;
import 'package:admin_580_tech/presentation/user_management/user_management_page.dart'
    as _i20;
import 'package:admin_580_tech/presentation/user_mangement_detail/user_managemet_detail_page.dart'
    as _i21;
import 'package:auto_route/auto_route.dart' as _i32;
import 'package:flutter/material.dart' as _i33;

abstract class $AppRouter extends _i32.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i32.PageFactory> pagesMap = {
    AdminsRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
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
      return _i32.AutoRoutePage<dynamic>(
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
          orElse: () => CareGiversRouteArgs(tab: queryParams.optInt('tab')));
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.CareGiversPage(
          key: args.key,
          tab: args.tab,
        ),
      );
    },
    CaregiverCreationRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.CaregiverCreationPage(),
      );
    },
    CareGiverDetailRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<CareGiverDetailRouteArgs>(
          orElse: () =>
              CareGiverDetailRouteArgs(id: queryParams.optString('id')));
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.CareGiverDetailPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    CareGiverProfileRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<CareGiverProfileRouteArgs>(
          orElse: () =>
              CareGiverProfileRouteArgs(id: queryParams.optString('id')));
      return _i32.AutoRoutePage<dynamic>(
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
          orElse: () =>
              CaregiverVerificationRouteArgs(id: queryParams.optString('id')));
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.CaregiverVerificationPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.DashboardPage(),
      );
    },
    FaqRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.FaqPage(),
      );
    },
    FaqCreationRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<FaqCreationRouteArgs>(
          orElse: () => FaqCreationRouteArgs(
                isView: queryParams.optString('view'),
                isEdit: queryParams.optString('edit'),
                id: queryParams.optString('id'),
              ));
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.FaqCreationPage(
          key: args.key,
          isView: args.isView,
          isEdit: args.isEdit,
          id: args.id,
        ),
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.ForgotPasswordPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.LoginPage(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.OnboardingPage(),
      );
    },
    ResetPasswordRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.ResetPasswordPage(),
      );
    },
    RolesRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.RolesPage(),
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
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.RoleCreationPage(
          key: args.key,
          isView: args.isView,
          isEdit: args.isEdit,
          roleId: args.roleId,
        ),
      );
    },
    ServiceRequestManagementRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.ServiceRequestManagementPage(),
      );
    },
    SideMenuRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.SideMenuPage(),
      );
    },
    TransactionManagementRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i19.TransactionManagementPage(),
      );
    },
    UserManagementRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i20.UserManagementPage(),
      );
    },
    UserManagementDetailRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<UserManagementDetailRouteArgs>(
          orElse: () =>
              UserManagementDetailRouteArgs(id: queryParams.optString('id')));
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i21.UserManagementDetailPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    ClientAnalyticsRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i22.ClientAnalyticsPage(),
      );
    },
    CareAmbassadorAnalysisRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i23.CareAmbassadorAnalysisPage(),
      );
    },
    RegionAnalyticsRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i24.RegionAnalyticsPage(),
      );
    },
    CareAmbassadorRegistrationRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i25.CareAmbassadorRegistrationPage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i26.SignUpPage(),
      );
    },
    EmailOtpVerificationRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i27.EmailOtpVerificationPage(),
      );
    },
    MobileOtpVerificationRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i28.MobileOtpVerificationPage(),
      );
    },
    ClientSubProfileDetailsRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<ClientSubProfileDetailsRouteArgs>(
          orElse: () => ClientSubProfileDetailsRouteArgs(
              id: queryParams.optString('id')));
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i29.ClientSubProfileDetailsPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    HelpAndSupportRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i30.HelpAndSupportPage(),
      );
    },
    SupportTicketsDetailRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<SupportTicketsDetailRouteArgs>(
          orElse: () => SupportTicketsDetailRouteArgs(
              complaintId: queryParams.optString('complaint_id')));
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i31.SupportTicketsDetailPage(
          key: args.key,
          complaintId: args.complaintId,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.AdminsPage]
class AdminsRoute extends _i32.PageRouteInfo<void> {
  const AdminsRoute({List<_i32.PageRouteInfo>? children})
      : super(
          AdminsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AdminsRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AdminCreationPage]
class AdminCreationRoute extends _i32.PageRouteInfo<AdminCreationRouteArgs> {
  AdminCreationRoute({
    _i33.Key? key,
    String? isView,
    String? isEdit,
    String? id,
    List<_i32.PageRouteInfo>? children,
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

  static const _i32.PageInfo<AdminCreationRouteArgs> page =
      _i32.PageInfo<AdminCreationRouteArgs>(name);
}

class AdminCreationRouteArgs {
  const AdminCreationRouteArgs({
    this.key,
    this.isView,
    this.isEdit,
    this.id,
  });

  final _i33.Key? key;

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
class CareGiversRoute extends _i32.PageRouteInfo<CareGiversRouteArgs> {
  CareGiversRoute({
    _i33.Key? key,
    int? tab,
    List<_i32.PageRouteInfo>? children,
  }) : super(
          CareGiversRoute.name,
          args: CareGiversRouteArgs(
            key: key,
            tab: tab,
          ),
          rawQueryParams: {'tab': tab},
          initialChildren: children,
        );

  static const String name = 'CareGiversRoute';

  static const _i32.PageInfo<CareGiversRouteArgs> page =
      _i32.PageInfo<CareGiversRouteArgs>(name);
}

class CareGiversRouteArgs {
  const CareGiversRouteArgs({
    this.key,
    this.tab,
  });

  final _i33.Key? key;

  final int? tab;

  @override
  String toString() {
    return 'CareGiversRouteArgs{key: $key, tab: $tab}';
  }
}

/// generated route for
/// [_i4.CaregiverCreationPage]
class CaregiverCreationRoute extends _i32.PageRouteInfo<void> {
  const CaregiverCreationRoute({List<_i32.PageRouteInfo>? children})
      : super(
          CaregiverCreationRoute.name,
          initialChildren: children,
        );

  static const String name = 'CaregiverCreationRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i5.CareGiverDetailPage]
class CareGiverDetailRoute
    extends _i32.PageRouteInfo<CareGiverDetailRouteArgs> {
  CareGiverDetailRoute({
    _i33.Key? key,
    String? id,
    List<_i32.PageRouteInfo>? children,
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

  static const _i32.PageInfo<CareGiverDetailRouteArgs> page =
      _i32.PageInfo<CareGiverDetailRouteArgs>(name);
}

class CareGiverDetailRouteArgs {
  const CareGiverDetailRouteArgs({
    this.key,
    this.id,
  });

  final _i33.Key? key;

  final String? id;

  @override
  String toString() {
    return 'CareGiverDetailRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i6.CareGiverProfilePage]
class CareGiverProfileRoute
    extends _i32.PageRouteInfo<CareGiverProfileRouteArgs> {
  CareGiverProfileRoute({
    _i33.Key? key,
    String? id,
    List<_i32.PageRouteInfo>? children,
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

  static const _i32.PageInfo<CareGiverProfileRouteArgs> page =
      _i32.PageInfo<CareGiverProfileRouteArgs>(name);
}

class CareGiverProfileRouteArgs {
  const CareGiverProfileRouteArgs({
    this.key,
    this.id,
  });

  final _i33.Key? key;

  final String? id;

  @override
  String toString() {
    return 'CareGiverProfileRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i7.CaregiverVerificationPage]
class CaregiverVerificationRoute
    extends _i32.PageRouteInfo<CaregiverVerificationRouteArgs> {
  CaregiverVerificationRoute({
    _i33.Key? key,
    String? id,
    List<_i32.PageRouteInfo>? children,
  }) : super(
          CaregiverVerificationRoute.name,
          args: CaregiverVerificationRouteArgs(
            key: key,
            id: id,
          ),
          rawQueryParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'CaregiverVerificationRoute';

  static const _i32.PageInfo<CaregiverVerificationRouteArgs> page =
      _i32.PageInfo<CaregiverVerificationRouteArgs>(name);
}

class CaregiverVerificationRouteArgs {
  const CaregiverVerificationRouteArgs({
    this.key,
    this.id,
  });

  final _i33.Key? key;

  final String? id;

  @override
  String toString() {
    return 'CaregiverVerificationRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i8.DashboardPage]
class DashboardRoute extends _i32.PageRouteInfo<void> {
  const DashboardRoute({List<_i32.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i9.FaqPage]
class FaqRoute extends _i32.PageRouteInfo<void> {
  const FaqRoute({List<_i32.PageRouteInfo>? children})
      : super(
          FaqRoute.name,
          initialChildren: children,
        );

  static const String name = 'FaqRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i10.FaqCreationPage]
class FaqCreationRoute extends _i32.PageRouteInfo<FaqCreationRouteArgs> {
  FaqCreationRoute({
    _i33.Key? key,
    String? isView,
    String? isEdit,
    String? id,
    List<_i32.PageRouteInfo>? children,
  }) : super(
          FaqCreationRoute.name,
          args: FaqCreationRouteArgs(
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

  static const String name = 'FaqCreationRoute';

  static const _i32.PageInfo<FaqCreationRouteArgs> page =
      _i32.PageInfo<FaqCreationRouteArgs>(name);
}

class FaqCreationRouteArgs {
  const FaqCreationRouteArgs({
    this.key,
    this.isView,
    this.isEdit,
    this.id,
  });

  final _i33.Key? key;

  final String? isView;

  final String? isEdit;

  final String? id;

  @override
  String toString() {
    return 'FaqCreationRouteArgs{key: $key, isView: $isView, isEdit: $isEdit, id: $id}';
  }
}

/// generated route for
/// [_i11.ForgotPasswordPage]
class ForgotPasswordRoute extends _i32.PageRouteInfo<void> {
  const ForgotPasswordRoute({List<_i32.PageRouteInfo>? children})
      : super(
          ForgotPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i12.LoginPage]
class LoginRoute extends _i32.PageRouteInfo<void> {
  const LoginRoute({List<_i32.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i13.OnboardingPage]
class OnboardingRoute extends _i32.PageRouteInfo<void> {
  const OnboardingRoute({List<_i32.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i14.ResetPasswordPage]
class ResetPasswordRoute extends _i32.PageRouteInfo<void> {
  const ResetPasswordRoute({List<_i32.PageRouteInfo>? children})
      : super(
          ResetPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ResetPasswordRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i15.RolesPage]
class RolesRoute extends _i32.PageRouteInfo<void> {
  const RolesRoute({List<_i32.PageRouteInfo>? children})
      : super(
          RolesRoute.name,
          initialChildren: children,
        );

  static const String name = 'RolesRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i16.RoleCreationPage]
class RoleCreationRoute extends _i32.PageRouteInfo<RoleCreationRouteArgs> {
  RoleCreationRoute({
    _i33.Key? key,
    String? isView,
    String? isEdit,
    String? roleId,
    List<_i32.PageRouteInfo>? children,
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

  static const _i32.PageInfo<RoleCreationRouteArgs> page =
      _i32.PageInfo<RoleCreationRouteArgs>(name);
}

class RoleCreationRouteArgs {
  const RoleCreationRouteArgs({
    this.key,
    this.isView,
    this.isEdit,
    this.roleId,
  });

  final _i33.Key? key;

  final String? isView;

  final String? isEdit;

  final String? roleId;

  @override
  String toString() {
    return 'RoleCreationRouteArgs{key: $key, isView: $isView, isEdit: $isEdit, roleId: $roleId}';
  }
}

/// generated route for
/// [_i17.ServiceRequestManagementPage]
class ServiceRequestManagementRoute extends _i32.PageRouteInfo<void> {
  const ServiceRequestManagementRoute({List<_i32.PageRouteInfo>? children})
      : super(
          ServiceRequestManagementRoute.name,
          initialChildren: children,
        );

  static const String name = 'ServiceRequestManagementRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i18.SideMenuPage]
class SideMenuRoute extends _i32.PageRouteInfo<void> {
  const SideMenuRoute({List<_i32.PageRouteInfo>? children})
      : super(
          SideMenuRoute.name,
          initialChildren: children,
        );

  static const String name = 'SideMenuRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i19.TransactionManagementPage]
class TransactionManagementRoute extends _i32.PageRouteInfo<void> {
  const TransactionManagementRoute({List<_i32.PageRouteInfo>? children})
      : super(
          TransactionManagementRoute.name,
          initialChildren: children,
        );

  static const String name = 'TransactionManagementRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i20.UserManagementPage]
class UserManagementRoute extends _i32.PageRouteInfo<void> {
  const UserManagementRoute({List<_i32.PageRouteInfo>? children})
      : super(
          UserManagementRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserManagementRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i21.UserManagementDetailPage]
class UserManagementDetailRoute
    extends _i32.PageRouteInfo<UserManagementDetailRouteArgs> {
  UserManagementDetailRoute({
    _i33.Key? key,
    String? id,
    List<_i32.PageRouteInfo>? children,
  }) : super(
          UserManagementDetailRoute.name,
          args: UserManagementDetailRouteArgs(
            key: key,
            id: id,
          ),
          rawQueryParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'UserManagementDetailRoute';

  static const _i32.PageInfo<UserManagementDetailRouteArgs> page =
      _i32.PageInfo<UserManagementDetailRouteArgs>(name);
}

class UserManagementDetailRouteArgs {
  const UserManagementDetailRouteArgs({
    this.key,
    this.id,
  });

  final _i33.Key? key;

  final String? id;

  @override
  String toString() {
    return 'UserManagementDetailRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i22.ClientAnalyticsPage]
class ClientAnalyticsRoute extends _i32.PageRouteInfo<void> {
  const ClientAnalyticsRoute({List<_i32.PageRouteInfo>? children})
      : super(
          ClientAnalyticsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ClientAnalyticsRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i23.CareAmbassadorAnalysisPage]
class CareAmbassadorAnalysisRoute extends _i32.PageRouteInfo<void> {
  const CareAmbassadorAnalysisRoute({List<_i32.PageRouteInfo>? children})
      : super(
          CareAmbassadorAnalysisRoute.name,
          initialChildren: children,
        );

  static const String name = 'CareAmbassadorAnalysisRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i24.RegionAnalyticsPage]
class RegionAnalyticsRoute extends _i32.PageRouteInfo<void> {
  const RegionAnalyticsRoute({List<_i32.PageRouteInfo>? children})
      : super(
          RegionAnalyticsRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegionAnalyticsRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i25.CareAmbassadorRegistrationPage]
class CareAmbassadorRegistrationRoute extends _i32.PageRouteInfo<void> {
  const CareAmbassadorRegistrationRoute({List<_i32.PageRouteInfo>? children})
      : super(
          CareAmbassadorRegistrationRoute.name,
          initialChildren: children,
        );

  static const String name = 'CareAmbassadorRegistrationRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i26.SignUpPage]
class SignUpRoute extends _i32.PageRouteInfo<void> {
  const SignUpRoute({List<_i32.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i27.EmailOtpVerificationPage]
class EmailOtpVerificationRoute extends _i32.PageRouteInfo<void> {
  const EmailOtpVerificationRoute({List<_i32.PageRouteInfo>? children})
      : super(
          EmailOtpVerificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'EmailOtpVerificationRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i28.MobileOtpVerificationPage]
class MobileOtpVerificationRoute extends _i32.PageRouteInfo<void> {
  const MobileOtpVerificationRoute({List<_i32.PageRouteInfo>? children})
      : super(
          MobileOtpVerificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'MobileOtpVerificationRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i29.ClientSubProfileDetailsPage]
class ClientSubProfileDetailsRoute
    extends _i32.PageRouteInfo<ClientSubProfileDetailsRouteArgs> {
  ClientSubProfileDetailsRoute({
    _i33.Key? key,
    String? id,
    List<_i32.PageRouteInfo>? children,
  }) : super(
          ClientSubProfileDetailsRoute.name,
          args: ClientSubProfileDetailsRouteArgs(
            key: key,
            id: id,
          ),
          rawQueryParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'ClientSubProfileDetailsRoute';

  static const _i32.PageInfo<ClientSubProfileDetailsRouteArgs> page =
      _i32.PageInfo<ClientSubProfileDetailsRouteArgs>(name);
}

class ClientSubProfileDetailsRouteArgs {
  const ClientSubProfileDetailsRouteArgs({
    this.key,
    this.id,
  });

  final _i33.Key? key;

  final String? id;

  @override
  String toString() {
    return 'ClientSubProfileDetailsRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i30.HelpAndSupportPage]
class HelpAndSupportRoute extends _i32.PageRouteInfo<void> {
  const HelpAndSupportRoute({List<_i32.PageRouteInfo>? children})
      : super(
          HelpAndSupportRoute.name,
          initialChildren: children,
        );

  static const String name = 'HelpAndSupportRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i31.SupportTicketsDetailPage]
class SupportTicketsDetailRoute
    extends _i32.PageRouteInfo<SupportTicketsDetailRouteArgs> {
  SupportTicketsDetailRoute({
    _i33.Key? key,
    String? complaintId,
    List<_i32.PageRouteInfo>? children,
  }) : super(
          SupportTicketsDetailRoute.name,
          args: SupportTicketsDetailRouteArgs(
            key: key,
            complaintId: complaintId,
          ),
          rawQueryParams: {'complaint_id': complaintId},
          initialChildren: children,
        );

  static const String name = 'SupportTicketsDetailRoute';

  static const _i32.PageInfo<SupportTicketsDetailRouteArgs> page =
      _i32.PageInfo<SupportTicketsDetailRouteArgs>(name);
}

class SupportTicketsDetailRouteArgs {
  const SupportTicketsDetailRouteArgs({
    this.key,
    this.complaintId,
  });

  final _i33.Key? key;

  final String? complaintId;

  @override
  String toString() {
    return 'SupportTicketsDetailRouteArgs{key: $key, complaintId: $complaintId}';
  }
}
