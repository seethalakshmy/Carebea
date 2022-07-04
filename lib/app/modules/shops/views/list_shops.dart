import 'package:carebea/app/modules/shops/controllers/shops_controller.dart';
import 'package:carebea/app/modules/shops/views/shop_details.dart';
import 'package:carebea/app/modules/shops/widgets/shop_card.dart';
import 'package:carebea/app/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListShops extends GetView<ShopsController> {
  const ListShops({Key? key}) : super(key: key);

  static List<String> category = ['Retail', 'Supermarket', 'Wholesale', 'Zone'];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          floatingActionButton: InkWell(
            onTap: () {
              debugPrint('sdgsj');
              Get.to(() => const ShopDetails());
            },
            child: Container(
              height: 60,
              width: 200,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(40), color: Theme.of(context).primaryColor),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [
                    Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 35,
                    ),
                    Text(
                      'Add new shop',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )
                  ],
                ),
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        Assets.assetsLogo,
                        scale: 3,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Shops',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 49,
                        decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(10)),
                        width: MediaQuery.of(context).size.width * .78,
                        child: Center(
                          child: TextFormField(
                            cursorColor: Colors.black,
                            decoration: const InputDecoration(
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                border: InputBorder.none,
                                hintText: 'Search for shops',
                                hintStyle: TextStyle(color: Colors.grey),
                                prefixIcon: Icon(
                                  Icons.search,
                                  size: 30,
                                  color: Colors.grey,
                                )),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      PopupMenuButton(
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/filter.png',
                              scale: 3.5,
                            )
                          ],
                        ),
                        onSelected: (element) {
                          // Get.to(UpdatePassword());
                          //
                          // Get.offAll(const LoginScreen());
                          // showAlertDialog(
                          //     context: context,
                          //     title: 'Success',
                          //     message: 'Successfully logged out');
                        },
                        itemBuilder: (BuildContext context) {
                          // return {'Update password','Logout'}.map((element) {
                          //   return PopupMenuItem<String>(
                          //     value: element,
                          //     child: Text(element,style: TextStyle(fontSize: Dimensions.fontSizeSmall),),
                          //   );
                          //   );
                          // }).toList();
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
          )),
    );
  }
}
