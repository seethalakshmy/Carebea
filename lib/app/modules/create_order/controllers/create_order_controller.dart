import 'dart:developer';

import 'package:carebea/app/modules/create_order/data/repository/create_order_repository.dart';
import 'package:carebea/app/modules/create_order/data/repository/product_list_repo.dart';
import 'package:carebea/app/modules/create_order/model/create_order.dart';
import 'package:carebea/app/modules/create_order/model/productlist_model.dart';
import 'package:carebea/app/modules/create_order/views/check_out_view.dart';
import 'package:carebea/app/modules/create_order/views/order_summary_view.dart';
import 'package:carebea/app/modules/dashboard/controllers/dashboard_controller.dart';
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

import '../../orders/controllers/orders_controller.dart';

class CreateOrderController extends GetxController {
  DateTime? backbuttonpressedTime;
  final ShopListRepo _shopRepo = ShopListRepo();
  final CreateOrderRepository _repository = CreateOrderRepository();
  RxMap<int, TextEditingController> cartproducts =
      RxMap<int, TextEditingController>();
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

  Rx<PaymentTerms> selectedPaymentTerm = Rx<PaymentTerms>(PaymentTerms());

  final DashboardController _dashboardController = Get.find();
  final OrdersController ordersController = Get.find();

  ScrollController shopScrollController = ScrollController();
  ScrollController productScrollController = ScrollController();

  int pageNumber = 0;
  int pageSize = 10;

