import 'package:carebea/app/modules/home/data/models/home_data_model.dart';
import 'package:carebea/app/modules/shops/views/shop_details.dart';
import 'package:carebea/app/utils/assets.dart';
import 'package:carebea/app/utils/theme.dart';
import 'package:carebea/app/utils/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LatestShopListTile extends StatelessWidget {
  const LatestShopListTile({Key? key, required this.shop}) : super(key: key);
  final LatestShopList shop;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => ShopDetails(
              shopId: shop.id,
            ));
      },
      child: CustomCard(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(top: 16, bottom: 12, left: 13, right: 13),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              shop.name!,
              style: customTheme(context).medium.copyWith(fontSize: 13),
            ),
            const SizedBox(
              height: 6,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  Assets.assetsLocationFilled,
                  scale: 3,
                ),
                const SizedBox(
                  width: 5,
                ),
                Flexible(
                  child: Text(
                    shop.userAddress!.split("\n").join(" "),
                    style: customTheme(context).regular.copyWith(fontSize: 11),
                  ),
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
                  '+91 ${shop.phone}',
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
