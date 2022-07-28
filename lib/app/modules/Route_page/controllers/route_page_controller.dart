import 'package:carebea/app/modules/Route_page/data/model/route_page_response.dart';
import 'package:carebea/app/modules/Route_page/data/repository/route_page_repository.dart';
import 'package:carebea/app/modules/add_shop/models/list_routes_model.dart';
import 'package:carebea/app/modules/add_shop/repo/add_shop_repo.dart';
import 'package:carebea/app/modules/shops/models/order_list_model.dart';
import 'package:carebea/app/utils/shared_prefs.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class RoutePageController extends GetxController {
  RoutePageRepository _repository = RoutePageRepository();
  RouteByDateResponse? routeListResponseRoutePage;
  RxBool isRouteListRoutePageLoading = false.obs;
  String selectedDate = '';
  List<RouteList> routeList = [];

  @override
  void onInit() {
    // fetchRouteListCalender(date: selectedDate);
    super.onInit();
  }

  fetchRouteListCalender({String? date}) async {
    isRouteListRoutePageLoading(true);
    routeList.clear();
    routeListResponseRoutePage = await _repository.fetchRouteByDate(userId: SharedPrefs.getUserId()!, date: date!);
    if (routeListResponseRoutePage!.result!.status ?? false) {
      routeList = routeListResponseRoutePage!.result!.routeList ?? [];
    }
    isRouteListRoutePageLoading(false);
  }
}
