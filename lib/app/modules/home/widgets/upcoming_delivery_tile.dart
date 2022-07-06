import 'package:carebea/app/utils/theme.dart';
import 'package:carebea/app/utils/widgets/custom_card.dart';
import 'package:carebea/app/utils/widgets/order_status_chip.dart';
import 'package:flutter/material.dart';

class UpComingDeliveryTile extends StatelessWidget {
  const UpComingDeliveryTile({
    Key? key,
    required this.orderId,
    required this.orderStatus,
    required this.orderStatusColor,
    required this.title,
    required this.total,
  }) : super(key: key);

  final String orderId;
  final String orderStatus;
  final String title;
  final double total;
  final Color orderStatusColor;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 5, top: 10),
            child: Row(
              children: [
                Text(
                  "Order ID.: #$orderId",
                  style: customTheme(context).medium.copyWith(fontSize: 11, color: customTheme(context).secondary),
                ),
                const Spacer(),
                OrderStatusChip(
                  statusText: orderStatus,
                  color: orderStatusColor,
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
                  title,
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
                      "₹${total.toStringAsFixed(2)}",
                      style: customTheme(context).medium.copyWith(fontSize: 14, color: Colors.black),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}