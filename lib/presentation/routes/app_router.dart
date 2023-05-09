import 'package:admin_580_tech/presentation/forgot_password/forgot_password_page.dart';
import 'package:admin_580_tech/presentation/reset_password/reset_password_page.dart';
import 'package:auto_route/annotations.dart';

import '../already/dashboard/dash_board_page.dart';
import '../caregivers/caregivers_page.dart';
import '../login/login_page.dart';
import '../menu_bar/menu_bar_view.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: LoginPage,
      name: 'login',
      initial: true,
    ),
    AutoRoute(
      page: ForgotPasswordPage,
      maintainState: false,
      path: '/forgot-password'
    ),
    AutoRoute(
        page: ResetPasswordPage,
        maintainState: false,
        path: '/reset-password'
    ),
    AutoRoute(
      page: MenuBarView,
      children: [
        AutoRoute(path: 'dashboard', page: DashboardPage,initial: true),
        AutoRoute(path: 'caregivers', page: CareGiversPage,),
      ],
    ),
  ],
)
class $AppRouter {}
