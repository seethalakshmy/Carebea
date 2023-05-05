import 'package:auto_route/annotations.dart';

import '../already/dashboard/dash_board_page.dart';
import '../caregivers/caregivers_page.dart';
import '../login/login_page.dart';
import '../menu_bar/menu_bar_view.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: LoginPage,
      path: 'login',
      initial: true,
    ),
    AutoRoute(
      path: '/',
      page: MenuBarView,
      children: [
        AutoRoute(path: 'dashboard', page: DashboardPage),
        AutoRoute(path: 'caregivers', page: CareGiversPage,),
      ],
    ),
  ],
)
class $AppRouter {}
