import 'package:carebea/app/modules/add_shop/models/add_shop_model.dart';
import 'package:carebea/app/modules/add_shop/repo/add_shop_repo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

import '../../../routes/app_pages.dart';
import '../../../utils/assets.dart';
import '../../../utils/shared_prefs.dart';
import '../../../utils/widgets/custom_alertbox.dart';
import '../../../utils/widgets/custom_button.dart';
import '../../shops/models/shop_model.dart';

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
    if(Get.arguments['isEdit']??false){
      populate(Get.arguments['shop'] as ShopList );
    }
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
      required int customerType,
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
      addShopResponse = await addShopRepo.addShop(SharedPrefs.getUserId()!, name, phone, 1, customerType,'458522', localArea, district, zip, 594, 1, 1,0,0);

      if(addShopResponse.addShopResult!.status == true){

        showDialog<bool>(
            context:Get.context!,
            builder: (ctx) {
              return CustomAlertbox(
                topIcon: Image.asset(
                  Assets.successIcon,
                  width: 80,
                  height: 80,
                ),
                title: "Shop added Successful!",
                content: "",
                actions: [
                  CustomButton(
                      title: "Go to Home page",
                      onTap: () {
                        Get.back(result: true);
                        Get.offAllNamed(Routes.DASHBOARD);
                      })
                ],
              );
            });

      }





    }
  }

  void populate(ShopList argument) {
    name.text = argument.name!;
  }
}