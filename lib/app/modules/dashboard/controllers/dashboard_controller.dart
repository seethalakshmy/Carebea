import 'package:get/get.dart';

class DashboardController extends GetxController {

  final currentScreenIndex = 0.obs;
  DateTime? backbuttonpressedTime;
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
  Future<bool> onWillpopClose() async {
    DateTime currentTime = DateTime.now();
    bool backButton = backbuttonpressedTime == null ||
        currentTime.difference(backbuttonpressedTime!) > const Duration(seconds: 3);

    if (backButton) {
      backbuttonpressedTime = currentTime;
      Get.snackbar('', 'Tap again to close the app',duration:const Duration(seconds: 1) );
      // SnackBar(content: Text(buildTranslate(context, "tap_back")));
      return false;
    } else {
      Get.back();
    }
    return true;
  }

}
