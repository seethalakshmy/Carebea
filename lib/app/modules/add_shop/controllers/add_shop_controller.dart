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
final addShopFormKey = GlobalKey<FormState>();

class AddShopController extends GetxController {
  AddShopRepo addShopRepo = AddShopRepo();
  AddShopResponse addShopResponse = AddShopResponse();
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController localArea = TextEditingController();
  TextEditingController zip = TextEditingController();
  TextEditingController district = TextEditingController();
  TextEditingController gst = TextEditingController();


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
      {required int salesPersonId,
        required String name,
      required String phone,
      required int shopCategoryId,
      required int customerType,
      required String gst,
      required String localArea,
      required String district,
      required String zip,
     required  int stateId,
      required int zoneId,
       required int routeId,
      required double latitude,
      required double longitude}) async {
    if(addShopFormKey.currentState!.validate()){
      addShopResponse = await addShopRepo.addShop(salesPersonId, name, phone, shopCategoryId, customerType, gst, localArea, district, zip, stateId, zoneId, routeId, latitude, longitude);

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

  updateShop(
      {required int shopId,
        required int salesPersonId,
        required String name,
        required String phone,
        required int shopCategoryId,
        required int customerType,
        required String gst,
        required String localArea,
        required String district,
        required String zip,
        required  int stateId,
        required int zoneId,
        required int routeId,
        required double latitude,
        required double longitude}) async {
    if(addShopFormKey.currentState!.validate()){
      addShopResponse = await addShopRepo.updateShop(shopId, salesPersonId, name, phone, shopCategoryId, customerType, gst, localArea, district, zip, stateId, zoneId, routeId, latitude, longitude);

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
                title: "Shop updated Successfully!",
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
    phone.text = argument.phone!;
    gst.text = argument.gstNo!;
    district.text = argument.address!.district!;
    zip.text = argument.address!.zip!;
    localArea.text = argument.address!.localArea!;

  }
}