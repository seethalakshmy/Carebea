import 'package:admin_580_tech/presentation/admin_creation/admin_creation_page.dart';
import 'package:admin_580_tech/presentation/admins/admins_page.dart';
import 'package:admin_580_tech/presentation/caregiver_profile/caregiver_profile_page.dart';
import 'package:admin_580_tech/presentation/caregiver_verification/caregiver_verification_page.dart';
import 'package:admin_580_tech/presentation/forgot_password/forgot_password_page.dart';
import 'package:admin_580_tech/presentation/on_boarding/on_boarding_page.dart';
import 'package:admin_580_tech/presentation/reset_password/reset_password_page.dart';
import 'package:admin_580_tech/presentation/service_request_management/service_request_management_page.dart';
import 'package:admin_580_tech/presentation/roles/role_page.dart';
import 'package:admin_580_tech/presentation/user_management/user_management_page.dart';
import 'package:admin_580_tech/presentation/user_mangement_detail/user_managemet_detail_page.dart';
import 'package:auto_route/auto_route.dart';

import '../caregiver_creation/caregiver_creation_page.dart';
import '../caregiver_detail/caregiver_detail_page.dart';
import '../caregivers/caregivers_page.dart';
import '../dashboard/dashboard_page.dart';
import '../login/login_page.dart';
import '../role_creation/role_creation_page.dart';
import '../service_details/service_details_page.dart';
import '../side_menu/side_menu_page.dart';
import '../transaction_management/transaction_management_page.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: LoginPage,
      path: 'admin/login',
      initial: true,
    ),
    AutoRoute(
        page: ForgotPasswordPage,
        maintainState: false,
        path: 'admin/forgot-password'),
    AutoRoute(
        page: ResetPasswordPage,
        maintainState: false,
        path: 'admin/reset-password'),
    AutoRoute(
      page: SideMenuPage,
      path: "admin/main",
      children: [
        AutoRoute(path: 'dashboard', page: DashboardPage, initial: true),
        AutoRoute(
            path: 'care-ambassador', page: CareGiversPage, maintainState: true),
        AutoRoute(
          path: 'user-management',
          page: UserManagementPage,
        ),
        AutoRoute(
            path: 'care-ambassador-detail',
            page: CareGiverDetailPage,
            maintainState: true),
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
            maintainState: false),
        AutoRoute(
            path: 'service-request-management',
            page: ServiceRequestManagementPage,
            maintainState: false),
        AutoRoute(
            path: 'role-management', page: RolesPage, maintainState: false),
        AutoRoute(
            path: "role-manage", page: RoleCreationPage, maintainState: false),
        AutoRoute(
            path: "admin-manage",
            page: AdminCreationPage,
            maintainState: false),
        AutoRoute(
            path: "admin-management", page: AdminsPage, maintainState: false),
        AutoRoute(
            path: "service-details", page: ServiceDetailsPage, maintainState: false),
      ],
    ),
  ],
)
class $AppRouter {}
