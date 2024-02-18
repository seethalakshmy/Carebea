import 'package:carebea/app/routes/app_pages.dart';
import 'package:carebea/app/utils/shared_prefs.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../core/services/api_service.dart';
import '../../../utils/assets.dart';
import '../controllers/app_start_up_controller.dart';

class AppStartUpView extends StatefulWidget {
  const AppStartUpView({Key? key}) : super(key: key);

  @override
  State<AppStartUpView> createState() => _AppStartUpViewState();
}

class _AppStartUpViewState extends State<AppStartUpView> {
  ApiService apiService = Get.put(ApiService());

  @override
  void initState() {
    super.initState();
    generateAccessToken();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Image.asset(Assets.assetsSplashImage),
    ));
  }

  generateAccessToken() async {
    bool validTokenPresent = false;
    if (SharedPrefs.isloggedIn()) {
      await Future.delayed(Duration.zero);
      validTokenPresent = true;
    } else {
      validTokenPresent = await apiService.getAccessToken();
    }

    if (validTokenPresent) {
      Get.offNamed(Routes.DASHBOARD);
      if (SharedPrefs.getUserId() != null) {
        if (SharedPrefs.getUserType() == 2) {
          Get.offNamed(Routes.DELIVERY_HOME);
        } else {
          Get.offNamed(Routes.DASHBOARD);
        }
      } else {
        Get.offNamed(Routes.LOGIN);
      }
    }
  }
}
