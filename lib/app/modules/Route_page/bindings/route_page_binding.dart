import 'package:get/get.dart';

import '../controllers/route_page_controller.dart';

class RoutePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RoutePageController>(
      () => RoutePageController(),
    );
  }
}
