import 'package:carebea/app/modules/delivery_home/controllers/delivery_home_controller.dart';
import 'package:carebea/app/utils/widgets/circular_progress_indicator.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../utils/widgets/Order_history_tile.dart';
import '../../../utils/widgets/appbar.dart';

class DeliveryOrderListView extends GetView<DeliveryHomeController> {
  DeliveryOrderListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(context),
        body: Obx(() {
          if(controller.isDeliveryOrdersLoading.value){
            return Center(child: circularProgressIndicator(context));
          }
          if(controller.orders.isEmpty){
            return Center(child: Text('No orders'),);
          }
          return ListView.separated(
              separatorBuilder: (_, __) => const SizedBox(height: 0),
              scrollDirection: Axis.vertical,
              itemCount: controller.orders.length,
              itemBuilder: (context, index) {
                return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 5, vertical: 5),
                    child: InkWell(
                      onTap: () {
                        Get.toNamed(Routes.ORDER_HISTORY_DETAILS,
                            arguments: {
                              'order_id': controller.orders[index].id
                            });
                      },
                      child: OrderHistoryTile(orders: controller.orders[index]
                          ),
                    ));
              });
        })
    );
  }
}
