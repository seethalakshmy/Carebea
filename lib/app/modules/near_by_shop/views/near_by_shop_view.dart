import 'package:carebea/app/core/helper.dart';
import 'package:carebea/app/modules/near_by_shop/models/remark_model.dart';
import 'package:carebea/app/modules/shops/controllers/shops_controller.dart';
import 'package:carebea/app/routes/app_pages.dart';
import 'package:carebea/app/utils/assets.dart';
import 'package:carebea/app/utils/theme.dart';
import 'package:carebea/app/utils/widgets/appbar.dart';
import 'package:carebea/app/utils/widgets/circular_progress_indicator.dart';
import 'package:carebea/app/utils/widgets/custom_popupmenuitem.dart';
import 'package:carebea/app/utils/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/widgets/custom_button.dart';
import '../../../utils/widgets/custom_card.dart';
import '../controllers/near_by_shop_controller.dart';

class NearByShops extends StatelessWidget {
  NearByShops({Key? key}) : super(key: key);
  NearByShopsController controller = Get.put(NearByShopsController());
  // TextEditingController searchTextEditingController = TextEditingController();
  // FocusNode _focusNode = FocusNode();
  // static List<String> category = ['Retail', 'Supermarket', 'Wholesale', 'Zone'];

  // List<Category>? category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(context),
        body: Obx(() {
          if (controller.isLoading.value) {
            return Center(child: circularProgressIndicator(context));
          }

          return Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Near By Shops',
                  style: customTheme(context)
                      .medium
                      .copyWith(fontSize: 16, color: Colors.black),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: CustomTextField(
                        textcontroller: controller.searchEditingController,
                        key: const ValueKey("search"),
                        // focusNode: _focusNode,
                        onChanged: (val) {
                          controller.searchShop(val);
                        },
                        hint: 'Search for shops',
                        fillcolor: customTheme(context).textFormFieldColor,
                        icon: const Icon(
                          Icons.search,
                          size: 30,
                          color: Colors.grey,
                        ),
                        trailing: Obx(() {
                          return DropdownButton<String>(
                            hint: Text(
                              "Choose",
                              style: customTheme(Get.context!).regular.copyWith(
                                  fontSize: 11, color: const Color(0xff929292)),
                            ),
                            value:
                                controller.selectedSearchtype.value.type ?? "",
                            underline: const SizedBox.shrink(),
                            isDense: true,
                            onChanged: (value) {
                              // _focusNode.requestFocus();
                              controller.selectedSearchtype(
                                  controller.searchitems.singleWhere(
                                      (element) => element.type == value));
                            },
                            items: controller.searchitems
                                .map(
                                  (e) => DropdownMenuItem(
                                    value: e.type,
                                    child: Text(e.title!,
                                        style: customTheme(Get.context!)
                                            .regular
                                            .copyWith(
                                                fontSize: 11,
                                                color: Colors.black)),
                                  ),
                                )
                                .toList(),
                          );
                        }),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    if (controller.filterVals != null)
                      PopupMenuButton<String>(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7)),
                        offset: const Offset(0.0, 50),
                        padding: EdgeInsets.zero,
                        child: Image.asset(
                          Assets.filter,
                          scale: 3.5,
                        ),
                        onSelected: (element) {
                          controller.searchEditingController.text == "";
                        },
                        itemBuilder: (BuildContext context) {
                          if (controller.filterSelected.value == "") {}
                          return [
                            customPopupMenuItem<String>(
                              context,
                              name: "Category",
                              isSelected: true,
                              showBorder: false,
                            ),
                            ...buildCategoryFilterItems(
                                context, controller.filterSelected.value),
                            customPopupMenuItem<String>(
                              context,
                              name: "Zone",
                              isSelected: true,
                              showBorder: false,
                            ),
                            ...buildZoneFilterItems(
                                context, controller.filterSelected.value),
                            if (controller.filterVals?.route?.isNotEmpty ??
                                false)
                              customPopupMenuItem<String>(
                                context,
                                name: "Route",
                                isSelected: true,
                                showBorder: false,
                              ),
                            if (controller.filterVals?.route?.isNotEmpty ??
                                false)
                              ...buildRouteFilterItems(
                                  context, controller.filterSelected.value),
                            customPopupMenuItem<String>(
                              context,
                              name: "Clear",
                              isSelected: true,
                              showBorder: false,
                              onTap: controller.clearFilters,
                            ),
                          ];
                        },
                      ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                // const Text(
                //   'New',
                //   style: TextStyle(
                //     color: Colors.black26,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
                // SizedBox(
                //   height: 10,
                // ),
                // ShopListTile(shop:controller.shopListResponse!.shopListResult!.shopList[index],),
                // SizedBox(
                //   height: 10,
                // ),
                // const Text(
                //   'Last Week',
                //   style: TextStyle(
                //     color: Colors.black26,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
                SizedBox(
                  height: 10,
                ),
                Flexible(
                  child: Obx(() {
                    if (controller.isFilterClick.value) {
                      return Center(child: circularProgressIndicator(context));
                    }
                    if (controller.shopList.isEmpty) {
                      return Container(
                          alignment: Alignment.topCenter,
                          width: double.infinity,
                          padding: EdgeInsets.only(top: 50),
                          child: Text("No shops found!"));
                    }
                    return ListView.separated(
                        controller: controller.scrollController,
                        separatorBuilder: (_, __) => const SizedBox(height: 20),
                        shrinkWrap: true,
                        itemCount: controller.shopList.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (ctx) => Material(
                                  type: MaterialType.transparency,
                                  color: Colors.transparent,
                                  child: Center(
                                    child: CustomCard(
                                      padding: const EdgeInsets.all(20),
                                      width: Get.size.width * .8,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            "Remarks",
                                            style: customTheme(context)
                                                .medium
                                                .copyWith(fontSize: 14),
                                          ),
                                          const SizedBox(height: 10),

                                          Obx(() {
                                            return DropdownButton<
                                                PaymentCommentsList>(
                                              hint: Text(
                                                controller.selectedReason.value,
                                                style: customTheme(Get.context!)
                                                    .regular
                                                    .copyWith(
                                                        fontSize: 11,
                                                        color: const Color(
                                                            0xff929292)),
                                              ),
                                              // value: controller.selectedSearchtype.value,
                                              underline:
                                                  const SizedBox.shrink(),
                                              isDense: true,
                                              onChanged: (value) {
                                                // _focusNode.requestFocus();
                                                controller.selectedReason(
                                                    value?.name ?? "");
                                                controller.selectedReasonId(
                                                    (value?.id ?? 0).toInt());
                                              },
                                              items: controller.remarkList
                                                  ?.map(
                                                    (e) => DropdownMenuItem(
                                                      value: e,
                                                      child: controller
                                                              .isRemarksLoading
                                                              .value
                                                          ? CircularProgressIndicator()
                                                          : Text(e.name ?? "",
                                                              style: customTheme(Get
                                                                      .context!)
                                                                  .regular
                                                                  .copyWith(
                                                                      fontSize:
                                                                          11,
                                                                      color: Colors
                                                                          .black)),
                                                    ),
                                                  )
                                                  .toList(),
                                            );
                                          }),
                                          // CustomTextField(
                                          //   validaton: (val) {
                                          //     if ((val ?? "").isEmpty) {
                                          //       return "Collected amount is required";
                                          //     }
                                          //     if (double.parse(val!) == 0) {
                                          //       return "Collected amount can't be zero";
                                          //     }
                                          //     // if (double.parse(val ?? "0") <
                                          //     //     (
                                          //     //     shopsController.collectedAmountEditingController == 0
                                          //     //     )) {
                                          //     //   return "Collected amount can't be zero";
                                          //     // }
                                          //     return null;
                                          //   },
                                          //   inputType: TextInputType.number,
                                          //   textcontroller: shopsController
                                          //       .collectedAmountEditingController,
                                          // ),

                                          const SizedBox(height: 20),
                                          // Obx(() {

                                          Obx(() {
                                            return CustomButton(
                                                isLoading: controller
                                                    .isRemarksSubmitLoading
                                                    .value,
                                                title: "Confirm",
                                                onTap: () {
                                                  if (controller.selectedReason
                                                          .value !=
                                                      "") {
                                                    controller.submitRemarks(
                                                        commentId: controller
                                                            .selectedReasonId
                                                            .value,
                                                        shopId: controller
                                                                .shop?.id ??
                                                            0);

                                                    Get.back();
                                                  } else {
                                                    ScaffoldMessenger.of(
                                                            Get.context!)
                                                        .showSnackBar(
                                                            const SnackBar(
                                                                content: Text(
                                                                    "Please select a remark")));
                                                  }
                                                  // if (formState.currentState!
                                                  //     .validate()) {
                                                  //   shopsController
                                                  //       .outstandingAmountPay(
                                                  //       shopId: shopsController
                                                  //           .shop!.id!);
                                                  //   // controller.confirmOrder();
                                                  // }
                                                });
                                          })
                                          // })
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                            child: CustomCard(
                              hasShadow: false,
                              color: const Color(0xfffff1f1),
                              width: MediaQuery.of(context).size.width,
                              padding: const EdgeInsets.only(
                                  top: 16, bottom: 12, left: 13, right: 13),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${controller.shopList[index].name!} ${controller.shopList[index].lastName}",
                                    // 'Trinity Shop',
                                    style: customTheme(context)
                                        .medium
                                        .copyWith(fontSize: 13),
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        Assets.assetsLocationFilled,
                                        scale: 3,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Flexible(
                                        child: Text(
                                          getFullAddress(controller
                                              .shopList[index].address),
                                          style: customTheme(context)
                                              .regular
                                              .copyWith(fontSize: 11),
                                        ),
                                      ),
                                    ],
                                  ),
                                  if ((controller.shopList[index].phone ?? "")
                                      .isNotEmpty)
                                    Row(
                                      children: [
                                        Image.asset(
                                          Assets.assetsPhone,
                                          scale: 3,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "+91 ${controller.shopList[index].phone!}",
                                          // '+91 6398541236',
                                          style: customTheme(context)
                                              .regular
                                              .copyWith(fontSize: 11),
                                        ),
                                      ],
                                    ),
                                ],
                              ),
                            ),
                          );
                        });
                  }),
                ),
              ],
            ),
          );
        }));
  }

  List<PopupMenuItem<String>> buildCategoryFilterItems(
          BuildContext context, String value) =>
      controller.filterVals!.category!.map((e) {
        return customPopupMenuItem<String>(
          context,
          name: e.name!,
          isSelected: value == "Category-${e.id}",
          onTap: () {
            controller.searchEditingController.text = "";
            controller.filterShops('Category', e.id!);
          },
        );
      }).toList();

  List<PopupMenuItem<String>> buildZoneFilterItems(
          BuildContext context, String value) =>
      controller.filterVals!.zone!.map((e) {
        return customPopupMenuItem<String>(
          context,
          name: e.name!,
          isSelected: value == "Zone-${e.id}",
          onTap: () {
            controller.filterShops('Zone', e.id!);
          },
        );
      }).toList();

  List<PopupMenuItem<String>> buildRouteFilterItems(
          BuildContext context, String value) =>
      controller.filterVals!.route!.map((e) {
        return customPopupMenuItem<String>(
          context,
          name: e.name!,
          isSelected: value == "Route-${e.id}",
          onTap: () {
            controller.filterShops('Route', e.id!);
          },
        );
      }).toList();

  FloatingActionButton _addNewShopButton(BuildContext context) {
    return FloatingActionButton.extended(
      backgroundColor: customTheme(context).primary,
      onPressed: () {
        Get.toNamed(Routes.ADD_SHOP,
            arguments: {'isEdit': false, 'isFromListShop': true});
      },
      label: Text(
        "Add new shop",
        style: customTheme(context)
            .medium
            .copyWith(fontSize: 13, color: Colors.white),
      ),
      icon: Icon(Icons.add),
    );
  }
}
