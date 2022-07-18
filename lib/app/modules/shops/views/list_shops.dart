import 'package:carebea/app/modules/shops/controllers/shops_controller.dart';
import 'package:carebea/app/modules/shops/widgets/shop_card.dart';
import 'package:carebea/app/routes/app_pages.dart';
import 'package:carebea/app/utils/assets.dart';
import 'package:carebea/app/utils/theme.dart';
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
    return Scaffold(
        appBar: AppBar(
          titleSpacing: 15,
          automaticallyImplyLeading: false,
          title: Image.asset(
            Assets.assetsLogo,
            scale: 4,
          ),

        ),
        floatingActionButton: _addNewShopButton(context),
        body: Obx(() {
          if (shopsController.isLoading.value) {
            return const Center(child: CircularProgressIndicator());
          }
          print('${shopsController.shopListResponse!.id}');
          if (shopsController.shopListResponse!.shopListResult!.shopList!
              .isEmpty) {
            Center(
              child: Text(
                  shopsController.shopListResponse!.shopListResult!.message!),
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
                    style: customTheme(context).medium.copyWith(
                        fontSize: 16, color: Colors.black),
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
                      PopupMenuButton(
                        position: PopupMenuPosition.under,
                        child: Row(
                          children: [
                            Image.asset(
                              Assets.filter,
                              scale: 3.5,
                            )
                          ],
                        ),
                        onSelected: (element) {},
                        itemBuilder: (BuildContext context) {
                          return [
                            PopupMenuItem(child:Container(
                              color: Colors.blue,
                                child: Text('Category')) ),

                            ...buildCategoryFilterItems(),
                            PopupMenuItem(child:Container(
                                color: Colors.blue,
                                child: Text('Zone')) ),
                            ...buildZoneFilterItems(),
                            PopupMenuItem(child:Container(
                                color: Colors.blue,
                                child: Text('Route')) ),
                            ...buildRouteFilterItems()
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
                  const Text(
                    'Last Week',
                    style: TextStyle(
                      color: Colors.black26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: MediaQuery
                        .of(context)
                        .size
                        .height,
                    child: Obx(() {
                      if(shopsController.isFilterClick.value){
                        return const Center(child: CircularProgressIndicator());

                      }
                      return ListView.builder(
                          // physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: false,
                          // itemCount: 2,
                          itemCount: shopsController.shopListResponse!
                              .shopListResult!.shopList!.length,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                ShopListTile(
                                    shop: shopsController.shopListResponse!
                                        .shopListResult!.shopList![index]),
                                SizedBox(
                                  height: 20,
                                )
                              ],
                            );
                          });
                    }),
                  ),
                  SizedBox(height: 60,)
                ],
              ),
            ),
          );
        }));
  }

  List<PopupMenuItem<int>> buildCategoryFilterItems() =>
      shopsController.shopListResponse!.shopListResult!.filterVals!.category!
          .map((e) {
        return PopupMenuItem<int>(
          value: e.id,
          child: Text(
            e.name!,
            style: TextStyle(fontSize: 14),
          ),
          onTap: () {
            shopsController.filterShops('Category', e.id!);
          },
        );
      }).toList();

  List<PopupMenuItem<int>> buildZoneFilterItems() =>
      shopsController.shopListResponse!.shopListResult!.filterVals!.zone!.map((
          e) {
        return PopupMenuItem<int>(
          value: e.id,
          child: Text(
            e.name!,
            style: TextStyle(fontSize: 14),
          ),
          onTap: () {
            shopsController.filterShops('Zone', e.id!);
          },
        );
      }).toList();

  List<PopupMenuItem<int>> buildRouteFilterItems() =>
      shopsController.shopListResponse!.shopListResult!.filterVals!.route!.map((
          e) {
        return PopupMenuItem<int>(
          value: e.id,
          child: Text(
            e.name!,
            style: TextStyle(fontSize: 14),
          ),
          onTap: () {
            shopsController.filterShops('Route', e.id!);
          },
        );
      }).toList();

  FloatingActionButton _addNewShopButton(BuildContext context) {
    return FloatingActionButton.extended(
      backgroundColor: customTheme(context).primary,
      onPressed: () {
        Get.toNamed(Routes.ADD_SHOP,arguments: {'isEdit':false,'shop':shopsController.shopListResponse,'isFromListShop':true});
      },
      label: Text(
        "Add new shop",
        style: customTheme(context).medium.copyWith(
            fontSize: 13, color: Colors.white),
      ),
      icon: Icon(Icons.add),
    );
  }
}
