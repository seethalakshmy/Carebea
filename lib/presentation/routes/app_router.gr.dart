// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:admin_580_tech/presentation/admin_creation/admin_creation_page.dart'
    as _i6;
import 'package:admin_580_tech/presentation/admins/admins_page.dart' as _i12;
import 'package:admin_580_tech/presentation/care_ambassador_analytics/care_ambassador_analysis.dart'
    as _i31;
import 'package:admin_580_tech/presentation/care_ambassador_registeration/care_ambassador_registration.dart'
    as _i2;
import 'package:admin_580_tech/presentation/caregiver_creation/caregiver_creation_page.dart'
    as _i20;
import 'package:admin_580_tech/presentation/caregiver_detail/caregiver_detail_page.dart'
    as _i4;
import 'package:admin_580_tech/presentation/caregiver_profile/caregiver_profile_page.dart'
    as _i1;
import 'package:admin_580_tech/presentation/caregiver_verification/caregiver_verification_page.dart'
    as _i21;
import 'package:admin_580_tech/presentation/caregivers/caregivers_page.dart'
    as _i32;
import 'package:admin_580_tech/presentation/client_analytics/client_analytics_page.dart'
    as _i23;
import 'package:admin_580_tech/presentation/client_subProfile_details/client_subProfile_details_view.dart'
    as _i16;
import 'package:admin_580_tech/presentation/complaint_details/support_tickets_detail_page.dart'
    as _i19;
import 'package:admin_580_tech/presentation/complaints/help_and_support_page.dart'
    as _i13;
import 'package:admin_580_tech/presentation/dashboard/dashboard_page.dart'
    as _i30;
import 'package:admin_580_tech/presentation/faq/faq_screen.dart' as _i15;
import 'package:admin_580_tech/presentation/faq_creation/faq_creation_screen.dart'
    as _i29;
import 'package:admin_580_tech/presentation/forgot_password/forgot_password_page.dart'
    as _i11;
import 'package:admin_580_tech/presentation/login/login_page.dart' as _i9;
import 'package:admin_580_tech/presentation/mobile_otp_verification/mobile_otp_verification_page.dart'
    as _i8;
import 'package:admin_580_tech/presentation/on_boarding/modules/email_otp_varification/otp_varification_view.dart'
    as _i33;
import 'package:admin_580_tech/presentation/on_boarding/on_boarding_page.dart'
    as _i34;
import 'package:admin_580_tech/presentation/privacy_policy/privacy_policy.dart'
    as _i3;
import 'package:admin_580_tech/presentation/region_analytics/region_analytics_page.dart'
    as _i28;
import 'package:admin_580_tech/presentation/reset_password/reset_password_page.dart'
    as _i36;
import 'package:admin_580_tech/presentation/role_creation/role_creation_page.dart'
    as _i27;
import 'package:admin_580_tech/presentation/roles/role_page.dart' as _i7;
import 'package:admin_580_tech/presentation/service_request_management/service_request_management_page.dart'
    as _i17;
import 'package:admin_580_tech/presentation/side_menu/side_menu_page.dart'
    as _i10;
import 'package:admin_580_tech/presentation/signup/sign_up.dart' as _i14;
import 'package:admin_580_tech/presentation/subscription/subscription_view.dart'
    as _i35;
import 'package:admin_580_tech/presentation/terms_and_conditions/terms_and_conditions_view.dart'
    as _i22;
import 'package:admin_580_tech/presentation/transaction_management/transaction_management_page.dart'
    as _i18;
import 'package:admin_580_tech/presentation/user_management/user_management_page.dart'
    as _i25;
import 'package:admin_580_tech/presentation/user_mangement_detail/user_managemet_detail_page.dart'
    as _i26;
import 'package:admin_580_tech/presentation/video_management/video_management_view.dart'
    as _i5;
import 'package:admin_580_tech/presentation/video_management_creation/video_management_creation_screen.dart'
    as _i24;
import 'package:auto_route/auto_route.dart' as _i37;
import 'package:flutter/cupertino.dart' as _i39;
import 'package:flutter/material.dart' as _i38;

