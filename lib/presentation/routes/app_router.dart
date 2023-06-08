import 'package:admin_580_tech/presentation/cargiver_detail/caregiver_detail_page.dart';
import 'package:admin_580_tech/presentation/forgot_password/forgot_password_page.dart';
import 'package:admin_580_tech/presentation/reset_password/reset_password_page.dart';
import 'package:admin_580_tech/presentation/user_management/user_management_page.dart';
import 'package:admin_580_tech/presentation/user_mangement_detail/user_managemet_detail_page.dart';
import 'package:auto_route/annotations.dart';

import '../caregivers/caregivers_page.dart';
import '../dashboard/dashboard_page.dart';
import '../login/login_page.dart';
import '../menu_bar/menu_bar_view.dart';
import '../test.dart';
import '../side_menu/side_menu_page.dart';

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
      path: '/admin/forgot-password'
    ),
    AutoRoute(
        page: ResetPasswordPage,
        maintainState: false,
        path: '/admin/reset-password'
    ),
    AutoRoute(
      page: SideMenuPage,
      path: "/admin",
      children: [
        AutoRoute(path: 'dashboard', page: DashboardPage,initial: true),
        AutoRoute(path: 'care-ambassador', page: CareGiversPage,),
        AutoRoute(path: 'user-management', page: UserManagementPage,),
        AutoRoute(path: 'care-ambassador-detail', page: CareGiverDetailPage,),
        AutoRoute(path: 'user-management-detail', page: UserManagementDetailPage,),
        // AutoRoute(path: 'caregiver-detail', page: TestPage,),
        AutoRoute(path: 'transaction-management', page: TransactionManagementPage,),
      ],
    ),
  ],
)
class $AppRouter {}
