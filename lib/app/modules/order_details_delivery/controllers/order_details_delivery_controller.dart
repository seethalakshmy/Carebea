import 'package:carebea/app/modules/shops/models/order_list_model.dart';
import 'package:carebea/app/modules/shops/repo/order_list_repo.dart';
import 'package:carebea/app/utils/shared_prefs.dart';
import 'package:get/get.dart';

class OrderDetailsDeliveryController extends GetxController {
  OrderListRepo orderListRepo = OrderListRepo();
  OrderListResponse? orderListDetailResponse;
  RxBool isOrderDetailsLoading = true.obs;

  @override
  void onInit() {
    fetchOrderDetails(Get.arguments['order_id']);
    super.onInit();
  }

  fetchOrderDetails(int orderId) async {
    isOrderDetailsLoading(true);
    orderListDetailResponse =
        await orderListRepo.orderDetails(salesPersonId: SharedPrefs.getUserId(), orderId: orderId);
    isOrderDetailsLoading(false);
  }
}