abstract class $AppRouter extends _i37.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i37.PageFactory> pagesMap = {
    CareGiverProfileRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<CareGiverProfileRouteArgs>(
          orElse: () =>
              CareGiverProfileRouteArgs(id: queryParams.optString('id')));
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.CareGiverProfilePage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    CareAmbassadorRegistrationRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CareAmbassadorRegistrationPage(),
      );
    },
    PrivacyPolicyRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.PrivacyPolicyPage(),
      );
    },
    CareGiverDetailRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<CareGiverDetailRouteArgs>(
          orElse: () =>
              CareGiverDetailRouteArgs(id: queryParams.optString('id')));
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.CareGiverDetailPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    VideoManagementRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.VideoManagementPage(),
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
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.AdminCreationPage(
          key: args.key,
          isView: args.isView,
          isEdit: args.isEdit,
          id: args.id,
        ),
      );
    },
    RolesRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.RolesPage(),
      );
    },
    MobileOtpVerificationRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.MobileOtpVerificationPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.LoginPage(),
      );
    },
    SideMenuRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.SideMenuPage(),
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.ForgotPasswordPage(),
      );
    },
    AdminsRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.AdminsPage(),
      );
    },
    HelpAndSupportRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.HelpAndSupportPage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.SignUpPage(),
      );
    },
    FaqRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.FaqPage(),
      );
    },
    ClientSubProfileDetailsRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<ClientSubProfileDetailsRouteArgs>(
          orElse: () => ClientSubProfileDetailsRouteArgs(
              id: queryParams.optString('id')));
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.ClientSubProfileDetailsPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    ServiceRequestManagementRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.ServiceRequestManagementPage(),
      );
    },
    TransactionManagementRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.TransactionManagementPage(),
      );
    },
    SupportTicketsDetailRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<SupportTicketsDetailRouteArgs>(
          orElse: () => SupportTicketsDetailRouteArgs(
              complaintId: queryParams.optString('complaint_id')));
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i19.SupportTicketsDetailPage(
          key: args.key,
          complaintId: args.complaintId,
        ),
      );
    },
    CaregiverCreationRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i20.CaregiverCreationPage(),
      );
    },
    CaregiverVerificationRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<CaregiverVerificationRouteArgs>(
          orElse: () =>
              CaregiverVerificationRouteArgs(id: queryParams.optString('id')));
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i21.CaregiverVerificationPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    TermsAndConditionsRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i22.TermsAndConditionsPage(),
      );
    },
    ClientAnalyticsRoute.name: (routeData) {
      final args = routeData.argsAs<ClientAnalyticsRouteArgs>(
          orElse: () => const ClientAnalyticsRouteArgs());
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i23.ClientAnalyticsPage(key: args.key),
      );
    },
    VideoUploadRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<VideoUploadRouteArgs>(
          orElse: () => VideoUploadRouteArgs(
                isEdit: queryParams.optString('edit'),
                title: queryParams.optString('title'),
                type: queryParams.optNum('type'),
                attachment: queryParams.optString('attachment'),
                id: queryParams.optString('id'),
              ));
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i24.VideoUploadPage(
          key: args.key,
          isEdit: args.isEdit,
          title: args.title,
          type: args.type,
          attachment: args.attachment,
          id: args.id,
        ),
      );
    },
    UserManagementRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i25.UserManagementPage(),
      );
    },
    UserManagementDetailRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<UserManagementDetailRouteArgs>(
          orElse: () =>
              UserManagementDetailRouteArgs(id: queryParams.optString('id')));
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i26.UserManagementDetailPage(
          key: args.key,
          id: args.id,
        ),
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
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i27.RoleCreationPage(
          key: args.key,
          isView: args.isView,
          isEdit: args.isEdit,
          roleId: args.roleId,
        ),
      );
    },
    RegionAnalyticsRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i28.RegionAnalyticsPage(),
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
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i29.FaqCreationPage(
          key: args.key,
          isView: args.isView,
          isEdit: args.isEdit,
          id: args.id,
        ),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i30.DashboardPage(),
      );
    },
    CareAmbassadorAnalysisRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i31.CareAmbassadorAnalysisPage(),
      );
    },
    CareGiversRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<CareGiversRouteArgs>(
          orElse: () => CareGiversRouteArgs(tab: queryParams.optInt('tab')));
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i32.CareGiversPage(
          key: args.key,
          tab: args.tab,
        ),
      );
    },
    EmailOtpVerificationRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i33.EmailOtpVerificationPage(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i34.OnboardingPage(),
      );
    },
    SubscriptionRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i35.SubscriptionPage(),
      );
    },
    ResetPasswordRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i36.ResetPasswordPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.CareGiverProfilePage]
