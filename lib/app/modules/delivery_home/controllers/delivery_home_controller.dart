import 'package:carebea/app/modules/delivery_home/models/delivery_home_model.dart';
import 'package:carebea/app/modules/delivery_home/repo/delivery_home_page_repo.dart';
import 'package:carebea/app/modules/shops/models/order_list_model.dart';
import 'package:carebea/app/modules/shops/repo/order_list_repo.dart';
import 'package:carebea/app/utils/shared_prefs.dart';
import 'package:get/get.dart';
import 'dart:developer' as developer;

class DeliveryHomeController extends GetxController {
  DeliveryHomePageRepo deliveryHomePageRepo = DeliveryHomePageRepo();
  DeliveryHomePageResponse? deliveryHomePageResponse;
  RxBool isDeliveryHomePageDataLoaded = true.obs;
  RxBool isDeliveryOrdersLoading = true.obs;
  OrderListRepo orderListRepo = OrderListRepo();
  OrderListResponse? orderListResponse;
  OrderListResponse? allOrderListResponse;
  List<History> orders = [];

  //TODO: Implement DeliveryHomeController

  final count = 0.obs;
  @override
  void onInit() {
    print("onit");
    fetchDeliveryHomePageData();
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

  void increment() => count.value++;

  fetchDeliveryHomePageData() async {
    isDeliveryHomePageDataLoaded(false);
    deliveryHomePageResponse = await deliveryHomePageRepo.deliveryHomePageData(salesPersonId: SharedPrefs.getUserId()!);
    developer.log(deliveryHomePageResponse?.toJson().toString() ?? '');
    isDeliveryHomePageDataLoaded(true);
  }
  
  fetchDeliveryOrders(String? filterId) async{
    isDeliveryOrdersLoading(true);
    orderListResponse = await orderListRepo.orderListDelivery(driverId: SharedPrefs.getUserId()!,filterName: "Category",filterId: filterId );
    if (orderListResponse?.orderListResult?.status ?? false) {
      orders = orderListResponse?.orderListResult?.history ?? [];
    } else {
      orders = [];
    }
    isDeliveryOrdersLoading(false);



  }

  fetchDeliveryAllOrders()async{
    isDeliveryOrdersLoading(true);

    allOrderListResponse = await orderListRepo.allOrdersDelivery(driverId:SharedPrefs.getUserId()!);
    if ( allOrderListResponse?.orderListResult?.status ?? false) {
      orders =  allOrderListResponse?.orderListResult?.history ?? [];
    } else {
      orders = [];
    }
    isDeliveryOrdersLoading(false);

  }
}
