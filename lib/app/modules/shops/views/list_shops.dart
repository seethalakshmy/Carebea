import 'package:carebea/app/modules/shops/controllers/shops_controller.dart';
import 'package:carebea/app/modules/shops/widgets/shop_card.dart';
import 'package:carebea/app/routes/app_pages.dart';
import 'package:carebea/app/utils/assets.dart';
import 'package:carebea/app/utils/theme.dart';
import 'package:carebea/app/utils/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListShops extends GetView<ShopsController> {
  const ListShops({Key? key}) : super(key: key);

  static List<String> category = ['Retail', 'Supermarket', 'Wholesale', 'Zone'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Image.asset(
            Assets.assetsLogo,
            scale: 4,
          ),
        ),
        floatingActionButton: _addNewShopButton(context),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Shops',
                  style: customTheme(context).medium.copyWith(fontSize: 16,color: Colors.black),
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
                        return category.map((e) {
                          return PopupMenuItem<String>(
                            value: "1",
                            child: Text(
                              e.toString(),
                              style: TextStyle(fontSize: 14),
                            ),
                            onTap: () {},
                          );
                        }).toList();
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'New',
                  style: TextStyle(
                    color: Colors.black26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ShopListTile(),
                SizedBox(
                  height: 10,
                ),
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
                  height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: false,
                      itemCount: 10,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return Column(
                          children: const [
                            ShopListTile(),
                            SizedBox(
                              height: 20,
                            )
                          ],
                        );
                      }),
                )
              ],
            ),
          ),
        ));
  }

  FloatingActionButton _addNewShopButton(BuildContext context) {
    return FloatingActionButton.extended(
      backgroundColor: customTheme(context).primary,
      onPressed: () {
        Get.toNamed(Routes.ADD_SHOP);
      },
      label: Text(
        "Add new shop",
        style: customTheme(context).medium.copyWith(fontSize: 13, color: Colors.white),
      ),
      icon: Icon(Icons.add),
    );
  }
}
