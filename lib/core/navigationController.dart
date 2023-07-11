import 'package:admin_580_tech/presentation/routes/app_router.gr.dart';
import 'package:admin_580_tech/presentation/side_menu/side_menu_page.dart';

class NavigationController {
  navigateTo(String routeName, {String? userID, int? page, int? tab}) {
    autoTabRouter?.navigate(CareGiversRoute(tab: tab, page: page));
  }
}
