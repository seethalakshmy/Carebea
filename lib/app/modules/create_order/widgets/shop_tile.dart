import 'package:carebea/app/core/helper.dart';
import 'package:carebea/app/modules/shops/models/shop_model.dart';
import 'package:carebea/app/utils/assets.dart';
import 'package:carebea/app/utils/theme.dart';
import 'package:carebea/app/utils/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class ShopDetailsTile extends StatelessWidget {
  const ShopDetailsTile({Key? key, required this.shop}) : super(key: key);

  final ShopList shop;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      hasShadow: false,
      color: const Color(0xfffff1f1),
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
                  getFullAddress(shop.address),
                  style: customTheme(context).regular.copyWith(fontSize: 11),
                ),
              ),
            ],
          ),
          if ((shop.phone ?? "").isNotEmpty)
            Row(
              children: [
                InkWell(
                  onTap: () {
                    callPhone(shop.phone!);
                  },
                  child: Image.asset(
                    Assets.assetsPhone,
                    scale: 3,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  "+91 ${shop.phone!}",
                  style: customTheme(context).regular.copyWith(fontSize: 11),
                ),
              ],
            )
          else if ((shop.altPhone ?? "").isNotEmpty)
            Row(
              children: [
                InkWell(
                 onTap: () {
                    callPhone(shop.altPhone!);
                  },
                  child: Image.asset(
                    Assets.assetsPhone,
                    scale: 3,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  shop.altPhone!,
                  style: customTheme(context).regular.copyWith(fontSize: 11),
                ),
              ],
            )
        ],
      ),
    );
  }
}
