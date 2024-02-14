import 'package:get/get.dart';

import '../controllers/near_by_shop_controller.dart';

class NearByShopsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NearByShopsController>(
      () => NearByShopsController(),
    );
  }
}
