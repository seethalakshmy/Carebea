import 'dart:ffi';

import 'package:carebea/app/modules/add_shop/models/add_shop_model.dart';
import 'package:carebea/app/modules/add_shop/models/list_state_model.dart';
import 'package:carebea/app/modules/add_shop/models/list_zone_model.dart' as zone_list;
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
import '../models/list_category.dart';
import '../models/list_routes_model.dart' as route_list;

class AddShopController extends GetxController {
  final addShopFormKey = GlobalKey<FormState>();

  AddShopRepo addShopRepo = AddShopRepo();
  AddShopResponse addShopResponse = AddShopResponse();
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController localArea = TextEditingController();
  TextEditingController zip = TextEditingController();
  TextEditingController district = TextEditingController();
  TextEditingController gst = TextEditingController();
  TextEditingController stateId = TextEditingController();
  TextEditingController lastName = TextEditingController();
  DateTime? backbuttonpressedTime;
  RxBool isRoutesListLoading = true.obs;
  RxBool isStateListLoading = true.obs;
  RxBool isZoneListLoading = true.obs;
  route_list.RouteListResponse? routeListResponse;
  List<route_list.PoolList> routeList = <route_list.PoolList>[];
  List<StateList> stateList = <StateList>[];
  route_list.PoolList? selectedRoute;
  zone_list.PoolList? selectedZone;
  StateList? selectedStateList;
  StateListResponse? stateListResponse;
  RxInt selectedRadio = 1.obs;
  CategoryList? selectedCategory;
  zone_list.ZoneListResponse? zoneListResponse;
  List<zone_list.PoolList> zoneList = <zone_list.PoolList>[];
  List<CategoryList> category = [
    CategoryList(id: 1, name: "Retail"),
    CategoryList(id: 2, name: "Department"),
    CategoryList(id: 3, name: "Wholesale"),
    CategoryList(id: 4, name: "Supermarket")
  ];
  RxBool isAddShopButtonPressed = false.obs;

  @override
  void onInit() {
    fetchRouteList();
    fetchStateList();
    fetchZoneList();
    fetchCategory();
    if (Get.arguments['isEdit'] ?? false) {
      populate(Get.arguments['shop'] as ShopList);
    }
    super.onInit();
  }

  addShop(
      {required int salesPersonId,
      required String name,
      required String lastName,
      required String phone,
      required int shopCategoryId,
      required int customerType,
      required String gst,
      required String localArea,
      required String district,
      required String zip,
      required int stateId,
      required int zoneId,
      required int routeId,
      required double latitude,
      required double longitude}) async {
    isAddShopButtonPressed(true);
    if (addShopFormKey.currentState!.validate()) {
      addShopResponse = await addShopRepo.addShop(salesPersonId, name, lastName, phone, shopCategoryId, customerType,
          gst, localArea, district, zip, stateId, zoneId, routeId, latitude, longitude);

      if (addShopResponse.addShopResult!.status == true) {
        showDialog<bool>(
            barrierDismissible: false,
            context: Get.context!,
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
    isAddShopButtonPressed(false);
  }

  updateShop(
      {required int shopId,
      required int salesPersonId,
      required String name,
      required String lastName,
      required String phone,
      required int shopCategoryId,
      required int customerType,
      required String gst,
      required String localArea,
      required String district,
      required String zip,
      required int stateId,
      required int zoneId,
      required int routeId,
      required double latitude,
      required double longitude}) async {
    isAddShopButtonPressed(true);
    if (addShopFormKey.currentState!.validate()) {
      addShopResponse = await addShopRepo.updateShop(shopId, salesPersonId, name, lastName, phone, shopCategoryId,
          customerType, gst, localArea, district, zip, stateId, zoneId, routeId, latitude, longitude);

      if (addShopResponse.addShopResult?.status ?? false) {
        showDialog<bool>(
            barrierDismissible: false,
            context: Get.context!,
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
    isAddShopButtonPressed(false);
  }

  void populate(ShopList argument) {
    name.text = argument.name!;
    phone.text = argument.phone!;
    gst.text = argument.gstNo!;
    district.text = argument.address!.district!;
    zip.text = argument.address!.zip!;
    localArea.text = argument.address!.localArea!;
    lastName.text = argument.lastName!;
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

  fetchRouteList() async {
    isRoutesListLoading(true);
    routeListResponse = await addShopRepo.routeList();
    routeList = routeListResponse!.routeListResult!.poolList ?? [];
    if ((Get.arguments["isEdit"] ?? false) && (Get.arguments["shop"] != null)) {
      try {
        selectedRoute = routeList.singleWhere((element) => element.id == (Get.arguments["shop"] as ShopList).routeId);
      } catch (e) {}
    }
    isRoutesListLoading(false);
  }

  fetchStateList() async {
    isStateListLoading(true);

    stateListResponse = await addShopRepo.stateList();
    stateList = stateListResponse!.stateListResult!.stateList ?? [];
    if ((Get.arguments["isEdit"] ?? false) && (Get.arguments["shop"] != null)) {
      try {
        selectedStateList =
            stateList.firstWhere((element) => element.stateId == (Get.arguments["shop"] as ShopList).address!.stateId);
      } catch (e) {}
    }
    isStateListLoading(false);
  }

  fetchZoneList() async {
    isZoneListLoading(true);

    zoneListResponse = await addShopRepo.zoneList();
    zoneList = zoneListResponse!.zoneListResult!.poolList ?? [];
    if ((Get.arguments["isEdit"] ?? false) && (Get.arguments["shop"] != null)) {
      try {
        selectedZone = zoneList.firstWhere((element) => element.id == (Get.arguments["shop"] as ShopList).zoneId);
      } catch (e) {}
    }
    isZoneListLoading(false);
  }

  fetchCategory() {
    if ((Get.arguments["isEdit"] ?? false) && (Get.arguments["shop"] != null)) {
      selectedCategory = category.singleWhere(
          (element) => element.name?.toLowerCase() == (Get.arguments["shop"] as ShopList).category?.toLowerCase());
    }
    debugPrint(selectedCategory?.toJson().toString());
  }
}
