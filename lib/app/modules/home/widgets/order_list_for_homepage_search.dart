import 'package:carebea/app/modules/shops/models/order_list_model.dart';
import 'package:carebea/app/routes/app_pages.dart';
import 'package:carebea/app/utils/theme.dart';
import 'package:carebea/app/utils/widgets/custom_card.dart';
import 'package:carebea/app/utils/widgets/order_status_chip.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderTileHomePageSearch extends StatelessWidget {
  const OrderTileHomePageSearch({
    Key? key,
    required this.onTap,
    required this.order,
  }) : super(key: key);
  final History order;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CustomCard(
        margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        // order.name!,
                        'Order ID: ${order.name}',
                        style:
                            customTheme(context).medium.copyWith(fontSize: 12, color: customTheme(context).secondary),
                      ),
                      Text(
                        'Delivery Date : ${order.dateOrder!.day}/${order.dateOrder!.month}/${order.dateOrder!.year}',
                        style: customTheme(context).regular.copyWith(fontSize: 11),
                      ),
                    ],
                  ),
                  OrderStatusChip(
                    statusText: order.status!,
                    color: customTheme(context).action,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
