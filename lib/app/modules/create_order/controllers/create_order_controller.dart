import 'dart:developer';

import 'package:carebea/app/modules/create_order/data/repository/create_order_repository.dart';
import 'package:carebea/app/modules/create_order/data/repository/product_list_repo.dart';
import 'package:carebea/app/modules/create_order/model/create_order.dart';
import 'package:carebea/app/modules/create_order/model/productlist_model.dart';
import 'package:carebea/app/modules/create_order/views/check_out_view.dart';
import 'package:carebea/app/modules/create_order/views/order_summary_view.dart';
import 'package:carebea/app/modules/shops/models/shop_model.dart';
import 'package:carebea/app/modules/shops/repo/shop_list_repo.dart';
import 'package:carebea/app/routes/app_pages.dart';
import 'package:carebea/app/utils/assets.dart';
import 'package:carebea/app/utils/shared_prefs.dart';
import 'package:carebea/app/utils/show_snackbar.dart';
import 'package:carebea/app/utils/widgets/custom_alertbox.dart';
import 'package:carebea/app/utils/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateOrderController extends GetxController {
  DateTime? backbuttonpressedTime;
  final ShopListRepo _shopRepo = ShopListRepo();
  final CreateOrderRepository _repository = CreateOrderRepository();
  RxMap<int, TextEditingController> cartproducts = RxMap<int, TextEditingController>();
  RxMap<int, FocusNode> cartproductsFocusNode = RxMap<int, FocusNode>();
  RxBool isLoading = true.obs;
  RxBool isProductsLoading = true.obs;
  final ProductListRepo _productListRepo = ProductListRepo();
  RxList<ProductList> productList = <ProductList>[].obs;
  List<ProductList> _products = [];
  List<ProductList> selectedProducts = [];
  TextEditingController commentController = TextEditingController();

  RxList<ShopList> shopList = <ShopList>[].obs;
  RxDouble totalCartCost = 0.0.obs;
  CreateOrderResponse? createOrderResponse;

  ShopList? selectedShop;

  final count = 0.obs;
  @override
  void onInit() {
    clearProducts();
    fetchShops();
    super.onInit();
  }

  clearProducts() async {
    selectedProducts.clear();
    _products.clear();
    productList.clear();
    cartproducts.clear();
    totalCartCost(0);
  }

  Future<bool> onWillpopClose() async {
    // DateTime currentTime = DateTime.now();
    // bool backButton =
    //     backbuttonpressedTime == null || currentTime.difference(backbuttonpressedTime!) > const Duration(seconds: 3);

    // if (backButton) {
    //   backbuttonpressedTime = currentTime;

    //   Get.snackbar('', 'Tap again to close the app', duration: const Duration(seconds: 1));
    //   // SnackBar(content: Text(buildTranslate(context, "tap_back")));
    //   return false;
    // } else {
    //   Get.back();
    // }
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
      calculateCost();

      return;
    }
    if (cartproducts.containsKey(id)) {
      cartproducts[id]!.text = count.toString();
    } else {
      cartproducts[id] = TextEditingController(text: count.toString());
    }
    calculateCost();
  }

  sortList() {
    var temp = [...productList];
    var selected = [];
    var unselected = [];
    for (var i in temp) {
      if (cartproducts.keys.contains(i.id)) {
        selected.add(i);
      } else {
        unselected.add(i);
      }
    }
    productList([...selected.reversed, ...unselected]);
  }

  RxBool creatingOrder = false.obs;
  late Rx<PaymentMethod> selectedPaymentMethod;
  goToOrderSummary() {
    cartproducts.removeWhere((key, textEditingController) => textEditingController.text.isEmpty);
    // Get.to(() => const OrderSummmaryView(), arguments: Get.arguments);
    createOrder();
  }

  createOrder() async {
    creatingOrder(true);
    Map<int, int>? _products = {};
    cartproducts.removeWhere((key, textEditingController) => textEditingController.text.isEmpty);
    cartproducts.forEach((key, textEditingControlller) {
      _products.addAll({key: int.parse(textEditingControlller.text)});
    });
    var res = await _repository.createOrder(
        shopId: (Get.arguments["shop"] as ShopList).id, salesPersonId: SharedPrefs.getUserId(), products: _products);
    sortList();

    if (res.result?.status ?? false) {
      Get.to(() => CheckoutView(), arguments: Get.arguments);
      creatingOrder(false);
      createOrderResponse = res;
      selectedPaymentMethod = (res.result!.paymentMethods!.first).obs;
      return;
    }

    showSnackBar(res.result?.message ?? "Something happend, Please try again!");
    creatingOrder(false);
  }

  Future<void> fetchProducts() async {
    isProductsLoading(true);
    try {
      var res = await _productListRepo.productList();
      productList(res.productListResult?.productList ?? []);
      _products = productList;
      for (var product in _products) {
        if (!cartproductsFocusNode.keys.contains(product.id)) cartproductsFocusNode[product.id!] = FocusNode();
      }
    } catch (error, stacktrace) {
      log("error", error: error, stackTrace: stacktrace);
    }
    isProductsLoading(false);
  }

  searchProducts(String? query) async {
    isProductsLoading(true);
    try {
      if ((query ?? "").isEmpty) {
        fetchProducts();
        return;
      }
      var res = await _productListRepo.searchProductList(query ?? "");
      productList(res.productListResult?.productList ?? []);
      _products = productList;
    } catch (error, stacktrace) {
      log("error", error: error, stackTrace: stacktrace);
    }
    isProductsLoading(false);
  }

  double productPrice(String category, ProductList product) {
    switch (category) {
      case 'retail':
        return product.retailPrice ?? 0;
      case 'department shop':
      case 'department':
        return product.departmentPrice ?? 0;
      case 'wholesale':
        return product.wholesalePrice ?? 0;
      case 'supermarket':
        return product.supermarketPrice ?? 0;
    }

    return 0;
  }

  RxBool isSearching = RxBool(false);
  Future<void> searchShop(String? query) async {
    isSearching(true);
    var shopListResponse;
    if ((query ?? "").isEmpty) {
      shopListResponse = await _shopRepo.shopList(SharedPrefs.getUserId()!);
    } else {
      shopListResponse = await _shopRepo.shopSearch(salesPersonId: SharedPrefs.getUserId()!, query: {"name": query});
    }
    if (shopListResponse.shopListResult?.status ?? false) {
      shopList(shopListResponse.shopListResult?.shopList ?? []);
    } else {
      shopList.clear();
    }
    isSearching(false);
  }

  void calculateCost() {
    var cost = 0.0;
    List<ProductList> tempSelectedProducts = [];
    if (cartproducts.isNotEmpty) {
      for (var i in _products) {
        if (cartproducts.keys.contains(i.id)) {
          tempSelectedProducts.add(i);
          var c = productPrice((Get.arguments["shop"] as ShopList).category!, i);
          var t = int.parse(cartproducts[i.id]!.text) * c;
          cost += t;
        }
      }
    }
    selectedProducts = tempSelectedProducts;
    totalCartCost(cost);
  }

  RxBool isOrderConfirming = RxBool(false);

  confirmOrder(BuildContext context) async {
    isOrderConfirming(true);
    var res = await _repository.confirmOrder(
      salesPersonId: SharedPrefs.getUserId()!,
      orderId: createOrderResponse!.result!.orderId!,
      paymentMethod: selectedPaymentMethod.value.code!,
      comment: commentController.text,
    );

    if (res.result?.status ?? false) {
      isOrderConfirming(false);

      return onConfirm(context);
    }
    clearProducts();
    isOrderConfirming(false);

    showSnackBar(res.result?.message ?? "Something happend, Please try again!");
  }

  void onConfirm(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => CustomAlertbox(
              topIcon: Image.asset(
                Assets.successIcon,
                height: 80,
                width: 80,
              ),
              title: "Order Successful!",
              content: "Your order placed has been successful!",
              actions: [
                CustomButton(
                    title: "Go to Home page",
                    onTap: () {
                      Get.back();
                    })
              ],
            )).then((value) {
      Get.offAllNamed(Routes.DASHBOARD);
    });
  }
}
