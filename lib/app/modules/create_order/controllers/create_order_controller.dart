import 'dart:developer';

import 'package:carebea/app/modules/create_order/data/repository/create_order_repository.dart';
import 'package:carebea/app/modules/create_order/data/repository/product_list_repo.dart';
import 'package:carebea/app/modules/create_order/model/productlist_model.dart';
import 'package:carebea/app/modules/shops/models/shop_model.dart';
import 'package:carebea/app/modules/shops/repo/shop_list_repo.dart';
import 'package:carebea/app/utils/shared_prefs.dart';
import 'package:get/get.dart';

class CreateOrderController extends GetxController {
  DateTime? backbuttonpressedTime;
  final ShopListRepo _shopRepo = ShopListRepo();
  final CreateOrderRepository _repository = CreateOrderRepository();
  RxMap<int, int> cartproducts = RxMap();
  RxBool isLoading = true.obs;
  RxBool isProductsLoading = true.obs;
  final ProductListRepo _productListRepo = ProductListRepo();
  RxList<ProductList> productList = <ProductList>[].obs;

  RxList<ShopList> shopList = <ShopList>[].obs;

  final count = 0.obs;
  @override
  void onInit() {
    fetchShops();
    fetchProducts();
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

  updateCartProduct(int id, int count) {
    if (count == 0) {
      cartproducts.removeWhere((key, value) => key == id);
      return;
    }

    cartproducts[id] = count;
  }

  RxBool creatingOrder = true.obs;
  createOrder() async {
    creatingOrder(true);
    var res = await _repository.createOrder(
        shopId: (Get.arguments["shop"] as ShopList).id, salesPersonId: SharedPrefs.getUserId(), products: cartproducts);
    creatingOrder(false);
  }

  Future<void> fetchProducts() async {
    isProductsLoading(true);
    try {
      var res = await _productListRepo.productList();
      productList(res.productListResult?.productList??[]);
    } catch (error, stacktrace) {
      log("error", error: error, stackTrace: stacktrace);
    }
    isProductsLoading(false);
  }


  productPrice(String category,ProductList product) {

    switch (category) {
      case 'retail':
        return product.retailPrice;
      case 'department shop':
        return product.departmentPrice;
      case 'wholesale':
        return product.wholesalePrice;
      case 'supermarket':
        return product.supermarketPrice;
    }
  }

}
