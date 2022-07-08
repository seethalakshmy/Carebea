import 'package:carebea/app/modules/home/widgets/upcoming_delivery_tile.dart';
import 'package:carebea/app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomepageUpcomingDeliveryView extends GetView {
  const HomepageUpcomingDeliveryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          const BoxDecoration(color: Color(0xffF8F4F2), borderRadius: BorderRadius.vertical(top: Radius.circular(12))),
      padding: const EdgeInsets.all(25),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Upcoming Delivery",
            style: customTheme(context).medium.copyWith(
                  color: Colors.black,
                  fontSize: 14,
                ),
          ),
          const SizedBox(height: 14),
          ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => UpComingDeliveryTile(
                  orderId: "456790",
                  orderStatus: "Collected",
                  title: "Reach Express",
                  total: 105,
                  orderStatusColor: customTheme(context).secondary),
              separatorBuilder: (_, __) => SizedBox(height: 13),
              itemCount: 2)
        ],
      ),
    );
  }
}
