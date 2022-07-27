import 'package:carebea/app/modules/create_order/controllers/create_order_controller.dart';
import 'package:carebea/app/modules/create_order/model/productlist_model.dart';
import 'package:carebea/app/modules/create_order/views/check_out_view.dart';
import 'package:carebea/app/modules/create_order/widgets/cart_count_widget.dart';
import 'package:carebea/app/utils/assets.dart';
import 'package:carebea/app/utils/theme.dart';
import 'package:carebea/app/utils/widgets/appbar.dart';
import 'package:carebea/app/utils/widgets/circular_progress_indicator.dart';
import 'package:carebea/app/utils/widgets/custom_button.dart';
import 'package:carebea/app/utils/widgets/custom_card.dart';
import 'package:carebea/app/utils/widgets/custom_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../shops/models/shop_model.dart';

class AddProductsView extends StatelessWidget {
  AddProductsView({Key? key}) : super(key: key);
  CreateOrderController createOrderController = Get.put(CreateOrderController());

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => createOrderController.onWillpopClose(),
      child: Scaffold(
        appBar: appBar(context),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _title(context),
            _productsText(context),
            _search(context),
            const SizedBox(height: 19),
            Flexible(
              child: Obx(() {
                if (createOrderController.isProductsLoading.value) {
                  return circularProgressIndicator(context);
                }
                return _productListView();
              }),
            ),
          ],
        ),
        bottomNavigationBar: Obx(() {
          return InkWell(
            onTap: createOrderController.creatingOrder.value
                ? null
                : () {
                    createOrderController.createOrder();
                  },
            child: Container(
              alignment: Alignment.center,
              height: 55,
              decoration: BoxDecoration(
                color: customTheme(context).primary,
                borderRadius: const BorderRadius.vertical(top: Radius.circular(7)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 23, right: 15),
                child: Row(
                  children: [
                    Obx(() {
                      return Text(
                        "${createOrderController.cartproducts.length} items  |  ",
                        style: customTheme(context).regular.copyWith(fontSize: 13, color: Colors.white),
                      );
                    }),
                    Obx(() {
                      return Text(
                        "₹${createOrderController.totalCartCost.value.toStringAsFixed(2)}",
                        style: customTheme(context).medium.copyWith(fontSize: 13, color: Colors.white),
                      );
                    }),
                    const Spacer(),
                    Obx(() {
                      if (createOrderController.creatingOrder.value) {
                        return const SizedBox(
                          height: 10,
                          width: 10,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            valueColor: AlwaysStoppedAnimation(Colors.white),
                          ),
                        );
                      }
                      return Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Place order   ",
                            style: customTheme(context).regular.copyWith(fontSize: 13, color: Colors.white),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            size: 13,
                            color: Colors.white,
                          ),
                        ],
                      );
                    })
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }

  ListView _productListView() {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: createOrderController.productList.length,
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(height: 15);
      },
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 19),
          child: ProductTile(product: createOrderController.productList[index]),
        );
      },
    );
  }

  Padding _productsText(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(23, 19, 0, 10),
      child: Text(
        "Products",
        style: customTheme(context).medium.copyWith(fontSize: 13),
      ),
    );
  }

  Padding _search(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23),
      child: CustomTextField(
        fillcolor: customTheme(context).textFormFieldColor,
        icon: const Icon(
          CupertinoIcons.search,
          color: Color(0xff9F9F9F),
        ),
        hint: "Search products",
      ),
    );
  }

  Container _title(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
          boxShadow: [BoxShadow(blurRadius: 10, color: customTheme(context).shadowColor)]),
      child: Row(
        children: [
          IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back_ios,
                size: 15,
              )),
          Text(
            " ${(Get.arguments['shop'] as ShopList).name}",
            style: customTheme(context).medium.copyWith(fontSize: 14),
          ),
        ],
      ),
    );
  }
}

class ProductTile extends StatelessWidget {
  ProductTile({
    Key? key,
    required this.product,
  }) : super(key: key);
  final ProductList product;

  CreateOrderController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomCard(
          margin: const EdgeInsets.all(4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 120,
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: RichText(
                                    maxLines: 3,
                                    overflow: TextOverflow.visible,
                                    text: TextSpan(
                                        text: product.name,
                                        children: [
                                          TextSpan(
                                              text: " ${product.qtyAvailable}".toString(),
                                              style: TextStyle(color: Color(0xff929292))),
                                          TextSpan(
                                              text: " ${product.unit}", style: TextStyle(color: Color(0xff929292))),
                                        ],
                                        style: customTheme(context).regular.copyWith(fontSize: 11)),
                                  ),
                                ),
                              ),
                              Spacer(),
                              // Container(
                              //   padding: const EdgeInsets.symmetric(
                              //       horizontal: 4, vertical: 5),
                              //   decoration: BoxDecoration(
                              //       color: customTheme(context).primary,
                              //       borderRadius: const BorderRadius.only(
                              //           topRight: Radius.circular(10),
                              //           bottomLeft: Radius.circular(10))),
                              //   child: Text("BUY 2 GET 1 FREE",
                              //       style: customTheme(context)
                              //           .regular
                              //           .copyWith(
                              //               fontSize: 10, color: Colors.white)),
                              // )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                '₹${_controller.productPrice((Get.arguments['shop'] as ShopList).category!, product)}',
                                style: customTheme(context).medium.copyWith(fontSize: 12),
                              ),
                              const SizedBox(width: 4),
                              // Text(
                              //   "₹205",
                              //   style: customTheme(context).regular.copyWith(
                              //       fontSize: 9,
                              //       color: const Color(0xff929292),
                              //       decoration: TextDecoration.lineThrough),
                              // ),
                            ],
                          ),
                          Spacer(),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 8.0, bottom: 10),
                              child:
                              // (product.available?.toLowerCase() == 'unavailable') ?
                              // Text(
                              //         '${product.available}',
                              //         style:
                              //             TextStyle(color: customTheme(context).primary, fontWeight: FontWeight.bold),
                              //       )
                              //     :
                                Obx(() {
                                      if (_controller.cartproducts.containsKey(product.id)) {
                                        return CartCountWidget(
                                            id: product.id!, count: _controller.cartproducts[product.id] ?? 0);
                                      }
                                      return CustomButton(
                                        isDense: true,
                                        title: "Add",
                                        onTap: () {
                                          _controller.updateCartProduct(product.id!, 1);
                                        },
                                        fontSize: 10,
                                        color: const Color(0xff47BED9),
                                      );
                                    }),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 8.0, bottom: 8),
              //   child: Text(
              //     "*Offer valid until 30 June",
              //     style: customTheme(context)
              //         .regular
              //         .copyWith(fontSize: 11, color: Colors.black),
              //   ),
              // )
            ],
          ),
        ),
        // Container(
        //   height: 30,
        //   width: 30,
        //   alignment: Alignment.center,
        //   decoration: BoxDecoration(
        //       color: customTheme(context).primary,
        //       borderRadius: BorderRadius.circular(100)),
        //   child: RichText(
        //     text: TextSpan(
        //         text: "10",
        //         children: [
        //           TextSpan(text: "%\noff", style: TextStyle(fontSize: 9))
        //         ],
        //         style: customTheme(context)
        //             .regular
        //             .copyWith(fontSize: 11, color: Colors.white, height: .9)),
        //   ),
        // )
      ],
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
