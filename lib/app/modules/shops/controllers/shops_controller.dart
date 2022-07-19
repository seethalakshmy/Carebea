import 'package:carebea/app/modules/shops/models/order_list_model.dart';
import 'package:carebea/app/modules/shops/models/shop_model.dart';
import 'package:carebea/app/modules/shops/repo/order_list_repo.dart';
import 'package:carebea/app/modules/shops/repo/shop_list_repo.dart';
import 'package:carebea/app/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../utils/shared_prefs.dart';

class ShopsController extends GetxController {
  ShopListRepo shopListRepo = ShopListRepo();
  OrderListRepo orderListRepo = OrderListRepo();
  RxBool isOrdersLoading = false.obs;
  RxBool isLoading = false.obs;
  ShopListResponse? shopListResponse;
  List<ShopList>? shopList;
  ShopListResponse? shopFilterResponse;
  ShopListResponse? shopSearchResult;
  ShopListResponse? shopDetailResponse;
  RxBool isFilterClick = false.obs;
  RxBool isShopDetailsLoading = false.obs;
  DateTime? backbuttonpressedTime;
  OrderListResponse? orderListResponse;
  List<History>? orderHistory;

  //TODO: Implement ShopsController

  final count = 0.obs;

  @override
  void onInit() {
    fetchAllShops();
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

  fetchAllShops() async {
    isLoading(true);
    shopListResponse = await shopListRepo.shopList(SharedPrefs.getUserId()!);
    if (shopListResponse!.shopListResult!.status == true) {
      shopList = shopListResponse!.shopListResult!.shopList;
    } else {
      shopList = [];
    }

    debugPrint("fetchAllShops $shopListResponse");

    debugPrint('fetch shops status ${shopListResponse!.shopListResult!.status!}');

    isLoading(false);
  }

  fetchOrders(String orderType, int shopId) async {
    isOrdersLoading(true);

    orderListResponse = await orderListRepo.orderList(SharedPrefs.getUserId()!, orderType, shopId);
    if (orderListResponse!.orderListResult!.status == true) {
      orderHistory = orderListResponse!.orderListResult!.history;
    } else {
      orderHistory = [];
    }
    debugPrint("fetchAllOrders $orderListResponse");

    debugPrint('fetch order status ${orderListResponse!.orderListResult!.status}');

    isOrdersLoading(false);
  }

  RxString filterSelected = "".obs;
  filterShops(String filterName, int filterId) async {
    isFilterClick(true);
    filterSelected("$filterName-$filterId");
    shopFilterResponse = await shopListRepo.shopFilter(SharedPrefs.getUserId()!, filterName, filterId);
    isFilterClick(false);
  }

  shopDetail(int shopId) async {
    isShopDetailsLoading(true);
    shopDetailResponse = await shopListRepo.shopDetails(SharedPrefs.getUserId()!, shopId);
    isShopDetailsLoading(false);
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

  void clearFilters() async {
    filterSelected("");
    await fetchAllShops();
  }
}
