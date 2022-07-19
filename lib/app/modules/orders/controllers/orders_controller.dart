import 'package:carebea/app/modules/shops/models/order_list_model.dart';
import 'package:carebea/app/modules/shops/repo/order_list_repo.dart';
import 'package:carebea/app/utils/shared_prefs.dart';
import 'package:get/get.dart';

class OrdersController extends GetxController {
  OrderListRepo orderListRepo = OrderListRepo();
  OrderListResponse? allorderListResponse;
  RxBool isOrdersLoaded = false.obs;
  List<History>? allOrders;

  //TODO: Implement OrdersController

  final count = 0.obs;

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

  void increment() => count.value++;

  fetchOrdersList({required String orderType}) async {
    isOrdersLoaded(true);
    allorderListResponse = await orderListRepo.allOrdersList(SharedPrefs.getUserId()!, orderType);
    print('orderType $orderType');
    if(allorderListResponse!.orderListResult!.status == true){
      allOrders = allorderListResponse!.orderListResult!.history;

    }else{
      allOrders = [];
    }

    isOrdersLoaded(false);



  }
}