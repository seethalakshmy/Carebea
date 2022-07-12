import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../utils/assets.dart';
import '../controllers/app_start_up_controller.dart';

class AppStartUpView extends GetView<AppStartUpController> {
   AppStartUpView({Key? key}) : super(key: key);
  String deviceTokenToSendPushNotification = '';

  @override
  Widget build(BuildContext context) {
    getDeviceTokenToSendNotification();
    return Scaffold(
        body: Center(
          child: Image.asset(Assets.assetsSplashImage),
        )
    );
  }

   void getDeviceTokenToSendNotification()async {
     final FirebaseMessaging _fcm = FirebaseMessaging.instance;
     final token = await _fcm.getToken();
     deviceTokenToSendPushNotification = token.toString();
     print("Token Value $deviceTokenToSendPushNotification");

   }



}
