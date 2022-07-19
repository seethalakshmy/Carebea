import 'package:carebea/app/modules/shops/controllers/shops_controller.dart';
import 'package:carebea/app/modules/shops/widgets/shop_card.dart';
import 'package:carebea/app/routes/app_pages.dart';
import 'package:carebea/app/utils/assets.dart';
import 'package:carebea/app/utils/global_state_controller.dart';
import 'package:carebea/app/utils/theme.dart';
import 'package:carebea/app/utils/widgets/appbar.dart';
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
              return const Center(child: CircularProgressIndicator());
            }
            print('${shopsController.shopListResponse!.id}');
            if (shopsController.shopListResponse!.shopListResult!.shopList!.isEmpty) {
              Center(
                child: Text(shopsController.shopListResponse!.shopListResult!.message!),
              );
            }
            return SingleChildScrollView(
              child: Padding(
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
                                onTap:controller.clearFilters,
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
                    Container(
                      height: MediaQuery.of(context).size.height,
                      child: Obx(() {
                        if (shopsController.isFilterClick.value) {
                          return const Center(child: CircularProgressIndicator());
                        }
                        return ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            // itemCount: 2,
                            itemCount: shopsController.shopListResponse!.shopListResult!.shopList!.length,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  ShopListTile(
                                      shop: shopsController.shopListResponse!.shopListResult!.shopList![index]),
                                  SizedBox(
                                    height: 20,
                                  )
                                ],
                              );
                            });
                      }),
                    ),
                  ],
                ),
              ),
            );
          })),
    );
  }

 

  List<PopupMenuItem<String>> buildCategoryFilterItems(BuildContext context, String value) =>
      shopsController.shopListResponse!.shopListResult!.filterVals!.category!.map((e) {
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
      shopsController.shopListResponse!.shopListResult!.filterVals!.zone!.map((e) {
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
      shopsController.shopListResponse!.shopListResult!.filterVals!.route!.map((e) {
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
        Get.toNamed(Routes.ADD_SHOP,
            arguments: {'isEdit': false, 'shop': shopsController.shopListResponse, 'isFromListShop': true});
      },
      label: Text(
        "Add new shop",
        style: customTheme(context).medium.copyWith(fontSize: 13, color: Colors.white),
      ),
      icon: Icon(Icons.add),
    );
  }
}
