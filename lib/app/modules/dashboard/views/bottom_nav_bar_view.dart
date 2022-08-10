import 'package:carebea/app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/assets.dart';
import '../controllers/dashboard_controller.dart';

class BottomNavBarView extends GetView<DashboardController> {
  const BottomNavBarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: customTheme(context).shadowColor, blurRadius: 10)],
          borderRadius: const BorderRadius.only(topRight: Radius.circular(12.0), topLeft: Radius.circular(12.0))),
      height: 50,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        InkWell(
          onTap: () => controller.bottomNavViewChange(0),
          child: Column(children: [
            Image.asset(
              Assets.homeIcon,
              height: 30,
              width: 20,
              color: controller.currentScreenIndex.value == 0 ? customTheme(context).primary : const Color(0xff929292),
            ),
            Text(
              'Home',
              style: customTheme(context).medium.copyWith(
                    color: controller.currentScreenIndex.value == 0
                        ? customTheme(context).primary
                        : const Color(0xff929292),
                    fontSize: 12,
                  ),
            ),
          ]),
        ),
        InkWell(
          onTap: () => controller.bottomNavViewChange(1),
          child: Column(children: [
            Image.asset(
              Assets.shopIcon,
              height: 30,
              width: 20,
              color: controller.currentScreenIndex.value == 1 ? customTheme(context).primary : const Color(0xff929292),
            ),
            Text(
              'Shops',
              style: customTheme(context).medium.copyWith(
                    color: controller.currentScreenIndex.value == 1
                        ? customTheme(context).primary
                        : const Color(0xff929292),
                    fontSize: 12,
                  ),
            ),
          ]),
        ),
        InkWell(
          onTap: () => controller.bottomNavViewChange(2),
          child: Column(children: [
            Image.asset(
              Assets.orderIcon,
              height: 30,
              width: 20,
              color: controller.currentScreenIndex.value == 2 ? customTheme(context).primary : const Color(0xff929292),
            ),
            Text(
              'Orders',
              style: customTheme(context).medium.copyWith(
                    color: controller.currentScreenIndex.value == 2
                        ? customTheme(context).primary
                        : const Color(0xff929292),
                    fontSize: 12,
                  ),
            ),
          ]),
        ),
        InkWell(
          onTap: () => controller.bottomNavViewChange(3),
          child: Column(children: [
            CircleAvatar(
              radius: 15,
              foregroundImage:
                  NetworkImage(controller.profileController.profileResponse?.profileResponseResult?.imgUrl ?? ""),
              child: Icon(
                Icons.account_circle,
                size: 30,
                color:
                    controller.currentScreenIndex.value == 3 ? customTheme(context).primary : const Color(0xff929292),
              ),
            ),
            Text(
              'Profile',
              style: customTheme(context).medium.copyWith(
                    color: controller.currentScreenIndex.value == 3
                        ? customTheme(context).primary
                        : const Color(0xff929292),
                    fontSize: 12,
                  ),
            ),
          ]),
        ),
      ]),
    );
  }
}
