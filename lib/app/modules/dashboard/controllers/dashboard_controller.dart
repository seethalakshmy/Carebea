import 'package:carebea/app/modules/home/controllers/home_controller.dart';
import 'package:carebea/app/modules/orders/controllers/orders_controller.dart';
import 'package:carebea/app/modules/shops/controllers/shops_controller.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  HomeController _homeController = Get.put(HomeController());
  ShopsController _shopsController = Get.put(ShopsController());
  OrdersController _ordersController = Get.put(OrdersController());

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

  bottomNavViewChange(int index) {
    if (index == 0) {
      // _homeController.
    }
    if (index == 1) {
      _shopsController.fetchAllShops();
    }
    if (index == 2) {
      _ordersController.fetchOrdersList(orderType: "Previous");
    }
    currentScreenIndex.value = index;
  }

  Future<bool> onWillpopClose() async {
    DateTime currentTime = DateTime.now();
    bool backButton =
        backbuttonpressedTime == null || currentTime.difference(backbuttonpressedTime!) > const Duration(seconds: 3);

    if (backButton) {
      backbuttonpressedTime = currentTime;
      Get.snackbar('', 'Tap again to close the app', duration: const Duration(seconds: 1));
      // SnackBar(content: Text(buildTranslate(context, "tap_back")));
      return false;
    } else {
      Get.back();
    }
    return true;
  }
}
