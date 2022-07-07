import 'package:get/get.dart';

import '../controllers/delivery_invoice_details_controller.dart';

class DeliveryInvoiceDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DeliveryInvoiceDetailsController>(
      () => DeliveryInvoiceDetailsController(),
    );
  }
}
