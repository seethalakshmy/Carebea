import 'package:carebea/app/modules/home/widgets/home_menu_cards.dart';
import 'package:carebea/app/utils/assets.dart';
import 'package:carebea/app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeMenuCards extends StatelessWidget {
  const HomeMenuCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.size.height * .3,
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10, childAspectRatio: 12 / 8),
        children: [
          HomeMenuIndividual(
            asseticon: Assets.shopIcon,
            gradients: [Color(0xff0098BA), Color(0xff4163A2)],
            title: "Create new order",
          ),
          HomeMenuIndividual(
            asseticon: Assets.shopIcon,
            gradients: [Color(0xffA73B6E), Color(0xff985194)],
            title: "Add new shop",
          ),
          HomeMenuIndividual(
            asseticon: Assets.shopIcon,
            gradients: [Color(0xff66DE9D), Color(0xff00B2BE)],
            title: "Reports",
          ),
          HomeMenuIndividual(
            asseticon: Assets.shopIcon,
            backgroundColor: Color(0xffF74254),
            title: "Route",
          ),
          HomeMenuIndividual(
            asseticon: Assets.shopIcon,
            backgroundColor: Color(0xffD8375C),
            title: "Today's Delivery",
            count: 1,
          ),
          HomeMenuIndividual(
            asseticon: Assets.shopIcon,
            backgroundColor: Color(0xffF3674F),
            title: "Total Orders",
            count: 89,
          ),
        ],
      ),
    );
  }
}


