import 'package:carebea/app/modules/add_shop/models/add_shop_model.dart';
import 'package:carebea/app/modules/add_shop/repo/add_shop_repo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/shared_prefs.dart';

class AddShopController extends GetxController {
  AddShopRepo addShopRepo = AddShopRepo();
  AddShopResponse addShopResponse = AddShopResponse();
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController localArea = TextEditingController();
  TextEditingController zip = TextEditingController();
  TextEditingController district = TextEditingController();
  TextEditingController gst = TextEditingController();
  final addShopFormKey = GlobalKey<FormState>();


  //TODO: Implement AddShopController

  final count = 0.obs;

  @override
  void onInit() {
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


  addShop(
      {required String name,
      required String phone,
       int? shopCategoryId,
       int? customerType,
       String? gst,
      required String localArea,
      required String district,
      required String zip,
       int? stateId,
       int? zoneId,
       int? routeId,
       double? latitude,
       double? longitude}) async {
    if(addShopFormKey.currentState!.validate()){
      addShopResponse = await addShopRepo.addShop(SharedPrefs.getUserId()!, name, phone, 1, 1,gst!, localArea, district, zip, 594, 1, 1,0,0);


    }
  }
}