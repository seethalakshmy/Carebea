import 'package:carebea/app/modules/create_order/views/add_products_view.dart';
import 'package:carebea/app/modules/create_order/widgets/shop_tile.dart';
import 'package:carebea/app/routes/app_pages.dart';
import 'package:carebea/app/utils/assets.dart';
import 'package:carebea/app/utils/theme.dart';
import 'package:carebea/app/utils/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShopDetailsView extends StatelessWidget {
  const ShopDetailsView({Key? key}) : super(key: key);

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
          Padding(padding: EdgeInsets.symmetric(horizontal: 24), child: ShopDetailsTile()),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: CustomButton(title: 'Add Products', onTap: (){
              Get.to(AddProductsView());
            }),
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
            child:  InkWell(
              onTap: (){
                Get.back();
              },
              child: Icon(
                Icons.arrow_back_ios,
                size: 17,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Text(
            "Create new order",
            style: customTheme(context).medium.copyWith(fontSize: 16, color: Colors.black),
          ),

        ],
      ),
    );
  }
}
