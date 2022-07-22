import 'package:carebea/app/modules/add_shop/models/list_routes_model.dart';
import 'package:carebea/app/modules/add_shop/repo/add_shop_repo.dart';
import 'package:carebea/app/modules/shops/models/order_list_model.dart';
import 'package:get/get.dart';

class RoutePageController extends GetxController {
  AddShopRepo addShopRepo = AddShopRepo();
  RouteListResponse? routeListResponseRoutePage;
  RxBool isRouteListRoutePageLoading = true.obs;
  String selectedDate = '';
  List<PoolList> routeList = [];

  @override
  void onInit() {
    fetchRouteListCalender(date: selectedDate);
    super.onInit();
  }

  fetchRouteListCalender({String? date})async{
    isRouteListRoutePageLoading(true);
    routeList.clear();
    routeListResponseRoutePage = await addShopRepo.routeListCalender(date: date);
    if (routeListResponseRoutePage!.routeListResult!.status ?? false) {
      routeList = routeListResponseRoutePage!.routeListResult!.poolList ?? [];
    }
    isRouteListRoutePageLoading(false);

  }




}
