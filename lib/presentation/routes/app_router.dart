import 'package:admin_580_tech/presentation/caregiver_profile/caregiver_profile_page.dart';
import 'package:admin_580_tech/presentation/caregiver_verification/caregiver_verification_page.dart';
import 'package:admin_580_tech/presentation/forgot_password/forgot_password_page.dart';
import 'package:admin_580_tech/presentation/on_boarding/on_boarding_page.dart';
import 'package:admin_580_tech/presentation/reset_password/reset_password_page.dart';
import 'package:admin_580_tech/presentation/user_management/user_management_page.dart';
import 'package:admin_580_tech/presentation/user_mangement_detail/user_managemet_detail_page.dart';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';

import '../caregiver_creation/caregiver_creation_page.dart';
import '../caregiver_detail/caregiver_detail_page.dart';
import '../caregivers/caregivers_page.dart';
import '../dashboard/dashboard_page.dart';
import '../login/login_page.dart';
import '../side_menu/side_menu_page.dart';
import '../transaction_management/transaction_management_page.dart';
import 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => RouteType.adaptive();
  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: LoginRoute.page, path: '/admin/login', initial: true),
    AutoRoute(
        page: ForgotPasswordRoute.page,
        maintainState: false,
        path: '/admin/forgot-password'),
    AutoRoute(
        page: ResetPasswordRoute.page,
        maintainState: false,
        path: '/admin/reset-password'),
    AutoRoute(page: SideMenuRoute.page, path: "/admin", children: [
      AutoRoute(path: 'dashboard', page: DashboardRoute.page, initial: true),
      AutoRoute(path: 'care-ambassador', page: CareGiversRoute.page),
      AutoRoute(path: 'user-management', page: UserManagementRoute.page),
      AutoRoute(
          path: 'care-ambassador-detail',
          page: CareGiverDetailRoute.page,
          maintainState: false),
      AutoRoute(
          path: 'user-management-detail', page: UserManagementDetailRoute.page),
      AutoRoute(
          path: 'transaction-management',
          page: TransactionManagementRoute.page),
      AutoRoute(
          path: 'care-ambassador-profile', page: CareGiverProfileRoute.page),
      AutoRoute(
          path: 'care-ambassador-creation', page: CaregiverCreationRoute.page),
      AutoRoute(path: 'caregiver-on_boarding', page: OnboardingRoute.page),
      AutoRoute(
          path: 'care-ambassador-verification',
          page: CaregiverVerificationRoute.page,
          maintainState: false),
    ]),
  ];
}
