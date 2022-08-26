import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../utils/shared_prefs.dart';
import '../../profile/controllers/profile_controller.dart';
import '../../shops/models/order_list_model.dart';
import '../../shops/repo/order_list_repo.dart';
import '../models/delivery_home_model.dart';
import '../repo/delivery_home_page_repo.dart';

class HomePageOrderListingController extends GetxController{
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

  fetchDeliveryOrders(String? filterId) async {
    isDeliveryOrdersLoading(true);
    orderListResponse = await orderListRepo.orderListDelivery(
        driverId: SharedPrefs.getUserId()!, filterName: "Category", filterId: filterId);
    if (orderListResponse?.orderListResult?.status ?? false) {
      orders = orderListResponse?.orderListResult?.history ?? [];
    } else {
      orders = [];
    }
    isDeliveryOrdersLoading(false);
  }

  fetchDeliveryAllOrders() async {
    isDeliveryOrdersLoading(true);

    allOrderListResponse = await orderListRepo.allOrdersDelivery(driverId: SharedPrefs.getUserId()!);
    if (allOrderListResponse?.orderListResult?.status ?? false) {
      orders = allOrderListResponse?.orderListResult?.history ?? [];
    } else {
      orders = [];
    }
    isDeliveryOrdersLoading(false);
  }

  fetchSrOrders(String? filterId) async {
    isDeliveryOrdersLoading(true);
    orderListResponse = await orderListRepo.orderListDelivery(
        salesPersonId: SharedPrefs.getUserId()!, filterName: "Category", filterId: filterId);
    if (orderListResponse?.orderListResult?.status ?? false) {
      orders = orderListResponse?.orderListResult?.history ?? [];
    } else {
      orders = [];
    }
    isDeliveryOrdersLoading(false);
  }

  fetchSrAllOrders() async {
    isDeliveryOrdersLoading(true);

    allOrderListResponse = await orderListRepo.allOrdersDelivery(salesPersonId: SharedPrefs.getUserId()!);
    if (allOrderListResponse?.orderListResult?.status ?? false) {
      orders = allOrderListResponse?.orderListResult?.history ?? [];
    } else {
      orders = [];
    }
    isDeliveryOrdersLoading(false);
  }

}




