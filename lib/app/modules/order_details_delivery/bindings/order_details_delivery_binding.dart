import 'package:get/get.dart';

import '../controllers/order_details_delivery_controller.dart';

class OrderDetailsDeliveryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OrderDetailsDeliveryController>(
      () => OrderDetailsDeliveryController(),
    );
  }
}
