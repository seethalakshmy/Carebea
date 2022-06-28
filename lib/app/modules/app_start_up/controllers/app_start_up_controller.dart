import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppStartUpController extends GetxController {
  //TODO: Implement AppStartUpController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();

  }

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(seconds: 3),(){
      debugPrint("splash screen timer done");
    });

  }

  @override
  void onClose() {
    super.onClose();
  }

}
