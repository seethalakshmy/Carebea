import 'package:carebea/app/modules/shops/models/order_list_model.dart';
import 'package:carebea/app/modules/shops/repo/order_list_repo.dart';
import 'package:carebea/app/utils/shared_prefs.dart';
import 'package:get/get.dart';

class OrderHistoryDetailsController extends GetxController {
  OrderListRepo orderListRepo = OrderListRepo();
  OrderListResponse? orderListDetailResponse;
  RxBool isOrderDetailsLoaded = true.obs;
  //TODO: Implement OrderHistoryDetailsController

  final count = 0.obs;
  @override
  void onInit() {
    print("on init callled");
    fetchOrderDetails(Get.arguments['order_id']);
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

  fetchOrderDetails(int orderId)async{
    isOrderDetailsLoaded(true);
    orderListDetailResponse =await orderListRepo.orderDetails(salesPersonId:SharedPrefs.getUserId(),orderId:orderId );
    isOrderDetailsLoaded(false);

  }
}


