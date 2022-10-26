import 'package:carebea/app/modules/shops/models/order_list_model.dart';
import 'package:carebea/app/modules/shops/repo/order_list_repo.dart';
import 'package:carebea/app/utils/shared_prefs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrdersController extends GetxController {
  OrderListRepo orderListRepo = OrderListRepo();
  OrderListResponse? allorderListResponse;
  RxBool isOrdersLoaded = false.obs;
  RxBool isFilterClick = false.obs;
  List<History> allOrders = [];
  FilterVals? filterVals;
  OrderType selectedOrderType = OrderType.previous;
  late TabController tabController1;
  @override
  void onInit() {
    fetchOrdersList(orderType: selectedOrderType);

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

  fetchOrdersList({required OrderType orderType}) async {
    isOrdersLoaded(true);
    allOrders.clear();
    filterSelected("");
    selectedOrderType = orderType;
    allorderListResponse = await orderListRepo.allOrdersList(SharedPrefs.getUserId()!, getOrdertypeString(orderType));
    if (allorderListResponse?.orderListResult?.status ?? false) {
      allOrders = allorderListResponse?.orderListResult?.history ?? [];
      filterVals = allorderListResponse!.orderListResult!.filterVals;
    } else {
      allOrders = [];
    }

    isOrdersLoaded(false);
  }

  RxString filterSelected = "".obs;
  filterOrders(String filterName, int filterId) async {
    allOrders.clear();
    isFilterClick(true);
    filterSelected("$filterName-$filterId");
    var orderResponse = await orderListRepo.allOrdersList(
        SharedPrefs.getUserId()!, getOrdertypeString(selectedOrderType),
        filtername: filterName, filterid: filterId);
    if (orderResponse.orderListResult?.status ?? false) {
      allOrders = orderResponse.orderListResult?.history ?? [];
    }
    isFilterClick(false);
  }

  clearFilters() async {
    await fetchOrdersList(orderType: selectedOrderType);
  }

  Future<void> searchOrders(String? query) async {
    isFilterClick(true);
    var temp = await orderListRepo.allOrdersList(SharedPrefs.getUserId()!, getOrdertypeString(selectedOrderType),
        query: query);
    if (temp.orderListResult?.status ?? false) {
      allOrders = temp.orderListResult?.history ?? [];
    } else {
      allOrders = [];
    }
    isFilterClick(false);
  }
}

enum OrderType { previous, upcoming }

String getOrdertypeString(OrderType orderType) {
  if (orderType == OrderType.previous) {
    return "Previous";
  }
  return "Upcoming";
}
