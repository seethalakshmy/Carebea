import 'package:carebea/app/modules/delivery_home/controllers/delivery_home_controller.dart';
import 'package:carebea/app/modules/orders/controllers/orders_controller.dart';
import 'package:carebea/app/utils/widgets/circular_progress_indicator.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../utils/theme.dart';
import '../../../utils/widgets/Order_history_tile.dart';
import '../../../utils/widgets/appbar.dart';
import '../controllers/homePage_orderListing_controller.dart';

class DeliveryOrderListView extends GetView<DeliveryHomeController> {
  DeliveryOrderListView(this.title, this.isFrom, {Key? key}) : super(key: key);
  HomePageOrderListingController homePageOrderListingController = Get.put(HomePageOrderListingController());
  final String title;
  final String isFrom;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            title,
            style: customTheme(context).medium.copyWith(fontSize: 14, color: Colors.black),
          ),
          leading: InkWell(
              onTap: () {
                Get.back();
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              )),
        ),
        body: Obx(() {
          if (homePageOrderListingController.isDeliveryOrdersLoading.value) {
            return Center(child: circularProgressIndicator(context));
          }
          if (homePageOrderListingController.orderHistoryList.isEmpty) {
            return Center(
              child: Text('No orders'),
            );
          }
          return ListView.separated(
              separatorBuilder: (_, __) => const SizedBox(height: 0),
              scrollDirection: Axis.vertical,
              itemCount: homePageOrderListingController.orderHistoryList.length,
              itemBuilder: (context, index) {
                var orderList = homePageOrderListingController.orderHistoryList[index];
                return ExpansionTile(
                  title: Text(orderList.first.srName ?? ""),
                  children: orderList.map((e) {
                    return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        child: InkWell(
                          onTap: () {
                            if (isFrom == 'delivery') {
                              Get.toNamed(Routes.ORDER_DETAILS_DELIVERY, arguments: {'order_id': e.id});
                            } else {
                              Get.toNamed(Routes.ORDER_HISTORY_DETAILS, arguments: {'order_id': e.id});
                            }
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: OrderHistoryTile(orders: e),
                          ),
                        ));
                  }).toList(),
                );
              });
        }));
  }
}
