import 'package:carebea/app/modules/shops/models/order_list_model.dart';
import 'package:carebea/app/modules/shops/repo/order_list_repo.dart';
import 'package:carebea/app/utils/shared_prefs.dart';
import 'package:get/get.dart';

class OrdersController extends GetxController {
  OrderListRepo orderListRepo = OrderListRepo();
  OrderListResponse? allorderListResponse;
  RxBool isOrdersLoaded = false.obs;
  RxBool isFilterClick = false.obs;
  List<History> allOrders = [];
  FilterVals? filterVals;

  @override
  void onInit() {
    fetchOrdersList(orderType: 'Previous');
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  fetchOrdersList({required String orderType}) async {
    isOrdersLoaded(true);
    allOrders.clear();
    filterSelected("");
    allorderListResponse = await orderListRepo.allOrdersList(SharedPrefs.getUserId()!, orderType);
    print('orderType $orderType');
    if (allorderListResponse?.orderListResult?.status ?? false) {
      allOrders = allorderListResponse?.orderListResult?.history ?? [];
      filterVals = allorderListResponse!.orderListResult!.filterVals;
    } else {
      allOrders = [];
    }

    isOrdersLoaded(false);
  }

  RxString filterSelected = "".obs;
  filterOrders(String filterName, int filterId, String orderType) async {
    allOrders.clear();
    isFilterClick(true);
    filterSelected("$filterName-$filterId");
    var orderResponse = await orderListRepo.allOrdersList(SharedPrefs.getUserId()!, orderType,
        filtername: filterName, filterid: filterId.toString());
    if (orderResponse.orderListResult?.status ?? false) {
      allOrders = orderResponse.orderListResult?.history ?? [];
    }
    isFilterClick(false);
  }

  clearFilters(String orderType) async {
    await fetchOrdersList(orderType: orderType);
  }
}
