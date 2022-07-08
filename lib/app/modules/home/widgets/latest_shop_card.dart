import 'package:carebea/app/modules/shops/views/shop_details.dart';
import 'package:carebea/app/utils/assets.dart';
import 'package:carebea/app/utils/theme.dart';
import 'package:carebea/app/utils/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LatestShopListTile extends StatefulWidget {
  const LatestShopListTile({Key? key}) : super(key: key);

  @override
  State<LatestShopListTile> createState() => _LatestShopListTileState();
}

class _LatestShopListTileState extends State<LatestShopListTile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => const ShopDetails());
      },
      child: CustomCard(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(top: 16, bottom: 12, left: 13, right: 13),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Trinity Shop',
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
                  'Akshay Nagar 1st Block Cross,Rammurthy',
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
                  '+91 6398541236',
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
