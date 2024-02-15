import 'package:carebea/app/modules/remark_history/controllers/remark_history_controller.dart';
import 'package:get/get.dart';

class RemarkHistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RemarkHistoryController>(
      () => RemarkHistoryController(),
    );
  }
}
