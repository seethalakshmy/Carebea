import 'package:carebea/app/modules/home/data/models/home_data_model.dart';
import 'package:carebea/app/routes/app_pages.dart';
import 'package:carebea/app/utils/theme.dart';
import 'package:carebea/app/utils/widgets/custom_card.dart';
import 'package:carebea/app/utils/widgets/order_status_chip.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpComingDeliveryTile extends StatelessWidget {
  const UpComingDeliveryTile({
    Key? key,
    required this.order,
  }) : super(key: key);

  final UpcomingOrdersList order;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(Routes.ORDER_HISTORY_DETAILS, arguments: {"order_id": order.orderId});
      },
      child: CustomCard(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 5, top: 10),
              child: Row(
                children: [
                  Text(
                    "Order ID.: #${order.orderName}",
                    style: customTheme(context).medium.copyWith(fontSize: 11, color: customTheme(context).secondary),
                  ),
                  const Spacer(),
                  OrderStatusChip(
                    statusText: order.status!,
                    color: customTheme(context).action,
                  ),
                  const SizedBox(width: 2),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 10,
                  )
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 3, 10, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    order.shopName!,
                    style: customTheme(context).medium.copyWith(fontSize: 11, color: Colors.black),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Total",
                        style: customTheme(context).regular.copyWith(fontSize: 10, color: Color(0xff494949)),
                      ),
                      Text(
                        "₹${order.amountTotal!.toStringAsFixed(2)}",
                        style: customTheme(context).medium.copyWith(fontSize: 14, color: Colors.black),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
