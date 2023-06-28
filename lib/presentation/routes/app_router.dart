import 'package:admin_580_tech/presentation/caregiver_profile/caregiver_profile_page.dart';
import 'package:admin_580_tech/presentation/caregiver_verification/caregiver_verification_page.dart';
import 'package:admin_580_tech/presentation/forgot_password/forgot_password_page.dart';
import 'package:admin_580_tech/presentation/on_boarding/on_boarding_page.dart';
import 'package:admin_580_tech/presentation/reset_password/reset_password_page.dart';
import 'package:admin_580_tech/presentation/user_management/user_management_page.dart';
import 'package:admin_580_tech/presentation/user_mangement_detail/user_managemet_detail_page.dart';
import 'package:auto_route/annotations.dart';

import '../caregiver_creation/caregiver_creation_page.dart';
import '../caregiver_detail/caregiver_detail_page.dart';
import '../caregivers/caregivers_page.dart';
import '../dashboard/dashboard_page.dart';
import '../login/login_page.dart';
import '../side_menu/side_menu_page.dart';
import '../transaction_management/transaction_management_page.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: LoginPage,
      path: '/admin/login',
      initial: true,
    ),
    AutoRoute(
        page: ForgotPasswordPage,
        maintainState: false,
        path: '/admin/forgot-password'),
    AutoRoute(
        page: ResetPasswordPage,
        maintainState: false,
        path: '/admin/reset-password'),
    AutoRoute(
      page: SideMenuPage,
      path: "/admin",
      children: [
        AutoRoute(path: 'dashboard', page: DashboardPage, initial: true),
        AutoRoute(
          path: 'care-ambassador',
          page: CareGiversPage,
        ),
        AutoRoute(
          path: 'user-management',
          page: UserManagementPage,
        ),
        AutoRoute(
          path: 'care-ambassador-detail',
          page: CareGiverDetailPage,
        ),
        AutoRoute(
          path: 'user-management-detail',
          page: UserManagementDetailPage,
        ),
        // AutoRoute(path: 'caregiver-detail', page: TestPage,),
        AutoRoute(
          path: 'transaction-management',
          page: TransactionManagementPage,
        ),
        AutoRoute(
          path: 'care-ambassador-profile',
          page: CareGiverProfilePage,
        ),
        AutoRoute(
          path: 'care-ambassador-creation',
          page: CaregiverCreationPage,
        ),
        AutoRoute(
          path: 'caregiver-on_boarding',
          page: OnboardingPage,
        ),
        AutoRoute(
          path: 'care-ambassador-verification',
          page: CaregiverVerificationPage,
        ),
      ],
    ),
  ],
)
class $AppRouter {}
