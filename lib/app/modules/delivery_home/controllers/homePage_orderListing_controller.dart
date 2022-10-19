import 'dart:developer';

import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../utils/shared_prefs.dart';
import '../../profile/controllers/profile_controller.dart';
import '../../shops/models/order_list_model.dart';
import '../../shops/repo/order_list_repo.dart';
import '../models/delivery_home_model.dart';
import '../repo/delivery_home_page_repo.dart';

class HomePageOrderListingController extends GetxController {
  DeliveryHomePageRepo deliveryHomePageRepo = DeliveryHomePageRepo();
  final OrderListRepo _repo = OrderListRepo();

  ProfileController profileController = Get.put(ProfileController());
  DeliveryHomePageResponse? deliveryHomePageResponse;
  RxBool isDeliveryHomePageDataLoaded = true.obs;
  RxBool isDeliveryOrdersLoading = true.obs;
  OrderListRepo orderListRepo = OrderListRepo();
  OrderListResponse? orderListResponse;
  OrderListResponse? allOrderListResponse;
  List<History> orders = [];
  List<List<History>> orderHistoryList = [];

  fetchDeliveryOrders(String? filterId) async {
    isDeliveryOrdersLoading(true);
    orders = [];
    orderHistoryList = [];
    orderListResponse = await orderListRepo.orderListDelivery(
        driverId: SharedPrefs.getUserId()!, filterName: "Category", filterId: filterId);
    if (orderListResponse?.orderListResult?.status ?? false) {
      orders = orderListResponse?.orderListResult?.history ?? [];
      sortOrderList();
    } else {
      orders = [];
      orderHistoryList = [];
    }
    isDeliveryOrdersLoading(false);
  }

  fetchDeliveryAllOrders() async {
    isDeliveryOrdersLoading(true);
    orders = [];
    orderHistoryList = [];
    allOrderListResponse = await orderListRepo.allOrdersDelivery(driverId: SharedPrefs.getUserId()!);
    if (allOrderListResponse?.orderListResult?.status ?? false) {
      orders = allOrderListResponse?.orderListResult?.history ?? [];
      sortOrderList();
    } else {
      orders = [];
      orderHistoryList = [];
    }
    isDeliveryOrdersLoading(false);
  }

  fetchSrOrders(String? filterId) async {
    isDeliveryOrdersLoading(true);
    orders = [];
    orderHistoryList = [];
    orderListResponse = await orderListRepo.orderListDelivery(
        salesPersonId: SharedPrefs.getUserId()!, filterName: "Category", filterId: filterId);
    if (orderListResponse?.orderListResult?.status ?? false) {
      orders = orderListResponse?.orderListResult?.history ?? [];
      sortOrderList();
    } else {
      orders = [];
      orderHistoryList = [];
    }
    isDeliveryOrdersLoading(false);
  }

  fetchSrAllOrders() async {
    isDeliveryOrdersLoading(true);

    allOrderListResponse = await orderListRepo.allOrdersDelivery(salesPersonId: SharedPrefs.getUserId()!);
    if (allOrderListResponse?.orderListResult?.status ?? false) {
      orders = allOrderListResponse?.orderListResult?.history ?? [];
      sortOrderList();
    } else {
      orders = [];
    }
    isDeliveryOrdersLoading(false);
  }

  sortOrderList() {
    List<String> srNames = [];
    for (var order in orders) {
      if (!srNames.contains(order.srName)) {
        srNames.add(order.srName!);
      }
    }
    var tempOrders = orders;
    for (var srName in srNames) {
      try {
        var temp = tempOrders.where((element) => element.srName == srName);
        tempOrders.removeWhere((element) => element.srName == srName);
        orderHistoryList.add(temp.toList());
      } catch (e, s) {
        log("error in orders sorting", error: e, stackTrace: s);
      }
    }
  }
}
