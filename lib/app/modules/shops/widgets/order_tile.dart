import 'package:carebea/app/modules/shops/models/order_list_model.dart';
import 'package:carebea/app/utils/theme.dart';
import 'package:carebea/app/utils/widgets/custom_card.dart';
import 'package:carebea/app/utils/widgets/order_status_chip.dart';
import 'package:flutter/material.dart';

class OrderTile extends StatelessWidget {
  const OrderTile( {
    Key? key, required this.order,
  }) : super(key: key);
  final History order;

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
                      // order.name!,
                      'Order ID: ${order.orderId}',
                      style: customTheme(context).medium.copyWith(fontSize: 12, color: customTheme(context).secondary),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ListView.separated(
                shrinkWrap: true,
                separatorBuilder: (_,__) => const SizedBox(height: 5),
                physics: const NeverScrollableScrollPhysics(),
                itemCount: order.productList!.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(order.productList![index].name!,
                              style: customTheme(context).regular.copyWith(fontSize: 12)),
                          Text(order.productList![index].productUomQty.toString(),
                              style: customTheme(context).regular.copyWith(fontSize: 12)),
                          Text('₹ ${order.productList![index].price}',
                              style: customTheme(context).regular.copyWith(fontSize: 12)),
                        ],
                      ),

                    ],
                  );
                }),

          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical:20),
            child: Row(
              children: [
                Spacer(),
                Column(
                  children: [
                    Text('Total',style: customTheme(context).regular.copyWith(fontSize: 11),),
                    Text('₹${order.amountTotal!.toStringAsFixed(2)}',
                        style: customTheme(context).medium.copyWith(fontSize: 14) )
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