  final count = 0.obs;
  @override
  void onInit() {
    clearProducts();
    shopScrollController.addListener(() {
      if (((shopScrollController.position.maxScrollExtent * .3) <=
              shopScrollController.position.pixels) &&
          !isPaginating.value) {
        paginateShops();
      }
    });
    productScrollController.addListener(() {
      if (((productScrollController.position.maxScrollExtent * .7) <=
              productScrollController.position.pixels) &&
          !isPaginating.value) {
        paginateProducts();
      }
    });
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

  deleteOrders(int shopId) async {
    await _repository.deleteOrders(shopId: shopId);
  }

  Future<void> fetchShops() async {
    query = null;
    isLoading(true);
    try {
      pageNumber = 0;
      var res = await _shopRepo.shopList(
          salesPersonId: SharedPrefs.getUserId()!,
          pageNumber: pageNumber,
          pageSize: pageSize);
      shopList(res.shopListResult?.shopList ?? []);
      pageNumber = 1;
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
    cartproducts.removeWhere(
        (key, textEditingController) => textEditingController.text.isEmpty);
    // Get.to(() => const OrderSummmaryView(), arguments: Get.arguments);
    createOrder();
  }

  List<OfferProduct> offerProducts = [];
  createOrder() async {
    creatingOrder(true);
    Map<int, int>? _products = {};
    offerProducts.clear();
    cartproducts.removeWhere(
        (key, textEditingController) => textEditingController.text.isEmpty);
    cartproducts.forEach((key, textEditingControlller) {
      _products.addAll({key: int.parse(textEditingControlller.text)});
    });
    var res = await _repository.createOrder(
        shopId: (Get.arguments["shop"] as ShopList).id,
        salesPersonId: SharedPrefs.getUserId(),
        products: _products,
        orderId: createOrderResponse?.result?.orderId);
    sortList();

    if (res.result?.status ?? false) {
      Get.to(() => CheckoutView(), arguments: Get.arguments);
      creatingOrder(false);
      createOrderResponse = res;
      for (var product in res.result!.offerProducts!) {
        if (product.giftProduct ?? false) {
          offerProducts.add(product);
        }
      }
      selectedPaymentMethod = (res.result!.paymentMethods!.first).obs;
      selectedPaymentTerm = (res.result!.paymentTerms!.first).obs;
      return;
    }

    showSnackBar(res.result?.message ?? "Something happend, Please try again!");
    creatingOrder(false);
  }

  int productPageNumber = 0;
  int productPageSize = 10;
  Future<void> fetchProducts() async {
    isProductsLoading(true);
    productQuery = null;
    try {
      productPageNumber = 0;
      var res = await _productListRepo.productList(
          pageNumber: productPageNumber, pageSize: productPageSize);
      productList(res.productListResult?.productList ?? []);
      if (productList.isEmpty) {
        throw "";
      }
      productPageNumber = 1;
      _products = productList;
      for (var product in _products) {
        if (!cartproductsFocusNode.keys.contains(product.id))
          cartproductsFocusNode[product.id!] = FocusNode();
      }
    } catch (error, stacktrace) {
      log("error", error: error, stackTrace: stacktrace);
    }
    isProductsLoading(false);
  }

  String? productQuery;
  searchProducts(String? query) async {
    isProductsLoading(true);
    try {
      if ((query ?? "").isEmpty) {
        fetchProducts();
        return;
      }
      if (productQuery == query) {
        isProductsLoading(false);
        return;
      }
      productQuery = query;
      productPageNumber = 0;
      var res = await _productListRepo.searchProductList(query ?? "",
          pageNumber: productPageNumber, pageSize: productPageSize);
      productList(res.productListResult?.productList ?? []);
      if (productList.isEmpty) {
        throw "";
      }
      productPageNumber = 1;
      _products = productList;
      for (var product in _products) {
        if (!cartproductsFocusNode.keys.contains(product.id))
          cartproductsFocusNode[product.id!] = FocusNode();
      }
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
  String? query;
  Future<void> searchShop(String? query) async {
    isSearching(true);

    if ((query ?? "").isEmpty) {
      await fetchShops();
    } else {
      if (this.query == query) {
        isSearching(false);
        return;
      }
      this.query = query;
      pageNumber = 0;
      var shopListResponse = await _shopRepo.shopSearch(
          salesPersonId: SharedPrefs.getUserId()!,
          query: {"name": query},
          pageNumber: pageNumber,
          pageSize: pageSize);
      if (shopListResponse.shopListResult?.status ?? false) {
        pageNumber = 1;
        shopList(shopListResponse.shopListResult?.shopList ?? []);
      } else {
        shopList.clear();
      }
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
          var c =
              productPrice((Get.arguments["shop"] as ShopList).category!, i);
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
      paymentTermId: selectedPaymentTerm.value.id!,
    );

    if (res.result?.status ?? false) {
      isOrderConfirming(false);

      return onConfirm(context, createOrderResponse!.result!.orderId!);
    }
    clearProducts();
    isOrderConfirming(false);

    showSnackBar(res.result?.message ?? "Something happend, Please try again!");
  }

  void onConfirm(BuildContext context, int orderId) {
    showDialog<bool>(
        context: context,
        builder: (_) => CustomAlertbox(
              topIcon: Image.asset(
                Assets.successIcon,
                height: 80,
                width: 80,
              ),
              title: "Order Successful!",
              content: "Your order placed has been successful!",
              isVerticalActions: true,
              actions: [
                CustomButton(
                    title: "Go to Order details",
                    onTap: () {
                      Get.back<bool>(result: true);
                    }),
                const SizedBox(height: 5),
                CustomButton(
                    title: "Go to Home page",
                    onTap: () {
                      Get.back<bool>(result: false);
                    })
              ],
            )).then((value) {
      navigator!.popUntil((route) => route.isFirst);

      if (value ?? false) {
        Get.toNamed(Routes.ORDER_HISTORY_DETAILS,
            arguments: {'order_id': orderId});

        // _dashboardController.currentScreenIndex(2);
        // ordersController.tabController1.animateTo(1);
        // ordersController.fetchOrdersList(orderType: OrderType.upcoming);
      }
    });
  }

  RxBool isPaginating = false.obs;
  paginateShops() async {
    isPaginating(true);
    if (query?.isNotEmpty ?? false) {
      await _paginateSearchShop();
    } else {
      await _paginateShopList();
    }

    isPaginating(false);
  }

  Future<void> _paginateShopList() async {
    var shopListResponse = await _shopRepo.shopList(
        salesPersonId: SharedPrefs.getUserId()!,
        pageNumber: pageNumber,
        pageSize: pageSize);
    if ((shopListResponse.shopListResult?.status ?? false) &&
        ((shopListResponse.shopListResult!.shopCount ?? 0) > 0)) {
      pageNumber += 1;
      shopList.addAll(shopListResponse.shopListResult!.shopList!);
    }
  }

  Future<void> _paginateSearchShop() async {
    var shopListResponse = await _shopRepo.shopSearch(
        salesPersonId: SharedPrefs.getUserId()!,
        query: {"name": query},
        pageNumber: pageNumber,
        pageSize: pageSize);
    if ((shopListResponse.shopListResult?.status ?? false) &&
        ((shopListResponse.shopListResult!.shopCount ?? 0) > 0)) {
      pageNumber += 1;
      shopList.addAll(shopListResponse.shopListResult!.shopList!);
    }
  }

  paginateProducts() async {
    if (isPaginating.value) {
      return;
    }
    isPaginating(true);
    if (productQuery?.isNotEmpty ?? false) {
      await _paginateSearchProducts();
    } else {
      await _paginateProducts();
    }

    isPaginating(false);
  }

  Future<void> _paginateSearchProducts() async {
    try {
      var res = await _productListRepo.searchProductList(productQuery ?? "",
          pageNumber: productPageNumber, pageSize: productPageSize);
      var tempProductList = res.productListResult?.productList ?? [];
      tempProductList = tempProductList
          .where((outer) =>
              productList.firstWhereOrNull((inner) => inner.id == outer.id) ==
              null)
          .toList();
      if (tempProductList.isEmpty) {
        throw "";
      }
      productList.addAll(tempProductList);

      productList(productList.toSet().toList());
      productPageNumber += 1;
      _products.addAll(tempProductList);
      _products = _products.toSet().toList();
      for (var product in _products) {
        if (!cartproductsFocusNode.keys.contains(product.id))
          cartproductsFocusNode[product.id!] = FocusNode();
      }
    } catch (error, stacktrace) {
      log("error", error: error, stackTrace: stacktrace);
    }
  }

  Future<void> _paginateProducts() async {
    try {
      var res = await _productListRepo.productList(
          pageNumber: productPageNumber, pageSize: productPageSize);
      var tempProductList = res.productListResult?.productList ?? [];
      // tempProductList = tempProductList.where((outer) => productList.firstWhereOrNull((inner) => inner.id == outer.id) == null).toList();
      if (tempProductList.isEmpty) {
        throw "";
      }
      productList.addAll(tempProductList);

      productList(productList.toSet().toList());
      productPageNumber += 1;
      _products.addAll(tempProductList);
      _products = _products.toSet().toList();
      for (var product in _products) {
        if (!cartproductsFocusNode.keys.contains(product.id))
          cartproductsFocusNode[product.id!] = FocusNode();
      }
    } catch (error, stacktrace) {
      log("error", error: error, stackTrace: stacktrace);
    }
  }
}
