
import 'package:carebea/app/utils/shared_prefs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class GlobalStateController extends GetxService {
  ///For BottomCart Popup


  // ignore: prefer_typing_uninitialized_variables
  var deviceHeight, deviceWidth;
  // int? userId = null;
  var userId = SharedPrefs.getUserId();

  String? addressTypeSelected = "";
  int? selectedAddressIdForShipping;
  String? selectedAddressString;
  String? appCurrentVersion;
  String? appCurrentBuildNumber;

  ///progress Loader Global
  String? emirateName;
  int? emirateId = 0;
  @override
  void onReady() {
    // Get.lazyPut(() => KebcoHomepageController());
  } // KebcoHomepageController homepageController = Get.find();

  /// For product Listing, set category id to below variable before navigating
  int currentCategory = 0;

  RxMap<int, int> productsQuantityCount = RxMap<int, int>();

  // Rx<Lots>? currentLotProduct = Lots().obs;

  @override
  void onInit() {
    super.onInit();
    deviceHeight = Get.size.height;
    deviceWidth = Get.size.height;
    // homepageController.fetchHomepageData();
  }

  // ChosenAreaController locationController = Get.put(ChosenAreaController());
  //
  // onOnlinePaymentResponse() {
  //   productsQuantityCount.clear();
  //   cartCount.value = 0;
  //   cartTotal.value = 0.0;
  //   Get.to(() => CheckPaymentStatus());
  // }

  updateProductCount(int count, int id) {
    debugPrint(' \n count is $count');
    debugPrint(' \n id is $id');
    debugPrint("\n productsQuantityCount[id] -- ${productsQuantityCount.keys}");

    if (count == 0) {
      productsQuantityCount.remove(id);
    } else if (productsQuantityCount.containsKey(id)) {
      debugPrint("containsKey true");
      if (productsQuantityCount[id] == 1) {
        if (count == 1) {
          debugPrint("productsQuantityCount[id] -- ${productsQuantityCount[id]}");
          productsQuantityCount[id] = (productsQuantityCount[id]! + 1);
        } else {
          debugPrint("productsQuantityCount[id] -- ${productsQuantityCount[id]}--- removed");

          productsQuantityCount.remove(id);
        }
      }
      // else if(count == 0){
      //   debugPrint(
      //       "productsQuantityCount[id] -- ${productsQuantityCount[id]}--- removed");
      //
      //   productsQuantityCount.remove(id);
      // }
      else {
        if (count == 1) {
          debugPrint("productsQuantityCount[id] -- ${productsQuantityCount[id]}");
          productsQuantityCount[id] = (productsQuantityCount[id]! + 1);
        } else {
          if (productsQuantityCount[id] == 0 || productsQuantityCount[id] == 1) {
            debugPrint("productsQuantityCount[id] -- ${productsQuantityCount[id]}--- removed");

            productsQuantityCount.remove(id);
          } else {
            debugPrint("productsQuantityCount[id] -- ${productsQuantityCount[id]}");
            productsQuantityCount[id] = (productsQuantityCount[id]! - 1);
          }
        }
      }
    } else {
      debugPrint("containsKey false");
      productsQuantityCount[id] = 1;
      debugPrint("updateProductCount product Added");
      debugPrint(productsQuantityCount.value.toString());
    }
  }

  bool isUserLoggedIn() {
    if (userId != null) {
      return true;
    } else {
      return false;
    }
  }

  // showUserLoginDialogue({onTap}) {
  //   // Get.bottomSheet(LoginBottomSheet());
  //   Get.defaultDialog(
  //       title: "Alert",
  //       confirm: ElevatedButton(
  //           style: ElevatedButton.styleFrom(primary: darkThemeColor),
  //           onPressed: () {
  //             debugPrint("showUserLoginDialogue confirm");
  //             Get.back();
  //             // Get.bottomSheet(MobileLoginPage(fromRoute: '',));
  //             Get.to(() => const MobileLoginPage(
  //                   fromRoute: '',
  //                 ));
  //           },
  //           child: const Text("Login")),
  //       cancel: TextButton(
  //           onPressed: () {
  //             debugPrint("showUserLoginDialogue cancel");
  //             Get.back();
  //           },
  //           child: const Text(
  //             "Cancel",
  //             style: TextStyle(color: Colors.black),
  //           )),
  //       content: const Text("Please Login to Continue"),
  //       contentPadding: const EdgeInsets.only(top: 16.0),
  //       titlePadding: const EdgeInsets.all(8.0));
  // }
}
