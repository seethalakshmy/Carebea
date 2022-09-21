import 'package:carebea/app/modules/create_order/controllers/create_order_controller.dart';
import 'package:carebea/app/utils/theme.dart';
import 'package:carebea/app/utils/widgets/appbar.dart';
import 'package:carebea/app/utils/widgets/custom_button.dart';
import 'package:carebea/app/utils/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class OrderSummmaryView extends StatelessWidget {
  const OrderSummmaryView({Key? key}) : super(key: key);
  static final CreateOrderController createOrderController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: ListView(
        children: [_title(context), const SizedBox(height: 15), _buildBody(context)],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: Obx(() {
          return CustomButton(
              isLoading: createOrderController.creatingOrder.value,
              title: "Confirm order",
              onTap: () {
                createOrderController.createOrder();
              });
        }),
      ),
    );
  }

  Padding _title(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 17,
            ),
          ),
          Text(
            "Order summary",
            style: customTheme(context).medium.copyWith(fontSize: 16, color: Colors.black),
          )
        ],
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return CustomCard(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Products',
            style: customTheme(context).medium.copyWith(fontSize: 18),
          ),
          SizedBox(height: 10),
          Table(
            columnWidths: {0: FlexColumnWidth(8), 1: FlexColumnWidth(2), 2: FlexColumnWidth(2)},
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
                createOrderController.selectedProducts.length,
                (index) {
                  var product = createOrderController.selectedProducts[index];
                  return TableRow(children: [
                    Text(
                      product.name!,
                      style: customTheme(context).regular.copyWith(fontSize: 11),
                    ),
                    Text(
                      "${createOrderController.cartproducts[product.id]!.text}x",
                      style: customTheme(context).regular.copyWith(fontSize: 11),
                    ),
                    Text(
                      "₹${createOrderController.productPrice(Get.arguments["shop"].category, product).toStringAsFixed(2)}",
                      style: customTheme(context).regular.copyWith(fontSize: 11),
                    ),
                  ]);
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
