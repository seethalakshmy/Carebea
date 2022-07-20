import 'dart:developer';

import 'package:carebea/app/modules/shops/models/shop_model.dart';
import 'package:carebea/app/modules/shops/repo/shop_list_repo.dart';
import 'package:carebea/app/utils/shared_prefs.dart';
import 'package:get/get.dart';

class CreateOrderController extends GetxController {
  DateTime? backbuttonpressedTime;
  final ShopListRepo _shopRepo = ShopListRepo();

  RxBool isLoading = true.obs;

  RxList<ShopList> shopList = <ShopList>[].obs;

  final count = 0.obs;
  @override
  void onInit() {
    fetchShops();
    super.onInit();
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

  Future<void> fetchShops() async {
    isLoading(true);
    try {
      var res = await _shopRepo.shopList(SharedPrefs.getUserId()!);
      shopList(res.shopListResult?.shopList ?? []);
    } catch (error, stacktrace) {
      log("error", error: error, stackTrace: stacktrace);
    }
    isLoading(false);
  }
}
