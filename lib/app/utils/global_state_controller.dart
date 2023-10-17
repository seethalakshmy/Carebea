
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


  int currentCategory = 0;

  RxMap<int, int> productsQuantityCount = RxMap<int, int>();


  @override
  void onInit() {
    super.onInit();
    deviceHeight = Get.size.height;
    deviceWidth = Get.size.height;
    // homepageController.fetchHomepageData();
  }



  updateProductCount(int count, int id) {


    if (count == 0) {
      productsQuantityCount.remove(id);
    } else if (productsQuantityCount.containsKey(id)) {
      if (productsQuantityCount[id] == 1) {
        if (count == 1) {
          productsQuantityCount[id] = (productsQuantityCount[id]! + 1);
        } else {

          productsQuantityCount.remove(id);
        }
      }

      else {
        if (count == 1) {
          productsQuantityCount[id] = (productsQuantityCount[id]! + 1);
        } else {
          if (productsQuantityCount[id] == 0 || productsQuantityCount[id] == 1) {

            productsQuantityCount.remove(id);
          } else {
            productsQuantityCount[id] = (productsQuantityCount[id]! - 1);
          }
        }
      }
    } else {
      productsQuantityCount[id] = 1;
   
    }
  }

  bool isUserLoggedIn() {
    if (userId != null) {
      return true;
    } else {
      return false;
    }
  }

}
