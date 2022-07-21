import 'package:carebea/app/core/helper.dart';
import 'package:carebea/app/routes/app_pages.dart';
import 'package:carebea/app/utils/widgets/appbar.dart';
import 'package:carebea/app/utils/widgets/circular_progress_indicator.dart';
import 'package:carebea/app/utils/widgets/custom_textfield.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../utils/assets.dart';
import '../../../utils/theme.dart';
import '../../../utils/widgets/custom_alertbox.dart';
import '../../../utils/widgets/custom_button.dart';
import '../../add_shop/views/add_shop_view.dart';
import '../controllers/order_details_delivery_controller.dart';

class OrderDetailsDeliveryView extends GetView<OrderDetailsDeliveryController> {
  OrderDetailsDeliveryView({Key? key}) : super(key: key) {
    controller.onInit();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(context),
        floatingActionButton: Obx(() {
          if (controller.isOrderDetailsLoading.value &&
              (controller.orderListDetailResponse?.orderListResult?.history ?? []).isEmpty) {
            return const SizedBox.shrink();
          }
          return _floatingActionButton(context);
        }),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: Obx(() {
          if (controller.isOrderDetailsLoading.value) {
            return Center(
              child: circularProgressIndicator(context),
            );
          }
          if ((controller.orderListDetailResponse?.orderListResult?.history ?? []).isEmpty) {
            return Center(
              child: Text(
                "Order data not found",
                style: customTheme(context).regular,
              ),
            );
          }
          var order = controller.orderListDetailResponse!.orderListResult!.history!.first;
          return Container(
            height: Get.size.height - 30,
            padding: const EdgeInsets.only(top: 30),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(topRight: Radius.circular(15), topLeft: Radius.circular(15)),
              ),
              elevation: 10,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 25, right: 20, bottom: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          InkWell(
                              onTap: () {
                                Get.back();
                              },
                              child: Icon(
                                Icons.arrow_back_ios_new,
                                size: 20,
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Order ID:#${order.orderId}',
                            style: customTheme(context).medium.copyWith(fontSize: 18),
                          )
                        ],
                      ),
                      if (order.deliveryDate != null)
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text(
                            "Delivery Date:${formatDate(order.deliveryDate!)}",
                            style: customTheme(context).regular.copyWith(fontSize: 12),
                          ),
                        ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                Assets.pickup,
                                scale: 2,
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height * .1,
                                child: DottedLine(
                                  direction: Axis.vertical,
                                  lineThickness: .5,
                                  dashLength: 4.0,
                                  dashColor: Colors.black,
                                  dashGapLength: 4.0,
                                  dashGapColor: Colors.transparent,
                                ),
                              ),
                              Image.asset(
                                Assets.assetsLocationFilled,
                                scale: 2,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Pickup point',
                                style: customTheme(context)
                                    .medium
                                    .copyWith(fontSize: 14, color: customTheme(context).secondary),
                              ),
                              Text(
                                "not in api",
                                style: customTheme(context).medium.copyWith(fontSize: 14),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height * .08,
                              ),
                              Text(
                                'Location to be delivered',
                                style: customTheme(context)
                                    .medium
                                    .copyWith(fontSize: 14, color: customTheme(context).secondary),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        order.shopName!.trim(),
                                        style: customTheme(context).medium.copyWith(fontSize: 14),
                                      ),
                                      Text(
                                        order.userAddress!.split("\n").join(" ").trim(),
                                        style: customTheme(context).regular.copyWith(fontSize: 14),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(width: 10),
                                  Image.asset(
                                    Assets.phoneFilled,
                                    scale: 3,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Order Details', style: customTheme(context).medium.copyWith(fontSize: 16)),
                      SizedBox(
                        height: 10,
                      ),
                      Table(
                        columnWidths: {0: FlexColumnWidth(7), 1: FlexColumnWidth(1), 2: FlexColumnWidth(1)},
                        border: TableBorder.all(width: 0, color: Colors.transparent),
                        children: [
                          TableRow(children: [
                            Text(
                              'Product',
                              style: customTheme(context).medium.copyWith(fontSize: 14),
                            ),
                            Text(
                              'Qty',
                              style: customTheme(context).medium.copyWith(fontSize: 14),
                            ),
                            Text(
                              'Price',
                              style: customTheme(context).medium.copyWith(fontSize: 14),
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
                            order.productList?.length ?? 0,
                            (index) {
                              var product = order.productList![index];
                              return TableRow(children: [
                                Text(
                                  product.name!,
                                  style: customTheme(context).regular.copyWith(fontSize: 12),
                                ),
                                Text(
                                  "${product.productUomQty}x",
                                  style: customTheme(context).regular.copyWith(fontSize: 12),
                                ),
                                Text(
                                  "₹${product.price?.toStringAsFixed(2) ?? 0}",
                                  style: customTheme(context).regular.copyWith(fontSize: 12),
                                ),
                              ]);
                            },
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Amount to be Collected',
                        style: customTheme(context).regular.copyWith(fontSize: 14, color: Colors.grey),
                      ),
                      Text('COD',
                          style:
                              customTheme(context).medium.copyWith(fontSize: 14, color: customTheme(context).primary)),
                      Text(
                        '₹${order.amountTotal!.toStringAsFixed(2)}',
                        style: customTheme(context).medium.copyWith(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }));
  }

  Padding _floatingActionButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomButton(
        title: 'Order Delivered',
        onTap: () {
          Get.defaultDialog(
              barrierDismissible: false,
              title: '',
              content: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Payment Method',
                      style: customTheme(context).medium.copyWith(fontSize: 18),
                    ),
                    PaymentMethodRadioButton(),
                    Text(
                      'Collect amount',
                      style: customTheme(context).regular.copyWith(fontSize: 14),
                    ),
                    CustomTextField(),
                  ],
                ),
              ),
              confirm: CustomButton(
                  title: 'Confirm',
                  onTap: () {
                    Get.back();
                    showDialog<bool>(
                        context: context,
                        builder: (ctx) {
                          return CustomAlertbox(
                            topIcon: Image.asset(
                              Assets.successIcon,
                              width: 80,
                              height: 80,
                            ),
                            title: "Delivered Successfully",
                            content: "Your delivery has been successful!",
                            actions: [
                              CustomButton(
                                  title: "Go to invoice details",
                                  onTap: () {
                                    Get.back(result: true);
                                    Get.toNamed(Routes.DELIVERY_INVOICE_DETAILS);
                                  })
                            ],
                          );
                        });
                  }));
        },
      ),
    );
  }
}

