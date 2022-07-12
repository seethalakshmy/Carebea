import 'package:carebea/app/routes/app_pages.dart';
import 'package:carebea/app/utils/assets.dart';
import 'package:carebea/app/utils/theme.dart';
import 'package:carebea/app/utils/widgets/custom_card.dart';
import 'package:carebea/app/utils/widgets/custom_textfield.dart';
import 'package:carebea/app/utils/widgets/scanner.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/delivery_home_controller.dart';

class DeliveryHomeView extends GetView<DeliveryHomeController> {
  const DeliveryHomeView({Key? key}) : super(key: key);
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
            actions: [
              Scanner(
                onScanned: () {},
              ),
              const SizedBox(width: 10),
              CircleAvatar(),
              const SizedBox(width: 10),
            ],
        ),
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
        body: ListView(
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
                  icon: Icon(CupertinoIcons.search),
                  hint: "Search for shops, orders",
                )),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  HomeTile(
                    asset: Assets.homeIcon,
                    title: "Todays Delivery",
                    count: 2,
                    color: Color(0xffD8375C),
                  ),
                  SizedBox(width: 10),
                  HomeTile(
                    asset: Assets.homeIcon,
                    title: "Total Orders Delivered",
                    count: 89,
                    color: Color(0xffF3674F),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Center(
              child: HomeTile(
                asset: Assets.homeIcon,
                title: "Order History",
                count: 87,
                color: Color(0xff00B2BE),
              ),
            ),
            const SizedBox(height: 30),
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
                    "Orders to be delivered(2)",
                    style: customTheme(context).medium.copyWith(fontSize: 14),
                  ),
                  SizedBox(height: 10),
                  InkWell(
                    onTap: (){
                      Get.toNamed(Routes.ORDER_DETAILS_DELIVERY);
                    },
                      child: OrderDeliveryCard()),
                  SizedBox(height: 10),
                  OrderDeliveryCard()
                ],
              ),
            )
          ],
        ));
  }
}

class OrderDeliveryCard extends StatelessWidget {
  const OrderDeliveryCard({
    Key? key,
  }) : super(key: key);

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
                  'Order ID: #656546',
                  style: customTheme(context).medium.copyWith(fontSize: 12, color: customTheme(context).secondary),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: customTheme(context).action.withOpacity(.25),
                  ),
                  child: Text(
                    'Delivered',
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
              'Reach Express',
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
                    'Akshya Nagar 1st Block 1st Cross, Rammurthy nagar, Bangalore-560016',
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
                '₹1245',
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
              scale: 2,
              color: Colors.white30,
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
