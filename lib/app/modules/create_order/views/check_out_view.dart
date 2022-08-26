import 'package:carebea/app/core/helper.dart';
import 'package:carebea/app/modules/create_order/controllers/create_order_controller.dart';
import 'package:carebea/app/modules/create_order/model/create_order.dart';
import 'package:carebea/app/modules/create_order/model/productlist_model.dart';
import 'package:carebea/app/modules/create_order/widgets/cart_count_widget.dart';
import 'package:carebea/app/modules/shops/models/shop_model.dart';
import 'package:carebea/app/routes/app_pages.dart';
import 'package:carebea/app/utils/assets.dart';
import 'package:carebea/app/utils/theme.dart';
import 'package:carebea/app/utils/widgets/appbar.dart';
import 'package:carebea/app/utils/widgets/circular_progress_indicator.dart';
import 'package:carebea/app/utils/widgets/custom_alertbox.dart';
import 'package:carebea/app/utils/widgets/custom_button.dart';
import 'package:carebea/app/utils/widgets/custom_card.dart';
import 'package:carebea/app/utils/widgets/custom_radio_button.dart';
import 'package:carebea/app/utils/widgets/custom_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';

class CheckoutView extends StatelessWidget {
  CheckoutView({Key? key}) : super(key: key);
  CreateOrderController createOrderController = Get.find();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => createOrderController.onWillpopClose(),
      child: Scaffold(
        appBar: appBar(context),
        body: ListView(
          children: [
            _title(context),
            const SizedBox(height: 15),
            _addressTile(context, (Get.arguments["shop"] as ShopList)),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 24, 24, 19),
              child: _productListing(context, createOrderController),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 35),
              child: _paymentMethods(context),
            ),
            _billDetails(context),
            _comments()
          ],
        ),
        bottomNavigationBar: Container(
          padding: const EdgeInsets.only(left: 23, right: 4),
          alignment: Alignment.center,
          height: 55,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [BoxShadow(color: customTheme(context).shadowColor, blurRadius: 10)],
            borderRadius: const BorderRadius.vertical(top: Radius.circular(7)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Total",
                    style: customTheme(context).regular.copyWith(fontSize: 11),
                  ),
                  Text(
                    createOrderController.createOrderResponse!.result!.amountTotal!.toStringAsFixed(2),
                    style: customTheme(context).medium.copyWith(fontSize: 16),
                  ),
                ],
              ),
              Obx(() {
                if (createOrderController.isOrderConfirming.value) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: SizedBox(
                      height: 20,
                      width: 20,
                      child: circularProgressIndicator(context, strokeWidth: 3),
                    ),
                  );
                }
                return Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Container(
                    decoration:
                        BoxDecoration(color: customTheme(context).primary, borderRadius: BorderRadius.circular(7)),
                    child:TextButton(onPressed: () {
                      createOrderController.confirmOrder(context);
                    },
                    child:Text('Confirm Order',style:customTheme(context).regular.copyWith(fontSize: 12, color: Colors.white),),

                    )

                    // ConfirmationSlider(
                    //   backgroundColor: customTheme(context).primary,
                    //   height: 48,
                    //   width: 200,
                    //   shadow: BoxShadow(color: Colors.transparent),
                    //   onConfirmation: () => createOrderController.confirmOrder(context),
                    //   foregroundColor: Colors.transparent,
                    //   text: "Swipe to Confirm",
                    //   textStyle: customTheme(context).regular.copyWith(fontSize: 12, color: Colors.white),
                    // ),
                  ),
                );
              })
            ],
          ),
        ),
      ),
    );
  }

  Padding _comments() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 19, 24, 10),
      child: CustomTextField(
        textcontroller: createOrderController.commentController,
        maxLines: 4,
        hint: "Add Comments",
      ),
    );
  }

  Column _paymentMethods(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "Payment Method",
          style: customTheme(context).medium.copyWith(fontSize: 12, color: Colors.black),
        ),
        const SizedBox(height: 10),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: createOrderController.createOrderResponse!.result!.paymentMethods!
                .map(
                  (e) => Obx(() {
                    return CustomRadioButton<PaymentMethod>(
                      groupValue: createOrderController.selectedPaymentMethod.value,
                      value: e,
                      onChanged: (value) {
                        createOrderController.selectedPaymentMethod(value);
                      },
                      label:e.name,
                    );
                  }),
                )
                .toList()),
      ],
    );
  }

  Column _productListing(BuildContext context, CreateOrderController createOrderController) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Products (${createOrderController.selectedProducts.length})",
          style: customTheme(context).regular.copyWith(fontSize: 11),
        ),
        if (createOrderController.selectedProducts.length > 2)
          ...createOrderController.selectedProducts.sublist(0, 2).map((product) {
            return Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ProductTile(
                product: product,
                category: Get.arguments["shop"].category,
              ),
            );
          })
        else
          ...createOrderController.selectedProducts.map((product) {
            return Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ProductTile(
                product: product,
                category: Get.arguments["shop"].category,
              ),
            );
          }),
        if (createOrderController.selectedProducts.length > 2)
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {
                Get.back();
                return;
                var shop = Get.arguments["shop"];
                Get.bottomSheet(Container(
                  decoration:
                      BoxDecoration(color: Colors.white, borderRadius: BorderRadius.vertical(top: Radius.circular(12))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Text(
                          "Products",
                          style: customTheme(context).medium,
                        ),
                      ),
                      Flexible(
                        child: ListView.builder(
                            itemBuilder: (context, index) {
                              var product = createOrderController.selectedProducts[index];
                              return Padding(
                                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                                child: ProductTile(
                                  product: product,
                                  category: shop.category,
                                ),
                              );
                            },
                            itemCount: createOrderController.selectedProducts.length),
                      ),
                    ],
                  ),
                ));
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Show more",
                    style: customTheme(context).regular.copyWith(fontSize: 12, color: customTheme(context).primary),
                  ),
                  const SizedBox(width: 2),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 10,
                    color: customTheme(context).primary,
                  )
                ],
              ),
            ),
          )
      ],
    );
  }

  CustomCard _addressTile(BuildContext context, ShopList shop) {
    return CustomCard(
        margin: const EdgeInsets.symmetric(horizontal: 24),
        padding: const EdgeInsets.all(13),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Location",
              style: customTheme(context).regular.copyWith(fontSize: 11, color: Color(0xff767676)),
            ),
            const SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  Assets.assetsLocationFilled,
                  scale: 3,
                ),
                const SizedBox(
                  width: 5,
                ),
                Flexible(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        shop.name!,
                        style: customTheme(context).medium.copyWith(fontSize: 12, color: Colors.black),
                      ),
                      Flexible(
                        child: Text(
                          getFullAddress(shop.address),
                          style: customTheme(context).regular.copyWith(fontSize: 11),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }

  CustomCard _billDetails(BuildContext context) {
    return CustomCard(
        margin: const EdgeInsets.symmetric(horizontal: 24),
        padding: const EdgeInsets.all(13),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Bill Details",
              style: customTheme(context).regular.copyWith(fontSize: 11, color: Color(0xff767676)),
            ),
            const SizedBox(height: 10),
            PaymentTile(title: "Item Total", value: createOrderController.createOrderResponse!.result!.amountUntaxed!),
            PaymentTile(title: "GST Tax", value: createOrderController.createOrderResponse!.result!.amountTax!),
            // PaymentTile(title: "SCGST Tax", value: 15),
            PaymentTile(title: "Discount", value: 0),
          ],
        ));
  }

  Padding _title(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 10),
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
            "Confirm order",
            style: customTheme(context).medium.copyWith(fontSize: 16, color: Colors.black),
          )
        ],
      ),
    );
  }
}