class PaymentMethodRadioButton extends StatefulWidget {
  const PaymentMethodRadioButton({Key? key}) : super(key: key);

  @override
  State<PaymentMethodRadioButton> createState() => _PaymentMethodRadioButtonState();
}

class _PaymentMethodRadioButtonState extends State<PaymentMethodRadioButton> {
  int? radioValue;
  int? selectedRadio;

  @override
  void initState() {
    super.initState();
    radioValue = 1;
  }

  setSelectedRadio(int? val) {
    setState(() {
      selectedRadio = val!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Radio<int>(
            splashRadius: 0,
            value: 1,
            groupValue: radioValue,
            onChanged: (val) {
              setSelectedRadio(val);
              radioValue = 1;
            },
            activeColor: Theme.of(context).extension<CustomTheme>()!.secondary),
        const Text("COD"),
        Radio<int>(
          value: 2,
          groupValue: radioValue,
          onChanged: (val) {
            setSelectedRadio(val);
            radioValue = 2;
          },
          activeColor: Theme.of(context).extension<CustomTheme>()!.secondary,
        ),
        const Text("Cheque"),
        Radio<int>(
          value: 3,
          groupValue: radioValue,
          onChanged: (val) {
            setSelectedRadio(val);
            radioValue = 3;
          },
          activeColor: Theme.of(context).extension<CustomTheme>()!.secondary,
        ),
        const Text("Credit")
      ],
    );
  }
}

class PaymentMethodAlertDialogue extends StatefulWidget {
  const PaymentMethodAlertDialogue({Key? key}) : super(key: key);

  @override
  State<PaymentMethodAlertDialogue> createState() => _PaymentMethodAlertDialogueState();
}

class _PaymentMethodAlertDialogueState extends State<PaymentMethodAlertDialogue> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Payment Method"),
      content: Column(
        children: [PaymentMethodRadioButton(), CustomTextField()],
      ),
      actions: [
        CustomButton(
            title: 'Confirm',
            onTap: () {
              Get.back();
            })
      ],
      elevation: 10,
    );
  }
}
