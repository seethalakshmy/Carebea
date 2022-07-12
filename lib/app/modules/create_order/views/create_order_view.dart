import 'package:carebea/app/modules/create_order/views/shop_details_view.dart';
import 'package:carebea/app/utils/assets.dart';
import 'package:carebea/app/utils/theme.dart';
import 'package:carebea/app/utils/widgets/custom_card.dart';
import 'package:carebea/app/utils/widgets/custom_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/create_order_controller.dart';

class CreateOrderView extends GetView<CreateOrderController> {
  const CreateOrderView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          titleSpacing: 24,
          automaticallyImplyLeading: false,
          title: Image.asset(
            Assets.assetsLogo,
            scale: 4,
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _title(context),
            _search(context),
            CustomCard(
              hasShadow: false,
              margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 11),
              padding: const EdgeInsets.symmetric(vertical: 8),
              color: const Color(0xffFAFAFA),
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: 5,
                separatorBuilder: (_, __) => Container(
                  height: 1,
                  color: const Color(0xffE1E1E1),
                ),
                itemBuilder: (context, index) => const ShopTile(),
              ),
            ),
          ],
        ));
  }

  Padding _search(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Shop name",
            style: customTheme(context).regular.copyWith(fontSize: 11, color: Colors.black),
          ),
          const SizedBox(height: 3),
          CustomTextField(
            icon: const Icon(
              CupertinoIcons.search,
              color: Color(0xff9F9F9F),
            ),
            hint: "Search shop or scan",
          ),
        ],
      ),
    );
  }

  Padding _title(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Row(
        children: [
           InkWell(
             onTap: (){
               Get.back();
             },
             child: Icon(
              Icons.arrow_back_ios,
              size: 17,
          ),
           ),
          const SizedBox(width: 10),
          Text(
            "Create new order",
            style: customTheme(context).medium.copyWith(fontSize: 16, color: Colors.black),
          )
        ],
      ),
    );
  }
}

class ShopTile extends StatelessWidget {
  const ShopTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: InkWell(
        onTap: () {
          Get.to(() => const ShopDetailsView());
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Trinity Shop",
              style: customTheme(context).medium.copyWith(fontSize: 14, color: Colors.black),
            ),
            Text(
              "Akshya Nagar 1st Block 1st Cross, Rammurth",
              style: customTheme(context).regular.copyWith(fontSize: 13, color: Colors.black),
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
