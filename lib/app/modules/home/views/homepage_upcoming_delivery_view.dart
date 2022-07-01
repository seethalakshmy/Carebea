import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HomepageUpcomingDeliveryView extends GetView {
  const HomepageUpcomingDeliveryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.size.height*.35,
      color: const Color(0xffF8F4F2),
      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 15.0, right: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("Upcoming Delivery", style: Theme.of(context).textTheme.labelLarge,)
        ],
      ),
    );
  }
}
