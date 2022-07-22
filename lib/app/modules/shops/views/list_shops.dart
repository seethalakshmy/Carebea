import 'package:carebea/app/modules/shops/controllers/shops_controller.dart';
import 'package:carebea/app/modules/shops/widgets/shop_card.dart';
import 'package:carebea/app/routes/app_pages.dart';
import 'package:carebea/app/utils/assets.dart';
import 'package:carebea/app/utils/global_state_controller.dart';
import 'package:carebea/app/utils/theme.dart';
import 'package:carebea/app/utils/widgets/appbar.dart';
import 'package:carebea/app/utils/widgets/circular_progress_indicator.dart';
import 'package:carebea/app/utils/widgets/custom_popupmenuitem.dart';
import 'package:carebea/app/utils/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/shop_model.dart';

class ListShops extends GetView<ShopsController> {
  ListShops({Key? key}) : super(key: key);
  ShopsController shopsController = Get.put(ShopsController());
  TextEditingController searchTextEditingController = TextEditingController();

  // static List<String> category = ['Retail', 'Supermarket', 'Wholesale', 'Zone'];

  // List<Category>? category;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () => controller.onWillpopClose(),
        child: Scaffold(
            appBar: appBar(context),
            floatingActionButton: _addNewShopButton(context),
            body: Obx(() {
              if (shopsController.isLoading.value) {
                return Center(child: circularProgressIndicator(context));
              }

              return Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Shops',
                      style: customTheme(context).medium.copyWith(fontSize: 16, color: Colors.black),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: CustomTextField(
                          onChanged: (val) {},
                          hint: 'Search for shops',
                          fillcolor: Colors.grey[300],
                          icon: const Icon(
                            Icons.search,
                            size: 30,
                            color: Colors.grey,
                          ),
                        )),
                        const SizedBox(
                          width: 5,
                        ),
                        if (controller.filterVals != null)
                          PopupMenuButton<String>(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
                            offset: const Offset(0.0, 50),
                            padding: EdgeInsets.zero,
                            child: Image.asset(
                              Assets.filter,
                              scale: 3.5,
                            ),
                            onSelected: (element) {},
                            itemBuilder: (BuildContext context) {
                              if (controller.filterSelected.value == "") {}
                              return [
                                customPopupMenuItem<String>(
                                  context,
                                  name: "Category",
                                  isSelected: true,
                                  showBorder: false,
                                ),
                                ...buildCategoryFilterItems(context, controller.filterSelected.value),
                                customPopupMenuItem<String>(
                                  context,
                                  name: "Zone",
                                  isSelected: true,
                                  showBorder: false,
                                ),
                                ...buildZoneFilterItems(context, controller.filterSelected.value),
                                customPopupMenuItem<String>(
                                  context,
                                  name: "Route",
                                  isSelected: true,
                                  showBorder: false,
                                ),
                                ...buildRouteFilterItems(context, controller.filterSelected.value),
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
                    // ShopListTile(shop:shopsController.shopListResponse!.shopListResult!.shopList[index],),
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
                        if (shopsController.isFilterClick.value) {
                          return Center(child: circularProgressIndicator(context));
                        }
                        if (shopsController.shopList.isEmpty) {
                          return Container(
                              alignment: Alignment.topCenter,
                              width: double.infinity,
                              padding: EdgeInsets.only(top: 50),
                              child: Text("No shops found!"));
                        }
                        return ListView.separated(
                            separatorBuilder: (_, __) => const SizedBox(height: 20),
                            shrinkWrap: true,
                            itemCount: shopsController.shopList.length,
                            itemBuilder: (context, index) {
                              return ShopListTile(shop: shopsController.shopList[index]);
                            });
                      }),
                    ),
                  ],
                ),
              );
            })));
  }

  List<PopupMenuItem<String>> buildCategoryFilterItems(BuildContext context, String value) =>
      shopsController.filterVals!.category!.map((e) {
        return customPopupMenuItem<String>(
          context,
          name: e.name!,
          isSelected: value == "Category-${e.id}",
          onTap: () {
            shopsController.filterShops('Category', e.id!);
          },
        );
      }).toList();

  List<PopupMenuItem<String>> buildZoneFilterItems(BuildContext context, String value) =>
      shopsController.filterVals!.zone!.map((e) {
        return customPopupMenuItem<String>(
          context,
          name: e.name!,
          isSelected: value == "Zone-${e.id}",
          onTap: () {
            shopsController.filterShops('Zone', e.id!);
          },
        );
      }).toList();

  List<PopupMenuItem<String>> buildRouteFilterItems(BuildContext context, String value) =>
      shopsController.filterVals!.route!.map((e) {
        return customPopupMenuItem<String>(
          context,
          name: e.name!,
          isSelected: value == "Route-${e.id}",
          onTap: () {
            shopsController.filterShops('Route', e.id!);
          },
        );
      }).toList();

  FloatingActionButton _addNewShopButton(BuildContext context) {
    return FloatingActionButton.extended(
      backgroundColor: customTheme(context).primary,
      onPressed: () {
        Get.toNamed(Routes.ADD_SHOP, arguments: {'isEdit': false, 'isFromListShop': true});
      },
      label: Text(
        "Add new shop",
        style: customTheme(context).medium.copyWith(fontSize: 13, color: Colors.white),
      ),
      icon: Icon(Icons.add),
    );
  }
}
