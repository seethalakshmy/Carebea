import 'package:carebea/app/utils/theme.dart';
import 'package:carebea/app/utils/widgets/custom_card.dart';
import 'package:carebea/app/utils/widgets/order_status_chip.dart';
import 'package:flutter/material.dart';

class OrderTile extends StatelessWidget {
  const OrderTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      margin: const EdgeInsets.symmetric(horizontal: 24),
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
                      'Order ID: #656546',
                      style: customTheme(context).medium.copyWith(fontSize: 12, color: customTheme(context).secondary),
                    ),
                    Text(
                      'Delivery Date : 20/06/2022',
                      style: customTheme(context).regular.copyWith(fontSize: 11),
                    ),
                  ],
                ),
                OrderStatusChip(
                  statusText: "Delivered",
                  color: customTheme(context).action,
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Product',
              style: customTheme(context).medium.copyWith(fontSize: 11),
            ),
          ),
        ],
      ),
    );
  }
}


