import 'package:get/get.dart';

import '../controllers/app_start_up_controller.dart';

class AppStartUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AppStartUpController>(
      () => AppStartUpController(),
    );
  }
}
