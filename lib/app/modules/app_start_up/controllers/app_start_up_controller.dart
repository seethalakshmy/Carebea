import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppStartUpController extends GetxController {
  //TODO: Implement AppStartUpController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 3),(){
      debugPrint("scs");
    });
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
}
