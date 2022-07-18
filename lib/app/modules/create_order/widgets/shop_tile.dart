import 'package:carebea/app/modules/create_order/views/add_products_view.dart';
import 'package:carebea/app/utils/assets.dart';
import 'package:carebea/app/utils/theme.dart';
import 'package:carebea/app/utils/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShopDetailsTile extends StatelessWidget {
  const ShopDetailsTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() =>  AddProductsView());
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
              'Trinity Shop',
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
                    'Akshya Nagar 1st Block 1st Cross, Rammurthy nagar, Kerala-689145',
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
                  '+91 6398541236',
                  style: customTheme(context).regular.copyWith(fontSize: 11),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
