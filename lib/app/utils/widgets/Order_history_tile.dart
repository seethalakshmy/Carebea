import 'package:carebea/app/modules/shops/models/order_list_model.dart';
import 'package:carebea/app/utils/theme.dart';
import 'package:carebea/app/utils/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class OrderHistoryTile extends StatelessWidget {
  const OrderHistoryTile({
    Key? key, required this.orders,
  }) : super(key: key);
  final History orders;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      // padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Order ID: ${orders.orderId}',
                      style: customTheme(context).medium.copyWith(fontSize: 12, color: customTheme(context).secondary),
                    ),
                    Text(
                      'Delivery Date : ${orders.dateOrder!.day}/${orders.dateOrder!.month}/${orders.dateOrder!.year}',
                      style: customTheme(context).regular.copyWith(fontSize: 11),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: customTheme(context).action.withOpacity(.25),
                  ),
                  child: Text(
                    orders.status!,
                    style: customTheme(context).medium.copyWith(fontSize: 10, color: customTheme(context).action),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  orders.name!,
                  style: customTheme(context).medium.copyWith(fontSize: 11),
                ),
                Column(
                  children: [
                    Text(
                      'Total',
                      style: customTheme(context).regular.copyWith(fontSize: 10, color: customTheme(context).secondary),
                    ),
                    Text(
                      "₹${orders.amountTotal}",
                      style: customTheme(context).medium.copyWith(fontSize: 14),
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              'Product',
              style: customTheme(context).medium.copyWith(fontSize: 11),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
            child: Row(
              children: [
                Text(
                  orders.productList!.first.name!,
                  style: customTheme(context).regular.copyWith(fontSize: 11),
                ),
                SizedBox(width: 10,),
                Text(
                  orders.productList!.first.productUomQty.toString(),
                  style: customTheme(context).regular.copyWith(fontSize: 11),
                ),
                Spacer(),
                Text(
                  'View details',
                  style: customTheme(context).medium.copyWith(fontSize: 10),
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 10,
                  color: Colors.black54,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
