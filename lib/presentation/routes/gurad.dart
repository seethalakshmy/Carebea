import 'package:admin_580_tech/infrastructure/shared_preference/shared_preff_util.dart';
import 'package:admin_580_tech/presentation/routes/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';

class DashBoardGuardGuard extends AutoRouteGuard {
  SharedPreffUtil appStorage = SharedPreffUtil();

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    await appStorage.init();
    if (appStorage.getLogin) {
      router.navigate(const SideMenuRoute());
    } else {
      resolver.next(true);
    }
  }
}
