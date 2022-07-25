import 'package:carebea/app/core/helper.dart';
import 'package:carebea/app/modules/home/views/home_view.dart';
import 'package:carebea/app/modules/orders/views/orders_view.dart';
import 'package:carebea/app/modules/profile/views/profile_view.dart';
import 'package:carebea/app/modules/shops/views/list_shops.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/dashboard_controller.dart';
import 'bottom_nav_bar_view.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(() {
          return Column(
            children: [
              if (controller.currentScreenIndex.value == 0) Expanded(child: HomeView()),
              if (controller.currentScreenIndex.value == 1) Expanded(child: ListShops()),
              if (controller.currentScreenIndex.value == 2) Expanded(child: OrdersView()),
              if (controller.currentScreenIndex.value == 3) Expanded(child: ProfileView()),
              openKeyboardGuard(context, child: BottomNavBarView())
            ],
          );
        }),
      ),
    );
  }
}
