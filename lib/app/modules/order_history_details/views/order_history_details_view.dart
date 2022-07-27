import 'package:carebea/app/core/helper.dart';
import 'package:carebea/app/modules/shops/models/order_list_model.dart';
import 'package:carebea/app/utils/widgets/appbar.dart';
import 'package:carebea/app/utils/widgets/circular_progress_indicator.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../utils/assets.dart';
import '../../../utils/theme.dart';
import '../../../utils/widgets/custom_card.dart';
import '../controllers/order_history_details_controller.dart';

class OrderHistoryDetailsView extends GetView<OrderHistoryDetailsController> {
  OrderHistoryDetailsView({Key? key}) : super(key: key) {
    controller.fetchOrderDetails(Get.arguments['order_id']);
  }

  @override
  Widget build(BuildContext context) {
    double itemTotal = 0;
    return Scaffold(
        appBar: appBar(context),
        body: Obx(() {
          if (controller.isOrderDetailsLoaded.value) {
            return Center(child: circularProgressIndicator(context));
          }

          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Icon(
                            Icons.arrow_back_ios_new,
                            size: 17,
                          )),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Order ID: #${Get.arguments['order_id']}',
                        style: customTheme(context).medium.copyWith(fontSize: 16),
                      ),
                      const Spacer(),
                      // Image.asset(
                      //   Assets.edit,
                      //   scale: 3,
                      // )
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Builder(builder: (context) {
                    if (!(controller.orderListDetailResponse?.orderListResult?.status ?? false)) {
                      return Center(
                        child: Text(
                          controller.orderListDetailResponse?.orderListResult?.message ??
                              "Something happend, Please try again",
                          style: customTheme(context).regular,
                        ),
                      );
                    }
                    var orders = controller.orderListDetailResponse!.orderListResult!.history!.first;
                    return CustomCard(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Order ID: #${orders.id}',
                                      style: customTheme(context)
                                          .medium
                                          .copyWith(fontSize: 12, color: customTheme(context).secondary),
                                    ),
                                    if (orders.deliveryDate != null)
                                      Text(
                                        'Delivery Date : ${formatDate(orders.deliveryDate!)}',
                                        style: customTheme(context).regular.copyWith(fontSize: 10),
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
                                    'Delivered',
                                    style: customTheme(context)
                                        .medium
                                        .copyWith(fontSize: 10, color: customTheme(context).action),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: .5,
                            width: MediaQuery.of(context).size.width,
                            color: Colors.grey,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 14),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Sales Representative: ${orders.srName}",
                                  style: customTheme(context).medium.copyWith(fontSize: 12),
                                ),
                                Text(
                                  "ordered date: ${formatDate(orders.dateOrder!)}",
                                  style: customTheme(context).regular.copyWith(fontSize: 11),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      Assets.assetsLocationFilled,
                                      scale: 3,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          orders.shopName!,
                                          style: customTheme(context).medium.copyWith(fontSize: 11),
                                        ),
                                        Text(
                                          orders.userAddress!.split("\n").join(" "),
                                          style: customTheme(context).regular.copyWith(fontSize: 11),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "Outstanding amount",
                                  style: customTheme(context).medium.copyWith(fontSize: 11),
                                ),
                                Text(
                                  "₹${orders.amountDue!.toStringAsFixed(2)}",
                                  style: customTheme(context).regular.copyWith(fontSize: 11),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: .5,
                            width: MediaQuery.of(context).size.width,
                            color: Colors.grey,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 14),
                            child: Table(
                              columnWidths: {0: FlexColumnWidth(8), 1: FlexColumnWidth(1), 2: FlexColumnWidth(1)},
                              border: TableBorder.all(width: 0, color: Colors.transparent),
                              children: [
                                TableRow(children: [
                                  Text(
                                    'Product',
                                    style: customTheme(context).medium.copyWith(fontSize: 12),
                                  ),
                                  Text(
                                    'Qty',
                                    style: customTheme(context).medium.copyWith(fontSize: 12),
                                  ),
                                  Text(
                                    'Price',
                                    style: customTheme(context).medium.copyWith(fontSize: 12),
                                  ),
                                ]),
                                TableRow(children: [
                                  Text(
                                    "",
                                    style: customTheme(context).regular.copyWith(fontSize: 5),
                                  ),
                                  Text(
                                    "",
                                    style: customTheme(context).regular.copyWith(fontSize: 5),
                                  ),
                                  Text(
                                    "",
                                    style: customTheme(context).regular.copyWith(fontSize: 5),
                                  ),
                                ]),
                                ...List.generate(
                                  orders.productList?.length ?? 0,
                                  (index) {
                                    var product = orders.productList![index];
                                    return TableRow(children: [
                                      Text(
                                        product.name!,
                                        style: customTheme(context).regular.copyWith(fontSize: 11),
                                      ),
                                      Text(
                                        "${product.productUomQty}x",
                                        style: customTheme(context).regular.copyWith(fontSize: 11),
                                      ),
                                      Text(
                                        "₹${product.price?.toStringAsFixed(2) ?? 0}",
                                        style: customTheme(context).regular.copyWith(fontSize: 11),
                                      ),
                                    ]);
                                  },
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: .5,
                            width: MediaQuery.of(context).size.width,
                            color: Colors.grey,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 14),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Item Total',
                                      style: customTheme(context).regular.copyWith(fontSize: 11, color: Colors.grey),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'GST',
                                      style: customTheme(context).regular.copyWith(fontSize: 11, color: Colors.grey),
                                    ),
                                    // SizedBox(
                                    //   height: 5,
                                    // ),
                                    // Text(
                                    //   'CGST',
                                    //   style: customTheme(context).regular.copyWith(fontSize: 11, color: Colors.grey),
                                    // ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'Discount',
                                      style: customTheme(context).regular.copyWith(fontSize: 11, color: Colors.grey),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Grand Total',
                                      style: customTheme(context).medium.copyWith(fontSize: 12),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width * .15,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "₹${orders.productTotal?.toStringAsFixed(2) ?? 0}",
                                      style: customTheme(context).regular.copyWith(fontSize: 11),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "₹${orders.amountTax?.toStringAsFixed(2) ?? 0}",
                                      style: customTheme(context).regular.copyWith(fontSize: 11),
                                    ),
                                    // SizedBox(
                                    //   height: 5,
                                    // ),
                                    // Text(
                                    //   "₹15.00",
                                    //   style: customTheme(context).regular.copyWith(fontSize: 11),
                                    // ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "₹0.00",
                                      style: customTheme(context).regular.copyWith(fontSize: 11),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "₹${orders.amountTotal?.toStringAsFixed(2) ?? 0}",
                                      style: customTheme(context).medium.copyWith(fontSize: 12),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                ],
              ),
            ),
          );
        }));
  }
}
