import 'package:carebea/app/modules/home/controllers/home_controller.dart';
import 'package:carebea/app/modules/home/widgets/latest_shop_card.dart';
import 'package:carebea/app/modules/home/widgets/upcoming_delivery_tile.dart';
import 'package:carebea/app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomepageLatestShopsAddedView extends GetView<HomeController> {
  const HomepageLatestShopsAddedView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    if ((controller.homeData?.result?.latestShopList?.length ?? 0) == 0) {
      return const SizedBox.shrink();
    }
    return Container(
      decoration:
          const BoxDecoration(color: Color(0xffEDF4F7), borderRadius: BorderRadius.vertical(top: Radius.circular(12))),
      padding: const EdgeInsets.all(25),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Latest Shops Added",
            style: customTheme(context).medium.copyWith(
                  color: Colors.black,
                  fontSize: 14,
                ),
          ),
          const SizedBox(height: 14),
          ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => LatestShopListTile(shop:controller.homeData!.result!.latestShopList![index]),
              separatorBuilder: (_, __) => SizedBox(height: 13),
              itemCount: controller.homeData?.result?.latestShopList?.length ?? 0)
        ],
      ),
    );
  }
}
