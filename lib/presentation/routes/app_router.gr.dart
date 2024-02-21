// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:admin_580_tech/domain/faq/models/faq_list_response_model.dart'
    as _i44;
import 'package:admin_580_tech/presentation/admin_creation/admin_creation_page.dart'
    as _i2;
import 'package:admin_580_tech/presentation/admins/admins_page.dart' as _i1;
import 'package:admin_580_tech/presentation/care_ambassador_analytics/care_ambassador_analysis.dart'
    as _i8;
import 'package:admin_580_tech/presentation/care_ambassador_registeration/care_ambassador_registration.dart'
    as _i9;
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
    as _i10;
import 'package:admin_580_tech/presentation/client_subProfile_details/client_subProfile_details_view.dart'
    as _i11;
import 'package:admin_580_tech/presentation/complaint_details/support_tickets_detail_page.dart'
    as _i13;
import 'package:admin_580_tech/presentation/complaints/help_and_support_page.dart'
    as _i12;
import 'package:admin_580_tech/presentation/dashboard/dashboard_page.dart'
    as _i14;
import 'package:admin_580_tech/presentation/faq/faq_screen.dart' as _i15;
import 'package:admin_580_tech/presentation/faq_creation/faq_creation_screen.dart'
    as _i16;
import 'package:admin_580_tech/presentation/forgot_password/forgot_password_page.dart'
    as _i17;
import 'package:admin_580_tech/presentation/login/login_page.dart' as _i18;
import 'package:admin_580_tech/presentation/mobile_otp_verification/mobile_otp_verification_page.dart'
    as _i19;
import 'package:admin_580_tech/presentation/on_boarding/modules/email_otp_varification/otp_varification_view.dart'
    as _i20;
import 'package:admin_580_tech/presentation/on_boarding/on_boarding_page.dart'
    as _i21;
import 'package:admin_580_tech/presentation/page/page_view.dart' as _i22;
import 'package:admin_580_tech/presentation/page_creation/page_creation_view.dart'
    as _i23;
import 'package:admin_580_tech/presentation/region_analytics/region_analytics_page.dart'
    as _i24;
import 'package:admin_580_tech/presentation/reset_password/reset_password_page.dart'
    as _i25;
import 'package:admin_580_tech/presentation/role_creation/role_creation_page.dart'
    as _i27;
import 'package:admin_580_tech/presentation/roles/role_page.dart' as _i26;
import 'package:admin_580_tech/presentation/send_gift/send_gift.dart' as _i28;
import 'package:admin_580_tech/presentation/service_request_management/service_request_management_page.dart'
    as _i29;
import 'package:admin_580_tech/presentation/side_menu/side_menu_page.dart'
    as _i30;
import 'package:admin_580_tech/presentation/signup/sign_up.dart' as _i31;
import 'package:admin_580_tech/presentation/subscription/subscription_view.dart'
    as _i32;
import 'package:admin_580_tech/presentation/transaction_management/transaction_management_page.dart'
    as _i33;
import 'package:admin_580_tech/presentation/upcoming_birthdays/upcoming_birthdays.dart'
    as _i34;
import 'package:admin_580_tech/presentation/user_management/user_management_page.dart'
    as _i35;
import 'package:admin_580_tech/presentation/user_mangement_detail/user_managemet_detail_page.dart'
    as _i36;
import 'package:admin_580_tech/presentation/user_mangement_detail/views/sub_profile_view.dart'
    as _i37;
import 'package:admin_580_tech/presentation/user_mangement_detail/widgets/pending_service_page.dart'
    as _i41;
import 'package:admin_580_tech/presentation/verify_email/verify_email.dart'
    as _i38;
import 'package:admin_580_tech/presentation/video_management/video_management_view.dart'
    as _i39;
import 'package:admin_580_tech/presentation/video_management_creation/video_management_creation_screen.dart'
    as _i40;
import 'package:auto_route/auto_route.dart' as _i42;
import 'package:flutter/material.dart' as _i43;

