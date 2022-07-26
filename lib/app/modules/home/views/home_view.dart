// ignore_for_file: use_build_context_synchronously

import 'dart:convert';
import 'dart:developer' as developer;
import 'package:carebea/app/modules/home/views/latest_shops_added_view.dart';
import 'package:carebea/app/modules/home/widgets/search_widget.dart';
import 'package:carebea/app/modules/shops/views/shop_details.dart';
import 'package:carebea/app/routes/app_pages.dart';
import 'package:carebea/app/utils/theme.dart';
import 'package:carebea/app/utils/widgets/appbar.dart';
import 'package:carebea/app/utils/widgets/circular_progress_indicator.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../dashboard/models/qr_model.dart';
import '../../order_history_details/controllers/order_history_details_controller.dart';
import '../controllers/home_controller.dart';
import 'homepage_menu_cards.dart';
import 'homepage_upcoming_delivery_view.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(context, showScanner: true, onScanned: (val) {
        try  {
            var qr = QrResponse.fromJson(json.decode(val.replaceAll("\'", "\"")));
            if (qr.type == 1) {
              Get.to(() => ShopDetails(
                    shopId: qr.id,
                  ));
            } else if (qr.type == 2) {
              Get.toNamed(Routes.ORDER_HISTORY_DETAILS,
                  arguments: {'order_id': qr.id});
            }
          }
          catch(e,s){
          developer.log('error',error: e,stackTrace: s);
          }
        }),

        // appBar: AppBar(
        //   title: Image.asset(
        //     Assets.assetsLogo,
        //     scale: 3,
        //
        //   ),
        //   actions: [
        //     Padding(
        //       padding: const EdgeInsets.only(right: 15),
        //       child: Scanner(onScanned: (){},),
        //     ),
        //   ],
        // ),
        body: Obx(() {
          if (controller.isLoading.value) {
            return Center(
              child: circularProgressIndicator(context),
            );
          }
          return CustomScrollView(slivers: <Widget>[
            // SliverPadding(
            //   padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            //   sliver: SliverAppBar(
            //     pinned: true,
            //     title: Image.asset(
            //       Assets.assetsLogo,
            //       scale: 3,
            //     ),
            //     actions: [
            //       _scanner(context),
            //     ],
            //   ),
            // ),
            SliverPadding(
              padding: const EdgeInsets.only(left: 15.0, top: 15, right: 15.0),
              sliver: SliverToBoxAdapter(
                child: Text(
                  "Dashboard",
                  style: customTheme(context).medium.copyWith(fontSize: 16, color: Colors.black),
                ),
              ),
            ),
            const SliverPadding(
              padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 15),
              sliver: SliverToBoxAdapter(child: SearchWidget()),
            ),
            const SliverPadding(
              padding: EdgeInsets.only(top: 20, left: 15.0, right: 15.0),
              sliver: SliverToBoxAdapter(child: HomeMenuCards()),
            ),
          const  SliverPadding(
                padding: EdgeInsets.only(bottom: 10),
                sliver: SliverToBoxAdapter(
                    child: HomepageUpcomingDeliveryView())),
            const SliverToBoxAdapter(child: HomepageLatestShopsAddedView()),
          ]);
        }));
  }
}
