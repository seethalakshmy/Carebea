import 'package:carebea/app/modules/Route_page/views/route_page_view.dart';
import 'package:carebea/app/modules/delivery_home/controllers/homePage_orderListing_controller.dart';
import 'package:carebea/app/modules/home/controllers/home_controller.dart';
import 'package:carebea/app/modules/home/widgets/home_menu_cards.dart';
import 'package:carebea/app/modules/orders/controllers/orders_controller.dart';
import 'package:carebea/app/utils/assets.dart';
import 'package:carebea/app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../add_shop/views/add_shop_view.dart';
import '../../delivery_home/controllers/delivery_home_controller.dart';
import '../../delivery_home/views/delivery_order_list_view.dart';
import '../../near_by_shop/views/near_by_shop_view.dart';

class HomeMenuCards extends GetView<HomeController> {
  HomeMenuCards({Key? key}) : super(key: key);
  HomePageOrderListingController homePageOrderListingController =
      Get.put(HomePageOrderListingController());

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: Get.size.height * .23,
      child: GridView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 12 / 8),
        children: [
          InkWell(
            onTap: () {
              Get.toNamed(Routes.CREATE_ORDER);
            },
            child: const HomeMenuIndividual(
              asseticon: Assets.orderHomeIcon,
              gradients: [Color(0xff0098BA), Color(0xff4163A2)],
              title: "Create new order",
            ),
          ),
          InkWell(
            onTap: () {
              Get.toNamed(Routes.ADD_SHOP, arguments: {"isEdit": false});
            },
            child: const HomeMenuIndividual(
              asseticon: Assets.newShopHomeIcon,
              gradients: [Color(0xffA73B6E), Color(0xff985194)],
              title: "Add new shop",
            ),
          ),
          // InkWell(
          //   onTap: () {
          //     // Get.toNamed(Routes.DELIVERY_HOME);
          //   },
          //   child: HomeMenuIndividual(
          //     asseticon: Assets.reportsHomeIcon,
          //     gradients: [Color(0xff66DE9D), Color(0xff00B2BE)],
          //     title: "Reports",
          //   ),
          // ),
          InkWell(
            onTap: () {
              Get.toNamed(Routes.ROUTE_PAGE);
            },
            child: const HomeMenuIndividual(
              asseticon: Assets.routeHomeIcon,
              backgroundColor: Color(0xffF74254),
              title: "Route",
            ),
          ),
          InkWell(
            onTap: () {
              homePageOrderListingController.fetchSrOrders(1);
              Get.to(() => DeliveryOrderListView("Today's Delivery", "sr"));
            },
            child: HomeMenuIndividual(
              asseticon: Assets.deliveryHomeIcon,
              backgroundColor: const Color(0xffD8375C),
              title: "Today's Delivery",
              count: controller.homeData?.result?.todaysDelivery ?? 0,
            ),
          ),
          InkWell(
            onTap: () {
              homePageOrderListingController.fetchSrAllOrders();

              Get.to(() => DeliveryOrderListView("Total Orders", "sr"));
            },
            child: HomeMenuIndividual(
              asseticon: Assets.orderHomeIcon,
              backgroundColor: const Color(0xffF3674F),
              title: "Total Orders",
              count: controller.homeData?.result?.totalOrders ?? 0,
            ),
          ),
          HomeMenuIndividual(
            asseticon: Assets.deliveryHomeIcon,
            backgroundColor: const Color(0xff00B2BE),
            title: "Collected Amount",
            amount:
                controller.reportsData?.result?.collectedAmount?.toDouble() ??
                    0,
          ),
          HomeMenuIndividual(
            asseticon: Assets.deliveryHomeIcon,
            backgroundColor: const Color(0xff985194),
            title: "Outstanding",
            amount:
                controller.reportsData?.result?.outstanding?.toDouble() ?? 0.0,
          ),
          HomeMenuIndividual(
            asseticon: Assets.deliveryHomeIcon,
            backgroundColor: const Color(0xff66DE9D),
            title: "Invoiced Target",
            amount: controller.reportsData?.result?.invoicedTarget ?? 0.0,
          ),
          HomeMenuIndividual(
            asseticon: Assets.deliveryHomeIcon,
            backgroundColor: const Color(0xff66DE9D),
            title: "Sale Amount",
            amount: controller.reportsData?.result?.sales ?? 0.0,
          ),
          Obx(() {
            return InkWell(
              onTap: () async {
                debugPrint("loading before ${controller.isLocationLoading}");
                await controller.getCurrentPosition();
                debugPrint("loading after ${controller.isLocationLoading}");

                if (controller.currentPosition?.latitude != null) {
                  debugPrint("ok");
                  Get.to(() => NearByShops(), arguments: {
                    "latitude": controller.currentPosition?.latitude,
                    "longitude": controller.currentPosition?.longitude,
                    "is_from_delivery": false
                  });
                }
                debugPrint("hellpo ${controller.currentPosition?.latitude}");
                // homePageOrderListingController.fetchSrAllOrders();
              },
              child: HomeMenuIndividual(
                isLoading: controller.isLocationLoading.value,
                asseticon: Assets.orderHomeIcon,
                backgroundColor: Color(0xffF3674F),
                title: "Visit Shop",
              ),
            );
          }),
        ],
      ),
    );
  }
}
