import 'package:carebea/app/core/helper.dart';
import 'package:carebea/app/modules/shops/models/shop_model.dart';
import 'package:carebea/app/modules/shops/views/shop_details.dart';
import 'package:carebea/app/utils/assets.dart';
import 'package:carebea/app/utils/theme.dart';
import 'package:carebea/app/utils/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/shops_controller.dart';

class ShopListTile extends StatelessWidget {
  const ShopListTile({Key? key, required this.shop}) : super(key: key);
  final ShopList shop;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => ShopDetails(
              shopId: shop.id!,
            ));
      },
      child: CustomCard(
        hasShadow: false,
        color: const Color(0xfffff1f1),
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(top: 16, bottom: 12, left: 13, right: 13),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              shop.name!,
              // 'Trinity Shop',
              style: customTheme(context).medium.copyWith(fontSize: 13),
            ),
            const SizedBox(
              height: 6,
            ),
            Row(
              children: [
                Image.asset(
                  Assets.assetsLocationFilled,
                  scale: 3,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  getFullAddress(shop.address),
                  style: customTheme(context).regular.copyWith(fontSize: 11),
                ),
              ],
            ),
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
                  shop.phone!,
                  // '+91 6398541236',
                  style: customTheme(context).regular.copyWith(fontSize: 11),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Text(
                      'View Details',
                      style: customTheme(context).medium.copyWith(fontSize: 11),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 14,
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