abstract class $AppRouter extends _i42.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i42.PageFactory> pagesMap = {
    AdminsRoute.name: (routeData) {
      return _i42.AutoRoutePage<dynamic>(
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
                fName: queryParams.optString('fName'),
                lName: queryParams.optString('lName'),
                profilePic: queryParams.optString('profilePic'),
              ));
      return _i42.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.AdminCreationPage(
          key: args.key,
          isView: args.isView,
          isEdit: args.isEdit,
          id: args.id,
          fName: args.fName,
          lName: args.lName,
          profilePic: args.profilePic,
        ),
      );
    },
    CareGiversRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<CareGiversRouteArgs>(
          orElse: () => CareGiversRouteArgs(tab: queryParams.optInt('tab')));
      return _i42.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.CareGiversPage(
          key: args.key,
          tab: args.tab,
        ),
      );
    },
    CaregiverCreationRoute.name: (routeData) {
      return _i42.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.CaregiverCreationPage(),
      );
    },
    CareGiverDetailRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<CareGiverDetailRouteArgs>(
          orElse: () =>
              CareGiverDetailRouteArgs(id: queryParams.optString('id')));
      return _i42.AutoRoutePage<dynamic>(
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
      return _i42.AutoRoutePage<dynamic>(
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
                id: queryParams.optString('id'),
                isOnboardingCompleted:
                    queryParams.optBool('isOnboardingCompleted'),
              ));
      return _i42.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.CaregiverVerificationPage(
          key: args.key,
          id: args.id,
          isOnboardingCompleted: args.isOnboardingCompleted,
        ),
      );
    },
    CareAmbassadorAnalysisRoute.name: (routeData) {
      return _i42.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.CareAmbassadorAnalysisPage(),
      );
    },
    CareAmbassadorRegistrationRoute.name: (routeData) {
      return _i42.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.CareAmbassadorRegistrationPage(),
      );
    },
    ClientAnalyticsRoute.name: (routeData) {
      return _i42.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.ClientAnalyticsPage(),
      );
    },
    ClientSubProfileDetailsRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<ClientSubProfileDetailsRouteArgs>(
          orElse: () => ClientSubProfileDetailsRouteArgs(
              id: queryParams.optString('id')));
      return _i42.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.ClientSubProfileDetailsPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    HelpAndSupportRoute.name: (routeData) {
      return _i42.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.HelpAndSupportPage(),
      );
    },
    SupportTicketsDetailRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<SupportTicketsDetailRouteArgs>(
          orElse: () => SupportTicketsDetailRouteArgs(
              complaintId: queryParams.optString('complaint_id')));
      return _i42.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i13.SupportTicketsDetailPage(
          key: args.key,
          complaintId: args.complaintId,
        ),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i42.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.DashboardPage(),
      );
    },
    FaqRoute.name: (routeData) {
      return _i42.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.FaqPage(),
      );
    },
    FaqCreationRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<FaqCreationRouteArgs>(
          orElse: () => FaqCreationRouteArgs(
                isView: queryParams.optString('view'),
                isEdit: queryParams.optString('edit'),
                id: queryParams.optString('id'),
                item: queryParams.get('item'),
                forWhom: queryParams.optInt('forWhom'),
              ));
      return _i42.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.FaqCreationPage(
          key: args.key,
          isView: args.isView,
          isEdit: args.isEdit,
          id: args.id,
          item: args.item,
          forWhom: args.forWhom,
        ),
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i42.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.ForgotPasswordPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i42.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.LoginPage(),
      );
    },
    MobileOtpVerificationRoute.name: (routeData) {
      return _i42.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i19.MobileOtpVerificationPage(),
      );
    },
    EmailOtpVerificationRoute.name: (routeData) {
      return _i42.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i20.EmailOtpVerificationPage(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return _i42.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i21.OnboardingPage(),
      );
    },
    RouteListRoute.name: (routeData) {
      return _i42.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i22.PageListPage(),
      );
    },
    RouteCreationRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<RouteCreationRouteArgs>(
          orElse: () => RouteCreationRouteArgs(
                heading: queryParams.optString('heading'),
                title: queryParams.optString('title'),
                id: queryParams.optString('id'),
                description: queryParams.optString('description'),
                isEdit: queryParams.optBool('isEdit'),
                forWhom: queryParams.optNum('forWhom'),
              ));
      return _i42.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i23.PageCreationPage(
          key: args.key,
          heading: args.heading,
          title: args.title,
          id: args.id,
          description: args.description,
          isEdit: args.isEdit,
          forWhom: args.forWhom,
        ),
      );
    },
    RegionAnalyticsRoute.name: (routeData) {
      return _i42.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i24.RegionAnalyticsPage(),
      );
    },
    ResetPasswordRoute.name: (routeData) {
      return _i42.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i25.ResetPasswordPage(),
      );
    },
    RolesRoute.name: (routeData) {
      return _i42.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i26.RolesPage(),
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
      return _i42.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i27.RoleCreationPage(
          key: args.key,
          isView: args.isView,
          isEdit: args.isEdit,
          roleId: args.roleId,
        ),
      );
    },
    SendGiftRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<SendGiftRouteArgs>(
          orElse: () => SendGiftRouteArgs(userId: queryParams.optString('id')));
      return _i42.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i28.SendGiftPage(
          key: args.key,
          userId: args.userId,
        ),
      );
    },
    ServiceRequestManagementRoute.name: (routeData) {
      final args = routeData.argsAs<ServiceRequestManagementRouteArgs>();
      return _i42.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i29.ServiceRequestManagementPage(
          key: args.key,
          clientId: args.clientId,
        ),
      );
    },
    SideMenuRoute.name: (routeData) {
      return _i42.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i30.SideMenuPage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i42.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i31.SignUpPage(),
      );
    },
    SubscriptionRoute.name: (routeData) {
      return _i42.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i32.SubscriptionPage(),
      );
    },
    TransactionManagementRoute.name: (routeData) {
      final args = routeData.argsAs<TransactionManagementRouteArgs>(
          orElse: () => const TransactionManagementRouteArgs());
      return _i42.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i33.TransactionManagementPage(
          key: args.key,
          clientId: args.clientId,
        ),
      );
    },
    UpcomingBirthdayRoute.name: (routeData) {
      return _i42.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i34.UpcomingBirthdayPage(),
      );
    },
    UserManagementRoute.name: (routeData) {
      return _i42.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i35.UserManagementPage(),
      );
    },
    UserManagementDetailRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<UserManagementDetailRouteArgs>(
          orElse: () =>
              UserManagementDetailRouteArgs(id: queryParams.optString('id')));
      return _i42.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i36.UserManagementDetailPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    SubProfileView.name: (routeData) {
      final args = routeData.argsAs<SubProfileViewArgs>();
      return _i42.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i37.SubProfileView(
          key: args.key,
          userId: args.userId,
        ),
      );
    },
    VerifyEmailRoute.name: (routeData) {
      return _i42.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i38.VerifyEmailPage(),
      );
    },
    VideoManagementRoute.name: (routeData) {
      return _i42.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i39.VideoManagementPage(),
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
      return _i42.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i40.VideoUploadPage(
          key: args.key,
          isEdit: args.isEdit,
          title: args.title,
          type: args.type,
          attachment: args.attachment,
          id: args.id,
        ),
      );
    },
    PendingServiceRoute.name: (routeData) {
      final args = routeData.argsAs<PendingServiceRouteArgs>();
      return _i42.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i41.PendingServicePage(
          key: args.key,
          clientId: args.clientId,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.AdminsPage]
class AdminsRoute extends _i42.PageRouteInfo<void> {
  const AdminsRoute({List<_i42.PageRouteInfo>? children})
      : super(
          AdminsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AdminsRoute';

  static const _i42.PageInfo<void> page = _i42.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AdminCreationPage]
class AdminCreationRoute extends _i42.PageRouteInfo<AdminCreationRouteArgs> {
  AdminCreationRoute({
    _i43.Key? key,
    String? isView,
    String? isEdit,
    String? id,
    String? fName,
    String? lName,
    String? profilePic,
    List<_i42.PageRouteInfo>? children,
  }) : super(
          AdminCreationRoute.name,
          args: AdminCreationRouteArgs(
            key: key,
            isView: isView,
            isEdit: isEdit,
            id: id,
            fName: fName,
            lName: lName,
            profilePic: profilePic,
          ),
          rawQueryParams: {
            'view': isView,
            'edit': isEdit,
            'id': id,
            'fName': fName,
            'lName': lName,
            'profilePic': profilePic,
          },
          initialChildren: children,
        );

  static const String name = 'AdminCreationRoute';

  static const _i42.PageInfo<AdminCreationRouteArgs> page =
      _i42.PageInfo<AdminCreationRouteArgs>(name);
}

class AdminCreationRouteArgs {
  const AdminCreationRouteArgs({
    this.key,
    this.isView,
    this.isEdit,
    this.id,
    this.fName,
    this.lName,
    this.profilePic,
  });

  final _i43.Key? key;

  final String? isView;

  final String? isEdit;

  final String? id;

  final String? fName;

  final String? lName;

  final String? profilePic;

  @override
  String toString() {
    return 'AdminCreationRouteArgs{key: $key, isView: $isView, isEdit: $isEdit, id: $id, fName: $fName, lName: $lName, profilePic: $profilePic}';
  }
}

/// generated route for
/// [_i3.CareGiversPage]
class CareGiversRoute extends _i42.PageRouteInfo<CareGiversRouteArgs> {
  CareGiversRoute({
    _i43.Key? key,
    int? tab,
    List<_i42.PageRouteInfo>? children,
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

  static const _i42.PageInfo<CareGiversRouteArgs> page =
      _i42.PageInfo<CareGiversRouteArgs>(name);
}

class CareGiversRouteArgs {
  const CareGiversRouteArgs({
    this.key,
    this.tab,
  });

  final _i43.Key? key;

  final int? tab;

  @override
  String toString() {
    return 'CareGiversRouteArgs{key: $key, tab: $tab}';
  }
}

/// generated route for
/// [_i4.CaregiverCreationPage]
class CaregiverCreationRoute extends _i42.PageRouteInfo<void> {
  const CaregiverCreationRoute({List<_i42.PageRouteInfo>? children})
      : super(
          CaregiverCreationRoute.name,
          initialChildren: children,
        );

  static const String name = 'CaregiverCreationRoute';

  static const _i42.PageInfo<void> page = _i42.PageInfo<void>(name);
}

/// generated route for
/// [_i5.CareGiverDetailPage]
class CareGiverDetailRoute
    extends _i42.PageRouteInfo<CareGiverDetailRouteArgs> {
  CareGiverDetailRoute({
    _i43.Key? key,
    String? id,
    List<_i42.PageRouteInfo>? children,
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

  static const _i42.PageInfo<CareGiverDetailRouteArgs> page =
      _i42.PageInfo<CareGiverDetailRouteArgs>(name);
}

class CareGiverDetailRouteArgs {
  const CareGiverDetailRouteArgs({
    this.key,
    this.id,
  });

  final _i43.Key? key;

  final String? id;

  @override
  String toString() {
    return 'CareGiverDetailRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i6.CareGiverProfilePage]
class CareGiverProfileRoute
    extends _i42.PageRouteInfo<CareGiverProfileRouteArgs> {
  CareGiverProfileRoute({
    _i43.Key? key,
    String? id,
    List<_i42.PageRouteInfo>? children,
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

  static const _i42.PageInfo<CareGiverProfileRouteArgs> page =
      _i42.PageInfo<CareGiverProfileRouteArgs>(name);
}

class CareGiverProfileRouteArgs {
  const CareGiverProfileRouteArgs({
    this.key,
    this.id,
  });

  final _i43.Key? key;

  final String? id;

  @override
  String toString() {
    return 'CareGiverProfileRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i7.CaregiverVerificationPage]
class CaregiverVerificationRoute
    extends _i42.PageRouteInfo<CaregiverVerificationRouteArgs> {
  CaregiverVerificationRoute({
    _i43.Key? key,
    String? id,
    bool? isOnboardingCompleted,
    List<_i42.PageRouteInfo>? children,
  }) : super(
          CaregiverVerificationRoute.name,
          args: CaregiverVerificationRouteArgs(
            key: key,
            id: id,
            isOnboardingCompleted: isOnboardingCompleted,
          ),
          rawQueryParams: {
            'id': id,
            'isOnboardingCompleted': isOnboardingCompleted,
          },
          initialChildren: children,
        );

  static const String name = 'CaregiverVerificationRoute';

  static const _i42.PageInfo<CaregiverVerificationRouteArgs> page =
      _i42.PageInfo<CaregiverVerificationRouteArgs>(name);
}

class CaregiverVerificationRouteArgs {
  const CaregiverVerificationRouteArgs({
    this.key,
    this.id,
    this.isOnboardingCompleted,
  });

  final _i43.Key? key;

  final String? id;

  final bool? isOnboardingCompleted;

  @override
  String toString() {
    return 'CaregiverVerificationRouteArgs{key: $key, id: $id, isOnboardingCompleted: $isOnboardingCompleted}';
  }
}

/// generated route for
/// [_i8.CareAmbassadorAnalysisPage]
class CareAmbassadorAnalysisRoute extends _i42.PageRouteInfo<void> {
  const CareAmbassadorAnalysisRoute({List<_i42.PageRouteInfo>? children})
      : super(
          CareAmbassadorAnalysisRoute.name,
          initialChildren: children,
        );

  static const String name = 'CareAmbassadorAnalysisRoute';

  static const _i42.PageInfo<void> page = _i42.PageInfo<void>(name);
}

/// generated route for
/// [_i9.CareAmbassadorRegistrationPage]
class CareAmbassadorRegistrationRoute extends _i42.PageRouteInfo<void> {
  const CareAmbassadorRegistrationRoute({List<_i42.PageRouteInfo>? children})
      : super(
          CareAmbassadorRegistrationRoute.name,
          initialChildren: children,
        );

  static const String name = 'CareAmbassadorRegistrationRoute';

  static const _i42.PageInfo<void> page = _i42.PageInfo<void>(name);
}

/// generated route for
/// [_i10.ClientAnalyticsPage]
class ClientAnalyticsRoute extends _i42.PageRouteInfo<void> {
  const ClientAnalyticsRoute({List<_i42.PageRouteInfo>? children})
      : super(
          ClientAnalyticsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ClientAnalyticsRoute';

  static const _i42.PageInfo<void> page = _i42.PageInfo<void>(name);
}

/// generated route for
/// [_i11.ClientSubProfileDetailsPage]
class ClientSubProfileDetailsRoute
    extends _i42.PageRouteInfo<ClientSubProfileDetailsRouteArgs> {
  ClientSubProfileDetailsRoute({
    _i43.Key? key,
    String? id,
    List<_i42.PageRouteInfo>? children,
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

  static const _i42.PageInfo<ClientSubProfileDetailsRouteArgs> page =
      _i42.PageInfo<ClientSubProfileDetailsRouteArgs>(name);
}

class ClientSubProfileDetailsRouteArgs {
  const ClientSubProfileDetailsRouteArgs({
    this.key,
    this.id,
  });

  final _i43.Key? key;

  final String? id;

  @override
  String toString() {
    return 'ClientSubProfileDetailsRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i12.HelpAndSupportPage]
class HelpAndSupportRoute extends _i42.PageRouteInfo<void> {
  const HelpAndSupportRoute({List<_i42.PageRouteInfo>? children})
      : super(
          HelpAndSupportRoute.name,
          initialChildren: children,
        );

  static const String name = 'HelpAndSupportRoute';

  static const _i42.PageInfo<void> page = _i42.PageInfo<void>(name);
}

/// generated route for
/// [_i13.SupportTicketsDetailPage]
class SupportTicketsDetailRoute
    extends _i42.PageRouteInfo<SupportTicketsDetailRouteArgs> {
  SupportTicketsDetailRoute({
    _i43.Key? key,
    String? complaintId,
    List<_i42.PageRouteInfo>? children,
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

  static const _i42.PageInfo<SupportTicketsDetailRouteArgs> page =
      _i42.PageInfo<SupportTicketsDetailRouteArgs>(name);
}

class SupportTicketsDetailRouteArgs {
  const SupportTicketsDetailRouteArgs({
    this.key,
    this.complaintId,
  });

  final _i43.Key? key;

  final String? complaintId;

  @override
  String toString() {
    return 'SupportTicketsDetailRouteArgs{key: $key, complaintId: $complaintId}';
  }
}

/// generated route for
/// [_i14.DashboardPage]
class DashboardRoute extends _i42.PageRouteInfo<void> {
  const DashboardRoute({List<_i42.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i42.PageInfo<void> page = _i42.PageInfo<void>(name);
}

/// generated route for
/// [_i15.FaqPage]
class FaqRoute extends _i42.PageRouteInfo<void> {
  const FaqRoute({List<_i42.PageRouteInfo>? children})
      : super(
          FaqRoute.name,
          initialChildren: children,
        );

  static const String name = 'FaqRoute';

  static const _i42.PageInfo<void> page = _i42.PageInfo<void>(name);
}

/// generated route for
/// [_i16.FaqCreationPage]
class FaqCreationRoute extends _i42.PageRouteInfo<FaqCreationRouteArgs> {
  FaqCreationRoute({
    _i43.Key? key,
    String? isView,
    String? isEdit,
    String? id,
    _i44.FaqListData? item,
    int? forWhom,
    List<_i42.PageRouteInfo>? children,
  }) : super(
          FaqCreationRoute.name,
          args: FaqCreationRouteArgs(
            key: key,
            isView: isView,
            isEdit: isEdit,
            id: id,
            item: item,
            forWhom: forWhom,
          ),
          rawQueryParams: {
            'view': isView,
            'edit': isEdit,
            'id': id,
            'item': item,
            'forWhom': forWhom,
          },
          initialChildren: children,
        );

  static const String name = 'FaqCreationRoute';

  static const _i42.PageInfo<FaqCreationRouteArgs> page =
      _i42.PageInfo<FaqCreationRouteArgs>(name);
}

class FaqCreationRouteArgs {
  const FaqCreationRouteArgs({
    this.key,
    this.isView,
    this.isEdit,
    this.id,
    this.item,
    this.forWhom,
  });

  final _i43.Key? key;

  final String? isView;

  final String? isEdit;

  final String? id;

  final _i44.FaqListData? item;

  final int? forWhom;

  @override
  String toString() {
    return 'FaqCreationRouteArgs{key: $key, isView: $isView, isEdit: $isEdit, id: $id, item: $item, forWhom: $forWhom}';
  }
}

/// generated route for
/// [_i17.ForgotPasswordPage]
class ForgotPasswordRoute extends _i42.PageRouteInfo<void> {
  const ForgotPasswordRoute({List<_i42.PageRouteInfo>? children})
      : super(
          ForgotPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static const _i42.PageInfo<void> page = _i42.PageInfo<void>(name);
}

/// generated route for
/// [_i18.LoginPage]
class LoginRoute extends _i42.PageRouteInfo<void> {
  const LoginRoute({List<_i42.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i42.PageInfo<void> page = _i42.PageInfo<void>(name);
}

/// generated route for
/// [_i19.MobileOtpVerificationPage]
class MobileOtpVerificationRoute extends _i42.PageRouteInfo<void> {
  const MobileOtpVerificationRoute({List<_i42.PageRouteInfo>? children})
      : super(
          MobileOtpVerificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'MobileOtpVerificationRoute';

  static const _i42.PageInfo<void> page = _i42.PageInfo<void>(name);
}

/// generated route for
/// [_i20.EmailOtpVerificationPage]
class EmailOtpVerificationRoute extends _i42.PageRouteInfo<void> {
  const EmailOtpVerificationRoute({List<_i42.PageRouteInfo>? children})
      : super(
          EmailOtpVerificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'EmailOtpVerificationRoute';

  static const _i42.PageInfo<void> page = _i42.PageInfo<void>(name);
}

/// generated route for
/// [_i21.OnboardingPage]
class OnboardingRoute extends _i42.PageRouteInfo<void> {
  const OnboardingRoute({List<_i42.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const _i42.PageInfo<void> page = _i42.PageInfo<void>(name);
}

/// generated route for
/// [_i22.PageListPage]
class RouteListRoute extends _i42.PageRouteInfo<void> {
  const RouteListRoute({List<_i42.PageRouteInfo>? children})
      : super(
          RouteListRoute.name,
          initialChildren: children,
        );

  static const String name = 'RouteListRoute';

  static const _i42.PageInfo<void> page = _i42.PageInfo<void>(name);
}

/// generated route for
/// [_i23.PageCreationPage]
class RouteCreationRoute extends _i42.PageRouteInfo<RouteCreationRouteArgs> {
  RouteCreationRoute({
    _i43.Key? key,
    String? heading,
    String? title,
    String? id,
    String? description,
    bool? isEdit,
    num? forWhom,
    List<_i42.PageRouteInfo>? children,
  }) : super(
          RouteCreationRoute.name,
          args: RouteCreationRouteArgs(
            key: key,
            heading: heading,
            title: title,
            id: id,
            description: description,
            isEdit: isEdit,
            forWhom: forWhom,
          ),
          rawQueryParams: {
            'heading': heading,
            'title': title,
            'id': id,
            'description': description,
            'isEdit': isEdit,
            'forWhom': forWhom,
          },
          initialChildren: children,
        );

  static const String name = 'RouteCreationRoute';

  static const _i42.PageInfo<RouteCreationRouteArgs> page =
      _i42.PageInfo<RouteCreationRouteArgs>(name);
}

class RouteCreationRouteArgs {
  const RouteCreationRouteArgs({
    this.key,
    this.heading,
    this.title,
    this.id,
    this.description,
    this.isEdit,
    this.forWhom,
  });

  final _i43.Key? key;

  final String? heading;

  final String? title;

  final String? id;

  final String? description;

  final bool? isEdit;

  final num? forWhom;

  @override
  String toString() {
    return 'RouteCreationRouteArgs{key: $key, heading: $heading, title: $title, id: $id, description: $description, isEdit: $isEdit, forWhom: $forWhom}';
  }
}

/// generated route for
/// [_i24.RegionAnalyticsPage]
class RegionAnalyticsRoute extends _i42.PageRouteInfo<void> {
  const RegionAnalyticsRoute({List<_i42.PageRouteInfo>? children})
      : super(
          RegionAnalyticsRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegionAnalyticsRoute';

  static const _i42.PageInfo<void> page = _i42.PageInfo<void>(name);
}

/// generated route for
/// [_i25.ResetPasswordPage]
class ResetPasswordRoute extends _i42.PageRouteInfo<void> {
  const ResetPasswordRoute({List<_i42.PageRouteInfo>? children})
      : super(
          ResetPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ResetPasswordRoute';

  static const _i42.PageInfo<void> page = _i42.PageInfo<void>(name);
}

/// generated route for
/// [_i26.RolesPage]
class RolesRoute extends _i42.PageRouteInfo<void> {
  const RolesRoute({List<_i42.PageRouteInfo>? children})
      : super(
          RolesRoute.name,
          initialChildren: children,
        );

  static const String name = 'RolesRoute';

  static const _i42.PageInfo<void> page = _i42.PageInfo<void>(name);
}

/// generated route for
/// [_i27.RoleCreationPage]
class RoleCreationRoute extends _i42.PageRouteInfo<RoleCreationRouteArgs> {
  RoleCreationRoute({
    _i43.Key? key,
    String? isView,
    String? isEdit,
    String? roleId,
    List<_i42.PageRouteInfo>? children,
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

  static const _i42.PageInfo<RoleCreationRouteArgs> page =
      _i42.PageInfo<RoleCreationRouteArgs>(name);
}

class RoleCreationRouteArgs {
  const RoleCreationRouteArgs({
    this.key,
    this.isView,
    this.isEdit,
    this.roleId,
  });

  final _i43.Key? key;

  final String? isView;

  final String? isEdit;

  final String? roleId;

  @override
  String toString() {
    return 'RoleCreationRouteArgs{key: $key, isView: $isView, isEdit: $isEdit, roleId: $roleId}';
  }
}

/// generated route for
/// [_i28.SendGiftPage]
class SendGiftRoute extends _i42.PageRouteInfo<SendGiftRouteArgs> {
  SendGiftRoute({
    _i43.Key? key,
    String? userId,
    List<_i42.PageRouteInfo>? children,
  }) : super(
          SendGiftRoute.name,
          args: SendGiftRouteArgs(
            key: key,
            userId: userId,
          ),
          rawQueryParams: {'id': userId},
          initialChildren: children,
        );

  static const String name = 'SendGiftRoute';

  static const _i42.PageInfo<SendGiftRouteArgs> page =
      _i42.PageInfo<SendGiftRouteArgs>(name);
}

class SendGiftRouteArgs {
  const SendGiftRouteArgs({
    this.key,
    this.userId,
  });

  final _i43.Key? key;

  final String? userId;

  @override
  String toString() {
    return 'SendGiftRouteArgs{key: $key, userId: $userId}';
  }
}

/// generated route for
/// [_i29.ServiceRequestManagementPage]
class ServiceRequestManagementRoute
    extends _i42.PageRouteInfo<ServiceRequestManagementRouteArgs> {
  ServiceRequestManagementRoute({
    _i43.Key? key,
    required String clientId,
    List<_i42.PageRouteInfo>? children,
  }) : super(
          ServiceRequestManagementRoute.name,
          args: ServiceRequestManagementRouteArgs(
            key: key,
            clientId: clientId,
          ),
          initialChildren: children,
        );

  static const String name = 'ServiceRequestManagementRoute';

  static const _i42.PageInfo<ServiceRequestManagementRouteArgs> page =
      _i42.PageInfo<ServiceRequestManagementRouteArgs>(name);
}

class ServiceRequestManagementRouteArgs {
  const ServiceRequestManagementRouteArgs({
    this.key,
    required this.clientId,
  });

  final _i43.Key? key;

  final String clientId;

  @override
  String toString() {
    return 'ServiceRequestManagementRouteArgs{key: $key, clientId: $clientId}';
  }
}

/// generated route for
/// [_i30.SideMenuPage]
class SideMenuRoute extends _i42.PageRouteInfo<void> {
  const SideMenuRoute({List<_i42.PageRouteInfo>? children})
      : super(
          SideMenuRoute.name,
          initialChildren: children,
        );

  static const String name = 'SideMenuRoute';

  static const _i42.PageInfo<void> page = _i42.PageInfo<void>(name);
}

/// generated route for
/// [_i31.SignUpPage]
class SignUpRoute extends _i42.PageRouteInfo<void> {
  const SignUpRoute({List<_i42.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i42.PageInfo<void> page = _i42.PageInfo<void>(name);
}

/// generated route for
/// [_i32.SubscriptionPage]
class SubscriptionRoute extends _i42.PageRouteInfo<void> {
  const SubscriptionRoute({List<_i42.PageRouteInfo>? children})
      : super(
          SubscriptionRoute.name,
          initialChildren: children,
        );

  static const String name = 'SubscriptionRoute';

  static const _i42.PageInfo<void> page = _i42.PageInfo<void>(name);
}

/// generated route for
/// [_i33.TransactionManagementPage]
class TransactionManagementRoute
    extends _i42.PageRouteInfo<TransactionManagementRouteArgs> {
  TransactionManagementRoute({
    _i43.Key? key,
    String? clientId,
    List<_i42.PageRouteInfo>? children,
  }) : super(
          TransactionManagementRoute.name,
          args: TransactionManagementRouteArgs(
            key: key,
            clientId: clientId,
          ),
          initialChildren: children,
        );

  static const String name = 'TransactionManagementRoute';

  static const _i42.PageInfo<TransactionManagementRouteArgs> page =
      _i42.PageInfo<TransactionManagementRouteArgs>(name);
}

class TransactionManagementRouteArgs {
  const TransactionManagementRouteArgs({
    this.key,
    this.clientId,
  });

  final _i43.Key? key;

  final String? clientId;

  @override
  String toString() {
    return 'TransactionManagementRouteArgs{key: $key, clientId: $clientId}';
  }
}

/// generated route for
/// [_i34.UpcomingBirthdayPage]
class UpcomingBirthdayRoute extends _i42.PageRouteInfo<void> {
  const UpcomingBirthdayRoute({List<_i42.PageRouteInfo>? children})
      : super(
          UpcomingBirthdayRoute.name,
          initialChildren: children,
        );

  static const String name = 'UpcomingBirthdayRoute';

  static const _i42.PageInfo<void> page = _i42.PageInfo<void>(name);
}

/// generated route for
/// [_i35.UserManagementPage]
class UserManagementRoute extends _i42.PageRouteInfo<void> {
  const UserManagementRoute({List<_i42.PageRouteInfo>? children})
      : super(
          UserManagementRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserManagementRoute';

  static const _i42.PageInfo<void> page = _i42.PageInfo<void>(name);
}

/// generated route for
/// [_i36.UserManagementDetailPage]
class UserManagementDetailRoute
    extends _i42.PageRouteInfo<UserManagementDetailRouteArgs> {
  UserManagementDetailRoute({
    _i43.Key? key,
    String? id,
    List<_i42.PageRouteInfo>? children,
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

  static const _i42.PageInfo<UserManagementDetailRouteArgs> page =
      _i42.PageInfo<UserManagementDetailRouteArgs>(name);
}

class UserManagementDetailRouteArgs {
  const UserManagementDetailRouteArgs({
    this.key,
    this.id,
  });

  final _i43.Key? key;

  final String? id;

  @override
  String toString() {
    return 'UserManagementDetailRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i37.SubProfileView]
class SubProfileView extends _i42.PageRouteInfo<SubProfileViewArgs> {
  SubProfileView({
    _i43.Key? key,
    required String userId,
    List<_i42.PageRouteInfo>? children,
  }) : super(
          SubProfileView.name,
          args: SubProfileViewArgs(
            key: key,
            userId: userId,
          ),
          initialChildren: children,
        );

  static const String name = 'SubProfileView';

  static const _i42.PageInfo<SubProfileViewArgs> page =
      _i42.PageInfo<SubProfileViewArgs>(name);
}

class SubProfileViewArgs {
  const SubProfileViewArgs({
    this.key,
    required this.userId,
  });

  final _i43.Key? key;

  final String userId;

  @override
  String toString() {
    return 'SubProfileViewArgs{key: $key, userId: $userId}';
  }
}

/// generated route for
/// [_i38.VerifyEmailPage]
class VerifyEmailRoute extends _i42.PageRouteInfo<void> {
  const VerifyEmailRoute({List<_i42.PageRouteInfo>? children})
      : super(
          VerifyEmailRoute.name,
          initialChildren: children,
        );

  static const String name = 'VerifyEmailRoute';

  static const _i42.PageInfo<void> page = _i42.PageInfo<void>(name);
}

/// generated route for
/// [_i39.VideoManagementPage]
class VideoManagementRoute extends _i42.PageRouteInfo<void> {
  const VideoManagementRoute({List<_i42.PageRouteInfo>? children})
      : super(
          VideoManagementRoute.name,
          initialChildren: children,
        );

  static const String name = 'VideoManagementRoute';

  static const _i42.PageInfo<void> page = _i42.PageInfo<void>(name);
}

/// generated route for
/// [_i40.VideoUploadPage]
class VideoUploadRoute extends _i42.PageRouteInfo<VideoUploadRouteArgs> {
  VideoUploadRoute({
    _i43.Key? key,
    String? isEdit,
    String? title,
    num? type,
    String? attachment,
    String? id,
    List<_i42.PageRouteInfo>? children,
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

  static const _i42.PageInfo<VideoUploadRouteArgs> page =
      _i42.PageInfo<VideoUploadRouteArgs>(name);
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

  final _i43.Key? key;

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
/// [_i41.PendingServicePage]
class PendingServiceRoute extends _i42.PageRouteInfo<PendingServiceRouteArgs> {
  PendingServiceRoute({
    _i43.Key? key,
    required String clientId,
    List<_i42.PageRouteInfo>? children,
  }) : super(
          PendingServiceRoute.name,
          args: PendingServiceRouteArgs(
            key: key,
            clientId: clientId,
          ),
          initialChildren: children,
        );

  static const String name = 'PendingServiceRoute';

  static const _i42.PageInfo<PendingServiceRouteArgs> page =
      _i42.PageInfo<PendingServiceRouteArgs>(name);
}

class PendingServiceRouteArgs {
  const PendingServiceRouteArgs({
    this.key,
    required this.clientId,
  });

  final _i43.Key? key;

  final String clientId;

  @override
  String toString() {
    return 'PendingServiceRouteArgs{key: $key, clientId: $clientId}';
  }
}
