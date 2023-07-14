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
  RxList<History> allOrders = RxList<History>();
  FilterVals? filterVals;
  OrderType selectedOrderType = OrderType.previous;
  late TabController tabController1;

  int pageSize = 10;
  int pageNumber = 0;

  ScrollController scrollController = ScrollController();
  @override
  void onInit() {
    fetchOrdersList(orderType: selectedOrderType);
    scrollController.addListener(() {
      if (((scrollController.position.maxScrollExtent * .7) <= scrollController.position.pixels) && !isPaginating.value) {
        paginate();
      }
    });
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
    query = null;
    pageNumber = 0;
    selectedOrderType = orderType;
    allorderListResponse = await orderListRepo.allOrdersList(
      SharedPrefs.getUserId()!,
      getOrdertypeString(orderType),
      pageNumber: pageNumber,
      pageSize: pageSize,
    );
    if (allorderListResponse?.orderListResult?.status ?? false) {
      allOrders(allorderListResponse?.orderListResult?.history ?? []);
      if (allOrders.isNotEmpty) {
        pageNumber = 1;
      }
      filterVals = allorderListResponse!.orderListResult!.filterVals;
    } else {
      allOrders.clear();
    }

    isOrdersLoaded(false);
  }

  RxString filterSelected = "".obs;
  filterOrders(String filterName, int filterId) async {
    allOrders.clear();
    isFilterClick(true);
    pageNumber = 0;
    filterSelected("$filterName-$filterId");
    var orderResponse = await orderListRepo.allOrdersList(
      SharedPrefs.getUserId()!,
      getOrdertypeString(selectedOrderType),
      filtername: filterName,
      filterid: filterId,
      pageNumber: pageNumber,
      pageSize: pageSize,
    );
    if (orderResponse.orderListResult?.status ?? false) {
      allOrders(allorderListResponse?.orderListResult?.history ?? []);
      if (allOrders.isNotEmpty) {
        pageNumber = 1;
      }
    }
    isFilterClick(false);
  }

  clearFilters() async {
    await fetchOrdersList(orderType: selectedOrderType);
  }

  String? query;
  Future<void> searchOrders(String? query) async {
    isFilterClick(true);
    pageNumber = 0;
    this.query = query;
    var temp = await orderListRepo.allOrdersList(
      SharedPrefs.getUserId()!,
      getOrdertypeString(selectedOrderType),
      query: query,
      pageNumber: pageNumber,
      pageSize: pageSize,
    );
    if (temp.orderListResult?.status ?? false) {
      allOrders(allorderListResponse?.orderListResult?.history ?? []);
      if (allOrders.isNotEmpty) {
        pageNumber = 1;
      }
    } else {
      allOrders.clear();
    }
    isFilterClick(false);
  }

  RxBool isPaginating = false.obs;
  paginate() async {
    isPaginating(true);
    if (query?.isNotEmpty ?? false) {
      await _paginateSearchOrders();
    } else if (filterSelected.isNotEmpty) {
      await _paginateFilterOrders();
    } else {
      await _paginateOrderList();
    }

    isPaginating(false);
  }

  Future<void> _paginateOrderList() async {
    allorderListResponse = await orderListRepo.allOrdersList(
      SharedPrefs.getUserId()!,
      getOrdertypeString(selectedOrderType),
      pageNumber: pageNumber,
      pageSize: pageSize,
    );
    if (allorderListResponse?.orderListResult?.status ?? false) {
      allOrders.addAll(allorderListResponse?.orderListResult?.history ?? []);
      if ((allorderListResponse?.orderListResult?.history ?? []).isNotEmpty) {
        pageNumber += 1;
      }
    } else {
      allOrders.clear();
    }
  }

  _paginateFilterOrders() {}

  _paginateSearchOrders() {}
}

enum OrderType { previous, upcoming }

String getOrdertypeString(OrderType orderType) {
  if (orderType == OrderType.previous) {
    return "Previous";
  }
  return "Upcoming";
}
