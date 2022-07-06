import 'package:carebea/app/utils/assets.dart';
import 'package:carebea/app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeMenuCards extends StatelessWidget {
  const HomeMenuCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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

class HomeMenuIndividual extends StatelessWidget {
  const HomeMenuIndividual({
    Key? key,
    this.asseticon,
    this.backgroundColor,
    this.gradients,
    required this.title,
    this.onTap,
    this.count,
  }) : super(key: key);

  final List<Color>? gradients;
  final Color? backgroundColor;
  final String title;
  final String? asseticon;
  final int? count;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(12.0),
          gradient: gradients != null ? LinearGradient(colors: gradients!) : null,
        ),
        child: Builder(builder: (context) {
          if (count != null) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _title(context),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        count.toString(),
                        style: customTheme(context).regular.copyWith(
                              fontSize: 28,
                              color: Colors.white,
                            ),
                      ),
                    ),
                    _icon(),
                  ],
                )
              ],
            );
          }
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: _title(context),
              ),
              _icon(),
            ],
          );
        }),
      ),
    );
  }

  Image _icon() {
    return Image.asset(
      asseticon!,
      width: 40,
      height: 40,
      color: Colors.white24,
    );
  }

  Widget _title(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        title,
        style: customTheme(context).medium.copyWith(
              fontSize: 10,
              color: Colors.white,
            ),
      ),
    );
  }
}
