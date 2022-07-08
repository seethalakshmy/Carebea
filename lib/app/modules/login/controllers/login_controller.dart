import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  String? username ;
  final loginFormKey = GlobalKey<FormState>();

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

  mobileLogin(){
    if(loginFormKey.currentState!.validate()){
      debugPrint('state ${loginFormKey.currentState!.validate()}');
      // Get.toNamed(HomeView.);
    }


  }}
