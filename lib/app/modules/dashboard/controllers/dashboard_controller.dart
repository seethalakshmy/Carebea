import 'package:get/get.dart';

class DashboardController extends GetxController {

  final currentScreenIndex = 0.obs;
  @override
  void onInit() {
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

  bottomNavViewChange(int index){
    currentScreenIndex.value = index;

  }

}
