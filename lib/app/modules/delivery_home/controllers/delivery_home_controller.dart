import 'package:carebea/app/modules/delivery_home/models/delivery_home_model.dart';
import 'package:carebea/app/modules/delivery_home/repo/delivery_home_page_repo.dart';
import 'package:get/get.dart';
import 'dart:developer' as developer;

class DeliveryHomeController extends GetxController {
  DeliveryHomePageRepo deliveryHomePageRepo = DeliveryHomePageRepo();
  DeliveryHomePageResponse? deliveryHomePageResponse;
  RxBool isDeliveryHomePageDataLoaded = true.obs;
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

  fetchDeliveryHomePageData()async{
    isDeliveryHomePageDataLoaded(false);
    deliveryHomePageResponse = await deliveryHomePageRepo.deliveryHomePageData(salesPersonId: 8);
    developer.log(deliveryHomePageResponse?.toJson().toString()??'');
    isDeliveryHomePageDataLoaded(true);
  }

}
