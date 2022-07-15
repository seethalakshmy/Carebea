import 'package:carebea/app/utils/widgets/appbar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../utils/assets.dart';
import '../../../utils/theme.dart';
import '../../../utils/widgets/custom_card.dart';
import '../controllers/order_history_details_controller.dart';

class OrderHistoryDetailsView extends GetView<OrderHistoryDetailsController> {
  const OrderHistoryDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(context),
        body: SingleChildScrollView(
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
                          size: 16,
                        )),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Order ID:#456789',
                      style: customTheme(context).medium.copyWith(fontSize: 16),
                    ),
                    const Spacer(),
                    Image.asset(
                      Assets.edit,
                      scale: 3,
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                CustomCard(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Order ID: #656546',
                                  style: customTheme(context)
                                      .medium
                                      .copyWith(fontSize: 12, color: customTheme(context).secondary),
                                ),
                                Text(
                                  'Delivery Date : 20/06/2022',
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
                              "Sales Representative: Akash Kumar",
                              style: customTheme(context).medium.copyWith(fontSize: 12),
                            ),
                            Text(
                              "ordered date:11/06/2022",
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
                                      "Trinity Shop",
                                      style: customTheme(context).medium.copyWith(fontSize: 11),
                                    ),
                                    Text(
                                      'Akshya Nagar 1st Block 1st cross,Rammurthy nagar,\nKerala-689145 ',
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
                              "₹2,45,000",
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
                              3,
                              (_) => TableRow(children: [
                                Text(
                                  "Eccelence Hand Wash Total Plus.",
                                  style: customTheme(context).regular.copyWith(fontSize: 11),
                                ),
                                Text(
                                  "20x",
                                  style: customTheme(context).regular.copyWith(fontSize: 11),
                                ),
                                Text(
                                  "₹951",
                                  style: customTheme(context).regular.copyWith(fontSize: 11),
                                ),
                              ]),
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
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'CGST',
                                  style: customTheme(context).regular.copyWith(fontSize: 11, color: Colors.grey),
                                ),
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
                                  "₹805.00",
                                  style: customTheme(context).regular.copyWith(fontSize: 11),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "₹155.00",
                                  style: customTheme(context).regular.copyWith(fontSize: 11),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "₹15.00",
                                  style: customTheme(context).regular.copyWith(fontSize: 11),
                                ),
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
                                  "₹1245",
                                  style: customTheme(context).medium.copyWith(fontSize: 12),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
