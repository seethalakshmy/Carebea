import 'package:carebea/app/core/helper.dart';
import 'package:carebea/app/modules/shops/models/order_list_model.dart';
import 'package:carebea/app/utils/assets.dart';
import 'package:carebea/app/utils/theme.dart';
import 'package:carebea/app/utils/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class OrderHistoryTile extends StatelessWidget {
  const OrderHistoryTile({
    Key? key,
    required this.orders,
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
                    if (orders.deliveryDate != null)
                      Text(
                        'Delivery Date : ${formatDate(orders.deliveryDate!)}',
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
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              orders.shopName!,
              style: customTheme(context).medium.copyWith(fontSize: 12),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  Assets.assetsLocationFilled,
                  scale: 3,
                ),
                const SizedBox(width: 2),
                Expanded(
                  child: Text(
                    orders.shopAddress?.split("\n").join(" ") ?? "",
                    style: customTheme(context).regular.copyWith(fontSize: 11),
                  ),
                ),
                const SizedBox(width: 5),
                if ((orders.shopMobile ?? "").isNotEmpty)
                  InkWell(
                    onTap: () {
                      callPhone(orders.shopMobile!);
                    },
                    child: CircleAvatar(
                      radius: 17,
                      backgroundColor: customTheme(context).primary.withOpacity(.2),
                      child: Image.asset(
                        Assets.assetsPhone,
                        scale: 2.5,
                      ),
                    ),
                  )
              ],
            ),
          ),
          if ((orders.productList ?? []).isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Product',
                style: customTheme(context).medium.copyWith(fontSize: 11),
              ),
            ),
          // Builder(builder: (context) {
          //   var productList = orders.productList ?? [];

          //   if (productList.length > 2) {
          //     productList = productList.sublist(0, 2);
          //   }
          //   return Column(
          //       children: (productList)
          //           .map(
          //             (e) => Padding(
          //               padding: const EdgeInsets.only(left: 10, right: 10, bottom: 4),
          //               child: Row(
          //                 children: [
          //                   Text(
          //                     e.name!,
          //                     style: customTheme(context).regular.copyWith(fontSize: 11),
          //                   ),
          //                   SizedBox(
          //                     width: 10,
          //                   ),
          //                   Text(
          //                     e.productUomQty.toString(),
          //                     style: customTheme(context).regular.copyWith(fontSize: 11),
          //                   ),
          //                 ],
          //               ),
          //             ),
          //           )
          //           .toList());
          // }),
          // Padding(
          //   padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.end,
          //     children: [
          //       Text(
          //         'View details',
          //         style: customTheme(context).medium.copyWith(fontSize: 10),
          //       ),
          //       Icon(
          //         Icons.arrow_forward_ios_rounded,
          //         size: 10,
          //         color: Colors.black54,
          //       )
          //     ],
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
            child: Row(
              children: [
                if ((orders.productList ?? []).isNotEmpty)
                  Expanded(
                    flex: 3,
                    child: Text(
                      orders.productList!.first.name!,
                      style: customTheme(context).regular.copyWith(fontSize: 11),
                    ),
                  ),
                SizedBox(
                  width: 10,
                ),
                if ((orders.productList ?? []).isNotEmpty)
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
