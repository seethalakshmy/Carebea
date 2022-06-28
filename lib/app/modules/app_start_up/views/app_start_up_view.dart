import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../utils/assets.dart';
import '../controllers/app_start_up_controller.dart';

class AppStartUpView extends GetView<AppStartUpController> {
  const AppStartUpView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Image.asset(Assets.assetsSplashImage),
        )
    );
  }
}
