import 'package:carebea/app/modules/shops/widgets/order_tile.dart';
import 'package:carebea/app/utils/assets.dart';
import 'package:carebea/app/utils/theme.dart';
import 'package:carebea/app/utils/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShopDetails extends StatefulWidget {
  const ShopDetails({Key? key}) : super(key: key);

  @override
  State<ShopDetails> createState() => _ShopDetailsState();
}

class _ShopDetailsState extends State<ShopDetails> with SingleTickerProviderStateMixin {
  TabController? tabController1;
  List<String> products = ['Eccence hande wash', 'Eccence face wash'];

  @override
  void initState() {
    tabController1 = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Image.asset(
            Assets.assetsLogo,
            scale: 3,
          ),
        ),
        body: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      size: 16,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Text(
                    'Shops',
                    style: customTheme(context).medium.copyWith(fontSize: 16),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Trinity Shop',
                        style: customTheme(context).medium.copyWith(fontSize: 14),
                      ),
                      Text(
                        'GST no: 66998964579898',
                        style: customTheme(context).regular.copyWith(fontSize: 11),
                      ),
                    ],
                  ),
                  Image.asset(Assets.edit, scale: 3)
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    Assets.assetsLocationFilled,
                    scale: 3,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Flexible(
                    child: SizedBox(
                      child: Text(
                        'Akshay Nagar 1st Block Cross , Rammurthy Nagar, Bangalore -560016',
                        style: customTheme(context).regular.copyWith(fontSize: 11),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                            '+91 6398541236',
                            style: customTheme(context).regular.copyWith(fontSize: 11),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Category: Supermarket',
                        style: customTheme(context).regular.copyWith(fontSize: 11),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Branch : CareBae branch',
                        style: customTheme(context).regular.copyWith(fontSize: 11),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Credit Balance : ₹1,00,214',
                        style: customTheme(context).regular.copyWith(fontSize: 11),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            //TODO: uncommment
            SizedBox(
              height: 50,
              child: Stack(
                children: [
                  // Image.asset(Assets.assetsMap),
                  Positioned(
                      top: 20,
                      left: 50,
                      child: Image.asset(
                        Assets.assetsLocationFilled,
                        scale: 1.5,
                      )),
                  Positioned(
                      right: 20,
                      top: 10,
                      child: Image.asset(
                        Assets.assetsDirections,
                        scale: 3,
                      )),
                ],
              ),
            ),
            const SizedBox(height: 18),
            const Divider(
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: DefaultTabController(
                length: 2,
                child: TabBar(
                  indicatorColor: Colors.blueAccent[900],
                  controller: tabController1,
                  onTap: (index) {
                    tabController1!.animateTo(index);
                  },
                  tabs: [
                    Tab(
                      child: Text(
                        'Upcoming Orders(2)',
                        style: customTheme(context).medium.copyWith(fontSize: 12),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Pending Orders(2)',
                        style: customTheme(context).medium.copyWith(fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: TabBarView(controller: tabController1, children: [
                _upcomingOrders(),
                _pendingOrders(),
              ]),
            )
          ],
        ));
  }

  ListView _pendingOrders() {
    return ListView.separated(
        separatorBuilder: (_, __) => const SizedBox(height: 16),
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) {
          return const OrderTile();
        });
  }

  ListView _upcomingOrders() {
    return ListView.separated(
        separatorBuilder: (_, __) => const SizedBox(height: 16),
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) {
          return const OrderTile();
        });
  }
}