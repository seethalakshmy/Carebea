import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/assets.dart';
import '../controllers/dashboard_controller.dart';

class BottomNavBarView extends GetView<DashboardController> {
  const BottomNavBarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(5.0), topLeft: Radius.circular(5.0))),
      height: 50,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        InkWell(
          onTap: () => controller.bottomNavViewChange(0),
          child: Column(children: [
            Image.asset(
              Assets.homeIcon,
              height: 30,
              width: 20,
            ),
            Text('Home'),
          ]),
        ),
        InkWell(
          onTap: () => controller.bottomNavViewChange(1),
          child: Column(children: [
            Image.asset(
              Assets.shopIcon,
              height: 30,
              width: 20,
            ),
            Text('Shops'),
          ]),
        ),
        InkWell(
          onTap: () => controller.bottomNavViewChange(2),
          child: Column(children: [
            Image.asset(
              Assets.orderIcon,
              height: 30,
              width: 20,
            ),
            Text('Orders'),
          ]),
        ),
        InkWell(
          onTap: () => controller.bottomNavViewChange(3),
          child: Column(children: const [
            Icon(
              Icons.account_circle,
              size: 30,
            ),
            Text('Profile'),
          ]),
        ),
      ]),
    );
  }
}