class CareGiverProfileRoute
    extends _i37.PageRouteInfo<CareGiverProfileRouteArgs> {
  CareGiverProfileRoute({
    _i38.Key? key,
    String? id,
    List<_i37.PageRouteInfo>? children,
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

  static const _i37.PageInfo<CareGiverProfileRouteArgs> page =
      _i37.PageInfo<CareGiverProfileRouteArgs>(name);
}

class CareGiverProfileRouteArgs {
  const CareGiverProfileRouteArgs({
    this.key,
    this.id,
  });

  final _i38.Key? key;

  final String? id;

  @override
  String toString() {
    return 'CareGiverProfileRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i2.CareAmbassadorRegistrationPage]
class CareAmbassadorRegistrationRoute extends _i37.PageRouteInfo<void> {
  const CareAmbassadorRegistrationRoute({List<_i37.PageRouteInfo>? children})
      : super(
          CareAmbassadorRegistrationRoute.name,
          initialChildren: children,
        );

  static const String name = 'CareAmbassadorRegistrationRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i3.PrivacyPolicyPage]
class PrivacyPolicyRoute extends _i37.PageRouteInfo<void> {
  const PrivacyPolicyRoute({List<_i37.PageRouteInfo>? children})
      : super(
          PrivacyPolicyRoute.name,
          initialChildren: children,
        );

  static const String name = 'PrivacyPolicyRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i4.CareGiverDetailPage]
class CareGiverDetailRoute
    extends _i37.PageRouteInfo<CareGiverDetailRouteArgs> {
  CareGiverDetailRoute({
    _i38.Key? key,
    String? id,
    List<_i37.PageRouteInfo>? children,
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

  static const _i37.PageInfo<CareGiverDetailRouteArgs> page =
      _i37.PageInfo<CareGiverDetailRouteArgs>(name);
}

class CareGiverDetailRouteArgs {
  const CareGiverDetailRouteArgs({
    this.key,
    this.id,
  });

  final _i38.Key? key;

  final String? id;

  @override
  String toString() {
    return 'CareGiverDetailRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i5.VideoManagementPage]
class VideoManagementRoute extends _i37.PageRouteInfo<void> {
  const VideoManagementRoute({List<_i37.PageRouteInfo>? children})
      : super(
          VideoManagementRoute.name,
          initialChildren: children,
        );

  static const String name = 'VideoManagementRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i6.AdminCreationPage]
class AdminCreationRoute extends _i37.PageRouteInfo<AdminCreationRouteArgs> {
  AdminCreationRoute({
    _i38.Key? key,
    String? isView,
    String? isEdit,
    String? id,
    List<_i37.PageRouteInfo>? children,
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

  static const _i37.PageInfo<AdminCreationRouteArgs> page =
      _i37.PageInfo<AdminCreationRouteArgs>(name);
}

class AdminCreationRouteArgs {
  const AdminCreationRouteArgs({
    this.key,
    this.isView,
    this.isEdit,
    this.id,
  });

  final _i38.Key? key;

  final String? isView;

  final String? isEdit;

  final String? id;

  @override
  String toString() {
    return 'AdminCreationRouteArgs{key: $key, isView: $isView, isEdit: $isEdit, id: $id}';
  }
}

/// generated route for
/// [_i7.RolesPage]
class RolesRoute extends _i37.PageRouteInfo<void> {
  const RolesRoute({List<_i37.PageRouteInfo>? children})
      : super(
          RolesRoute.name,
          initialChildren: children,
        );

  static const String name = 'RolesRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i8.MobileOtpVerificationPage]
class MobileOtpVerificationRoute extends _i37.PageRouteInfo<void> {
  const MobileOtpVerificationRoute({List<_i37.PageRouteInfo>? children})
      : super(
          MobileOtpVerificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'MobileOtpVerificationRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i9.LoginPage]
class LoginRoute extends _i37.PageRouteInfo<void> {
  const LoginRoute({List<_i37.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i10.SideMenuPage]
class SideMenuRoute extends _i37.PageRouteInfo<void> {
  const SideMenuRoute({List<_i37.PageRouteInfo>? children})
      : super(
          SideMenuRoute.name,
          initialChildren: children,
        );

  static const String name = 'SideMenuRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i11.ForgotPasswordPage]
class ForgotPasswordRoute extends _i37.PageRouteInfo<void> {
  const ForgotPasswordRoute({List<_i37.PageRouteInfo>? children})
      : super(
          ForgotPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i12.AdminsPage]
class AdminsRoute extends _i37.PageRouteInfo<void> {
  const AdminsRoute({List<_i37.PageRouteInfo>? children})
      : super(
          AdminsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AdminsRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i13.HelpAndSupportPage]
class HelpAndSupportRoute extends _i37.PageRouteInfo<void> {
  const HelpAndSupportRoute({List<_i37.PageRouteInfo>? children})
      : super(
          HelpAndSupportRoute.name,
          initialChildren: children,
        );

  static const String name = 'HelpAndSupportRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i14.SignUpPage]
class SignUpRoute extends _i37.PageRouteInfo<void> {
  const SignUpRoute({List<_i37.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i15.FaqPage]
class FaqRoute extends _i37.PageRouteInfo<void> {
  const FaqRoute({List<_i37.PageRouteInfo>? children})
      : super(
          FaqRoute.name,
          initialChildren: children,
        );

  static const String name = 'FaqRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i16.ClientSubProfileDetailsPage]
class ClientSubProfileDetailsRoute
    extends _i37.PageRouteInfo<ClientSubProfileDetailsRouteArgs> {
  ClientSubProfileDetailsRoute({
    _i38.Key? key,
    String? id,
    List<_i37.PageRouteInfo>? children,
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

  static const _i37.PageInfo<ClientSubProfileDetailsRouteArgs> page =
      _i37.PageInfo<ClientSubProfileDetailsRouteArgs>(name);
}

class ClientSubProfileDetailsRouteArgs {
  const ClientSubProfileDetailsRouteArgs({
    this.key,
    this.id,
  });

  final _i38.Key? key;

  final String? id;

  @override
  String toString() {
    return 'ClientSubProfileDetailsRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i17.ServiceRequestManagementPage]
class ServiceRequestManagementRoute extends _i37.PageRouteInfo<void> {
  const ServiceRequestManagementRoute({List<_i37.PageRouteInfo>? children})
      : super(
          ServiceRequestManagementRoute.name,
          initialChildren: children,
        );

  static const String name = 'ServiceRequestManagementRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i18.TransactionManagementPage]
class TransactionManagementRoute extends _i37.PageRouteInfo<void> {
  const TransactionManagementRoute({List<_i37.PageRouteInfo>? children})
      : super(
          TransactionManagementRoute.name,
          initialChildren: children,
        );

  static const String name = 'TransactionManagementRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i19.SupportTicketsDetailPage]
class SupportTicketsDetailRoute
    extends _i37.PageRouteInfo<SupportTicketsDetailRouteArgs> {
  SupportTicketsDetailRoute({
    _i38.Key? key,
    String? complaintId,
    List<_i37.PageRouteInfo>? children,
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

  static const _i37.PageInfo<SupportTicketsDetailRouteArgs> page =
      _i37.PageInfo<SupportTicketsDetailRouteArgs>(name);
}

class SupportTicketsDetailRouteArgs {
  const SupportTicketsDetailRouteArgs({
    this.key,
    this.complaintId,
  });

  final _i38.Key? key;

  final String? complaintId;

  @override
  String toString() {
    return 'SupportTicketsDetailRouteArgs{key: $key, complaintId: $complaintId}';
  }
}

/// generated route for
/// [_i20.CaregiverCreationPage]
class CaregiverCreationRoute extends _i37.PageRouteInfo<void> {
  const CaregiverCreationRoute({List<_i37.PageRouteInfo>? children})
      : super(
          CaregiverCreationRoute.name,
          initialChildren: children,
        );

  static const String name = 'CaregiverCreationRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i21.CaregiverVerificationPage]
class CaregiverVerificationRoute
    extends _i37.PageRouteInfo<CaregiverVerificationRouteArgs> {
  CaregiverVerificationRoute({
    _i38.Key? key,
    String? id,
    List<_i37.PageRouteInfo>? children,
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

  static const _i37.PageInfo<CaregiverVerificationRouteArgs> page =
      _i37.PageInfo<CaregiverVerificationRouteArgs>(name);
}

class CaregiverVerificationRouteArgs {
  const CaregiverVerificationRouteArgs({
    this.key,
    this.id,
  });

  final _i38.Key? key;

  final String? id;

  @override
  String toString() {
    return 'CaregiverVerificationRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i22.TermsAndConditionsPage]
class TermsAndConditionsRoute extends _i37.PageRouteInfo<void> {
  const TermsAndConditionsRoute({List<_i37.PageRouteInfo>? children})
      : super(
          TermsAndConditionsRoute.name,
          initialChildren: children,
        );

  static const String name = 'TermsAndConditionsRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i23.ClientAnalyticsPage]
class ClientAnalyticsRoute
    extends _i37.PageRouteInfo<ClientAnalyticsRouteArgs> {
  ClientAnalyticsRoute({
    _i39.Key? key,
    List<_i37.PageRouteInfo>? children,
  }) : super(
          ClientAnalyticsRoute.name,
          args: ClientAnalyticsRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ClientAnalyticsRoute';

  static const _i37.PageInfo<ClientAnalyticsRouteArgs> page =
      _i37.PageInfo<ClientAnalyticsRouteArgs>(name);
}

class ClientAnalyticsRouteArgs {
  const ClientAnalyticsRouteArgs({this.key});

  final _i39.Key? key;

  @override
  String toString() {
    return 'ClientAnalyticsRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i24.VideoUploadPage]
class VideoUploadRoute extends _i37.PageRouteInfo<VideoUploadRouteArgs> {
  VideoUploadRoute({
    _i38.Key? key,
    String? isEdit,
    String? title,
    num? type,
    String? attachment,
    String? id,
    List<_i37.PageRouteInfo>? children,
  }) : super(
          VideoUploadRoute.name,
          args: VideoUploadRouteArgs(
            key: key,
            isEdit: isEdit,
            title: title,
            type: type,
            attachment: attachment,
            id: id,
          ),
          rawQueryParams: {
            'edit': isEdit,
            'title': title,
            'type': type,
            'attachment': attachment,
            'id': id,
          },
          initialChildren: children,
        );

  static const String name = 'VideoUploadRoute';

  static const _i37.PageInfo<VideoUploadRouteArgs> page =
      _i37.PageInfo<VideoUploadRouteArgs>(name);
}

class VideoUploadRouteArgs {
  const VideoUploadRouteArgs({
    this.key,
    this.isEdit,
    this.title,
    this.type,
    this.attachment,
    this.id,
  });

  final _i38.Key? key;

  final String? isEdit;

  final String? title;

  final num? type;

  final String? attachment;

  final String? id;

  @override
  String toString() {
    return 'VideoUploadRouteArgs{key: $key, isEdit: $isEdit, title: $title, type: $type, attachment: $attachment, id: $id}';
  }
}

/// generated route for
/// [_i25.UserManagementPage]
class UserManagementRoute extends _i37.PageRouteInfo<void> {
  const UserManagementRoute({List<_i37.PageRouteInfo>? children})
      : super(
          UserManagementRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserManagementRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i26.UserManagementDetailPage]
class UserManagementDetailRoute
    extends _i37.PageRouteInfo<UserManagementDetailRouteArgs> {
  UserManagementDetailRoute({
    _i38.Key? key,
    String? id,
    List<_i37.PageRouteInfo>? children,
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

  static const _i37.PageInfo<UserManagementDetailRouteArgs> page =
      _i37.PageInfo<UserManagementDetailRouteArgs>(name);
}

class UserManagementDetailRouteArgs {
  const UserManagementDetailRouteArgs({
    this.key,
    this.id,
  });

  final _i38.Key? key;

  final String? id;

  @override
  String toString() {
    return 'UserManagementDetailRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i27.RoleCreationPage]
class RoleCreationRoute extends _i37.PageRouteInfo<RoleCreationRouteArgs> {
  RoleCreationRoute({
    _i38.Key? key,
    String? isView,
    String? isEdit,
    String? roleId,
    List<_i37.PageRouteInfo>? children,
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

  static const _i37.PageInfo<RoleCreationRouteArgs> page =
      _i37.PageInfo<RoleCreationRouteArgs>(name);
}

class RoleCreationRouteArgs {
  const RoleCreationRouteArgs({
    this.key,
    this.isView,
    this.isEdit,
    this.roleId,
  });

  final _i38.Key? key;

  final String? isView;

  final String? isEdit;

  final String? roleId;

  @override
  String toString() {
    return 'RoleCreationRouteArgs{key: $key, isView: $isView, isEdit: $isEdit, roleId: $roleId}';
  }
}

/// generated route for
/// [_i28.RegionAnalyticsPage]
class RegionAnalyticsRoute extends _i37.PageRouteInfo<void> {
  const RegionAnalyticsRoute({List<_i37.PageRouteInfo>? children})
      : super(
          RegionAnalyticsRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegionAnalyticsRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i29.FaqCreationPage]
class FaqCreationRoute extends _i37.PageRouteInfo<FaqCreationRouteArgs> {
  FaqCreationRoute({
    _i38.Key? key,
    String? isView,
    String? isEdit,
    String? id,
    List<_i37.PageRouteInfo>? children,
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

  static const _i37.PageInfo<FaqCreationRouteArgs> page =
      _i37.PageInfo<FaqCreationRouteArgs>(name);
}

class FaqCreationRouteArgs {
  const FaqCreationRouteArgs({
    this.key,
    this.isView,
    this.isEdit,
    this.id,
  });

  final _i38.Key? key;

  final String? isView;

  final String? isEdit;

  final String? id;

  @override
  String toString() {
    return 'FaqCreationRouteArgs{key: $key, isView: $isView, isEdit: $isEdit, id: $id}';
  }
}

/// generated route for
/// [_i30.DashboardPage]
class DashboardRoute extends _i37.PageRouteInfo<void> {
  const DashboardRoute({List<_i37.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i31.CareAmbassadorAnalysisPage]
class CareAmbassadorAnalysisRoute extends _i37.PageRouteInfo<void> {
  const CareAmbassadorAnalysisRoute({List<_i37.PageRouteInfo>? children})
      : super(
          CareAmbassadorAnalysisRoute.name,
          initialChildren: children,
        );

  static const String name = 'CareAmbassadorAnalysisRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i32.CareGiversPage]
class CareGiversRoute extends _i37.PageRouteInfo<CareGiversRouteArgs> {
  CareGiversRoute({
    _i38.Key? key,
    int? tab,
    List<_i37.PageRouteInfo>? children,
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

  static const _i37.PageInfo<CareGiversRouteArgs> page =
      _i37.PageInfo<CareGiversRouteArgs>(name);
}

class CareGiversRouteArgs {
  const CareGiversRouteArgs({
    this.key,
    this.tab,
  });

  final _i38.Key? key;

  final int? tab;

  @override
  String toString() {
    return 'CareGiversRouteArgs{key: $key, tab: $tab}';
  }
}

/// generated route for
/// [_i33.EmailOtpVerificationPage]
class EmailOtpVerificationRoute extends _i37.PageRouteInfo<void> {
  const EmailOtpVerificationRoute({List<_i37.PageRouteInfo>? children})
      : super(
          EmailOtpVerificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'EmailOtpVerificationRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i34.OnboardingPage]
class OnboardingRoute extends _i37.PageRouteInfo<void> {
  const OnboardingRoute({List<_i37.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i35.SubscriptionPage]
class SubscriptionRoute extends _i37.PageRouteInfo<void> {
  const SubscriptionRoute({List<_i37.PageRouteInfo>? children})
      : super(
          SubscriptionRoute.name,
          initialChildren: children,
        );

  static const String name = 'SubscriptionRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i36.ResetPasswordPage]
class ResetPasswordRoute extends _i37.PageRouteInfo<void> {
  const ResetPasswordRoute({List<_i37.PageRouteInfo>? children})
      : super(
          ResetPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ResetPasswordRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}
