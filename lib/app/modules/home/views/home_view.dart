// ignore_for_file: use_build_context_synchronously

import 'dart:convert';
import 'dart:developer' as developer;
import 'package:carebea/app/modules/create_order/views/create_order_view.dart';
import 'package:carebea/app/modules/home/views/latest_shops_added_view.dart';
import 'package:carebea/app/modules/home/widgets/search_widget.dart';
import 'package:carebea/app/modules/order_history_details/views/order_history_details_view.dart';
import 'package:carebea/app/modules/shops/models/order_list_model.dart';
import 'package:carebea/app/modules/shops/models/shop_model.dart';
import 'package:carebea/app/modules/shops/views/shop_details.dart';
import 'package:carebea/app/modules/shops/widgets/order_tile.dart';
import 'package:carebea/app/modules/shops/widgets/shop_card.dart';
import 'package:carebea/app/routes/app_pages.dart';
import 'package:carebea/app/utils/show_snackbar.dart';
import 'package:carebea/app/utils/theme.dart';
import 'package:carebea/app/utils/widgets/appbar.dart';
import 'package:carebea/app/utils/widgets/circular_progress_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

import 'package:get/get.dart';

import '../../../utils/widgets/custom_textfield.dart';
import '../../dashboard/models/qr_model.dart';
import '../../order_history_details/controllers/order_history_details_controller.dart';
import '../controllers/home_controller.dart';
import '../widgets/latest_shop_card.dart';
import '../widgets/order_list_for_homepage_search.dart';
import 'homepage_menu_cards.dart';
import 'homepage_upcoming_delivery_view.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);
  FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(context, showScanner: true, onScanned: (val) {
          try {
            var qr = QrResponse.fromJson(json.decode(val.replaceAll("\'", "\"")));
            if (qr.type == 1) {
              Get.to(() => ShopDetails(
                    shopId: qr.id,
                  ));
            } else if (qr.type == 2) {
              Get.toNamed(Routes.ORDER_HISTORY_DETAILS, arguments: {'order_id': qr.id});
            }
          } catch (e, s) {
            developer.log('error', error: e, stackTrace: s);
            showSnackBar("Please scan again");
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
            SliverPadding(
              padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 15),
              sliver: SliverToBoxAdapter(
                  child: Container(
                decoration: BoxDecoration(
                    color: customTheme(context).textFormFieldColor, borderRadius: BorderRadius.circular(5)),
                child: Row(
                  children: [
                    Expanded(
                      child: controller.selectedSearchtype == 'Shop'
                          ? TypeAheadField<ShopList>(
                              loadingBuilder: (context) => Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  circularProgressIndicator(context),
                                ],
                              ),
                              textFieldConfiguration: TextFieldConfiguration(
                                  autofocus: false,
                                  cursorColor: Colors.grey,
                                  style: customTheme(context).regular.copyWith(fontSize: 12),
                                  decoration: InputDecoration(
                                      isDense: true,
                                      fillColor: customTheme(context).textFormFieldColor,
                                      prefixIcon: Icon(
                                        CupertinoIcons.search,
                                        color: Color(0xff9F9F9F),
                                      ),
                                      hintText: 'Search for shops,orders .. ',
                                      hintStyle:
                                          customTheme(context).regular.copyWith(fontSize: 12, color: Colors.grey[500]),
                                      border: OutlineInputBorder(borderSide: BorderSide.none))),
                              suggestionsCallback: (pattern) => controller.homeSearchShop(pattern),
                              itemBuilder: (context, shop) => ShopTile(
                                shop: shop,
                                onTap: () {
                                  Get.to(() => ShopDetails(
                                        shopId: shop.id,
                                      ));
                                },
                              ),
                              onSuggestionSelected: (suggestion) {},
                            )
                          : TypeAheadField<History>(
                              loadingBuilder: (context) => Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  circularProgressIndicator(context),
                                ],
                              ),
                              textFieldConfiguration: TextFieldConfiguration(
                                  cursorColor: Colors.grey,
                                  autofocus: false,
                                  style: DefaultTextStyle.of(context).style.copyWith(fontStyle: FontStyle.italic),
                                  decoration: InputDecoration(
                                      isDense: true,
                                      fillColor: customTheme(context).textFormFieldColor,
                                      prefixIcon: Icon(
                                        CupertinoIcons.search,
                                        color: Color(0xff9F9F9F),
                                      ),
                                      hintText: 'Search for shops,orders .. ',
                                      border: OutlineInputBorder(borderSide: BorderSide.none))),
                              suggestionsCallback: (pattern) => controller.homeSearchOrder(pattern),
                              itemBuilder: (context, order) => OrderTileHomePageSearch(
                                order: order,
                              ),
                              onSuggestionSelected: (order) {
                                Get.toNamed(Routes.ORDER_HISTORY_DETAILS, arguments: {'order_id': order.id});
                              },
                            ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DropdownButton<String>(
                        hint: Text(
                          "Choose",
                          style:
                              customTheme(Get.context!).regular.copyWith(fontSize: 11, color: const Color(0xff929292)),
                        ),
                        value: controller.selectedSearchtype.value,
                        underline: const SizedBox.shrink(),
                        isDense: true,
                        onChanged: (value) {
                          _focusNode.requestFocus();
                          controller.selectedSearchtype(value);
                        },
                        items: ['Shop', 'Order']
                            .map(
                              (e) => DropdownMenuItem(
                                value: e,
                                child: Text(e,
                                    style:
                                        customTheme(Get.context!).regular.copyWith(fontSize: 11, color: Colors.black)),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  ],
                ),
              )

                  // CustomTextField(
                  //   focusNode: _focusNode,
                  //   // onChanged: (val) => controller.homeSearchShop(val),
                  //   hint: 'Search for shops,orders....',
                  //   fillcolor: customTheme(context).textFormFieldColor,
                  //   icon: const Icon(
                  //     Icons.search,
                  //     size: 30,
                  //     color: Colors.grey,
                  //   ),
                  //   trailing: Obx(() {
                  //     return DropdownButton<String>(
                  //       hint: Text(
                  //         "Choose",
                  //         style: customTheme(Get.context!)
                  //             .regular
                  //             .copyWith(fontSize: 11, color: const Color(0xff929292)),
                  //       ),
                  //       value: controller.selectedSearchtype.value.type ?? "",
                  //       underline: const SizedBox.shrink(),
                  //       isDense: true,
                  //       onChanged: (value) {
                  //         _focusNode.requestFocus();
                  //         controller.selectedSearchtype(
                  //             controller.searchitems.singleWhere((element) => element.type == value));
                  //       },
                  //       items: controller.searchitems
                  //           .map(
                  //             (e) => DropdownMenuItem(
                  //           value: e.type,
                  //           child: Text(e.title!,
                  //               style: customTheme(Get.context!)
                  //                   .regular
                  //                   .copyWith(fontSize: 11, color: Colors.black)),
                  //         ),
                  //       )
                  //           .toList(),
                  //     );
                  //   }),
                  // ),
                  ),
            ),
            const SliverPadding(
              padding: EdgeInsets.only(top: 20, left: 15.0, right: 15.0),
              sliver: SliverToBoxAdapter(child: HomeMenuCards()),
            ),
            const SliverPadding(
                padding: EdgeInsets.only(bottom: 10),
                sliver: SliverToBoxAdapter(child: HomepageUpcomingDeliveryView())),
            const SliverToBoxAdapter(child: HomepageLatestShopsAddedView()),
          ]);
        }));
  }
}
