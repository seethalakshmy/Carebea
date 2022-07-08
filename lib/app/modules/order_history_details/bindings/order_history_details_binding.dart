import 'package:get/get.dart';

import '../controllers/order_history_details_controller.dart';

class OrderHistoryDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OrderHistoryDetailsController>(
      () => OrderHistoryDetailsController(),
    );
  }
}
