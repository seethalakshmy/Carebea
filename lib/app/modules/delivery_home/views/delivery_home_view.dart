import 'package:carebea/app/modules/delivery_home/models/delivery_home_model.dart';
import 'package:carebea/app/routes/app_pages.dart';
import 'package:carebea/app/utils/assets.dart';
import 'package:carebea/app/utils/theme.dart';
import 'package:carebea/app/utils/widgets/appbar.dart';
import 'package:carebea/app/utils/widgets/circular_progress_indicator.dart';
import 'package:carebea/app/utils/widgets/custom_card.dart';
import 'package:carebea/app/utils/widgets/custom_textfield.dart';
import 'package:carebea/app/utils/widgets/scanner.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/delivery_home_controller.dart';

class DeliveryHomeView extends GetView<DeliveryHomeController> {
  DeliveryHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(context, showProfile: true, showScanner: true, onScanned: (val) {}),
        // appBar: AppBar(
        //   title: Image.asset(
        //     Assets.assetsLogo,
        //     scale: 3,
        //   ),
        //   actions: [
        //     Scanner(
        //       onScanned: () {},
        //     ),
        //     const SizedBox(width: 10),
        //     CircleAvatar(),
        //     const SizedBox(width: 10),
        //   ],
        // ),
        body: Obx(() {
          if (!controller.isDeliveryHomePageDataLoaded.value) {
            return Center(
              child: circularProgressIndicator(context),
            );
          }
          return ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 15, bottom: 25, right: 15.0),
                child: Text(
                  "Dashboard",
                  style: customTheme(context).medium,
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: CustomTextField(
        fillcolor: customTheme(context).textFormFieldColor,

                    icon: Icon(CupertinoIcons.search),
                    hint: "Search for shops, orders",
                  )),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    HomeTile(
                      asset: Assets.deliveryHomeIcon2,
                      title: "Todays Delivery",
                      count: controller.deliveryHomePageResponse!.deliveryHomePageResult!.todaysDelivery!,
                      color: Color(0xffD8375C),
                    ),
                    SizedBox(width: 10),
                    HomeTile(
                      asset: Assets.ordersHomeIcon,
                      title: "Total Orders Delivered",
                      count: controller.deliveryHomePageResponse!.deliveryHomePageResult!.totalOrdersDelivered!,
                      color: Color(0xffF3674F),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Center(
                child: HomeTile(
                  asset: Assets.ordersHomeIcon,
                  title: "Order History",
                  count: controller.deliveryHomePageResponse!.deliveryHomePageResult!.orderHistory!,
                  color: Color(0xff00B2BE),
                ),
              ),
              const SizedBox(height: 30),
              if ((controller.deliveryHomePageResponse?.deliveryHomePageResult?.upcomingDeliveryList ?? []).isNotEmpty)
                Container(
                  padding: const EdgeInsets.all(25),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                    color: Color(0xffF8F4F2),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Orders to be delivered(${controller.deliveryHomePageResponse!.deliveryHomePageResult!.upcomingDeliveryList!.length})",
                        style: customTheme(context).medium.copyWith(fontSize: 14),
                      ),
                      SizedBox(height: 10),
                      ListView.separated(
                        shrinkWrap: true,
                        itemCount:
                            controller.deliveryHomePageResponse!.deliveryHomePageResult!.upcomingDeliveryList!.length,
                        separatorBuilder: (_, __) => Container(
                          height: 1,
                          color: const Color(0xffE1E1E1),
                        ),
                        itemBuilder: (context, index) => InkWell(
                            onTap: () {
                              Get.toNamed(Routes.ORDER_DETAILS_DELIVERY, arguments: {
                                "order_id": controller.deliveryHomePageResponse!.deliveryHomePageResult!
                                    .upcomingDeliveryList![index].orderId
                              });
                            },
                            child: OrderDeliveryCard(
                                order: controller
                                    .deliveryHomePageResponse!.deliveryHomePageResult!.upcomingDeliveryList![index])),
                      ),
                      // InkWell(
                      //     onTap: () {
                      //       Get.toNamed(Routes.ORDER_DETAILS_DELIVERY);
                      //     },
                      //     child: OrderDeliveryCard()),
                      // SizedBox(height: 10),
                      // OrderDeliveryCard()
                    ],
                  ),
                )
            ],
          );
        }));
  }
}

class OrderDeliveryCard extends StatelessWidget {
  const OrderDeliveryCard({
    Key? key,
    required this.order,
  }) : super(key: key);
  final UpcomingDeliveryList order;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Order ID: #${order.orderId}',
                  style: customTheme(context).medium.copyWith(fontSize: 12, color: customTheme(context).secondary),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: customTheme(context).action.withOpacity(.25),
                  ),
                  child: Text(
                    order.status!,
                    style: customTheme(context).medium.copyWith(fontSize: 10, color: customTheme(context).action),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              order.shopName!,
              style: customTheme(context).medium.copyWith(fontSize: 12),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  Assets.assetsLocationFilled,
                  scale: 3,
                ),
                const SizedBox(width: 2),
                Expanded(
                  child: Text(
                    "has to added in api",
                    style: customTheme(context).regular.copyWith(fontSize: 11),
                  ),
                ),
                const SizedBox(width: 5),
                CircleAvatar(
                  radius: 17,
                  backgroundColor: customTheme(context).primary.withOpacity(.2),
                  child: Image.asset(
                    Assets.assetsPhone,
                    scale: 2.5,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Amount to be collected",
                style: customTheme(context).regular.copyWith(fontSize: 11, color: Colors.grey),
              ),
              Text(
                '₹${order.amountTotal}',
                style: customTheme(context).medium.copyWith(fontSize: 14),
              ),
            ]),
          )
        ],
      ),
    );
  }
}

class HomeTile extends StatelessWidget {
  const HomeTile({
    Key? key,
    required this.asset,
    required this.count,
    required this.title,
    required this.color,
  }) : super(key: key);

  final String title;
  final int count;
  final String asset;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
        width: MediaQuery.of(context).size.width * .44,
        padding: const EdgeInsets.only(top: 10, bottom: 13, right: 10),
        color: color,
        hasShadow: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              asset,
              scale: 4,
              alignment: Alignment.centerLeft,
              color: Colors.white,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  title,
                  style: customTheme(context).regular.copyWith(fontSize: 9, color: Colors.white),
                ),
                Text(
                  "$count",
                  style: customTheme(context).medium.copyWith(fontSize: 24, color: Colors.white),
                )
              ],
            )
          ],
        ));
  }
}
