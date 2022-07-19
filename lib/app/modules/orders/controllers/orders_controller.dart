import 'package:carebea/app/modules/shops/models/order_list_model.dart';
import 'package:carebea/app/modules/shops/repo/order_list_repo.dart';
import 'package:carebea/app/utils/shared_prefs.dart';
import 'package:get/get.dart';

class OrdersController extends GetxController {
  OrderListRepo orderListRepo = OrderListRepo();
  OrderListResponse? allorderListResponse;
  RxBool isOrdersLoaded = false.obs;
  List<History>? allOrders;
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
    allOrders!.clear();
    allorderListResponse = await orderListRepo.allOrdersList(SharedPrefs.getUserId()!, orderType);
    print('orderType $orderType');
    if (allorderListResponse!.orderListResult!.status == true) {
      allOrders = allorderListResponse!.orderListResult!.history;
      filterVals = allorderListResponse!.orderListResult!.filterVals;
    } else {
      allOrders = [];
    }

    isOrdersLoaded(false);
  }
}