class PaymentTile extends StatelessWidget {
  const PaymentTile({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);
  final String title;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          title,
          style: customTheme(context).regular.copyWith(fontSize: 12),
        ),
        const Spacer(),
        Text(
          "₹${value.toStringAsFixed(2)}",
          style: customTheme(context).regular.copyWith(fontSize: 12),
        ),
      ],
    );
  }
}

class ProductTile extends StatelessWidget {
  const ProductTile({
    required this.product,
    required this.category,
    Key? key,
  }) : super(key: key);
  final ProductList product;
  final String category;
  static final CreateOrderController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      height: 100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: _image(),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: RichText(
                      maxLines: 3,
                      overflow: TextOverflow.visible,
                      text: TextSpan(
                          text: product.name,
                          // children: [
                          //   TextSpan(text: "500ml", style: TextStyle(color: Color(0xff929292))),
                          // ],
                          style: customTheme(context).regular.copyWith(fontSize: 12)),
                    ),
                  ),
                ),
                // const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 8, right: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      // Obx(() {
                      //   return CartCountWidget(
                      //     id: product.id!,
                      //     count: _controller.cartproducts[product.id!]!,
                      //   );
                      // }),
                      Text(
                        "₹${_controller.productPrice(category, product).toStringAsFixed(2)}",
                        style: customTheme(context).medium.copyWith(fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _image() {
    return SizedBox(
      height: 100,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: AspectRatio(
          aspectRatio: 58 / 74,
          child: Image.asset(
            Assets.assetsLoginBackground,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
