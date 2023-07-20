import '../presentation/routes/app_router.gr.dart';
import '../presentation/side_menu/side_menu_page.dart';

class NavigationController {
  navigateTo(String routeName, {String? userID, int? page, int? tab}) {
    autoTabRouter?.navigate(CareGiversRoute(tab: tab, page: page));
  }
}
