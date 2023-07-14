import 'package:carebea/app/core/helper.dart';
import 'package:carebea/app/modules/order_history_details/views/order_history_details_view.dart';
import 'package:carebea/app/routes/app_pages.dart';
import 'package:carebea/app/utils/widgets/appbar.dart';
import 'package:carebea/app/utils/widgets/circular_progress_indicator.dart';
import 'package:carebea/app/utils/widgets/custom_popupmenuitem.dart';
import 'package:carebea/app/utils/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../utils/assets.dart';
import '../../../utils/theme.dart';
import '../../../utils/widgets/Order_history_tile.dart';
import '../../create_order/views/create_order_view.dart';
import '../../dashboard/views/bottom_nav_bar_view.dart';
import '../controllers/orders_controller.dart';

class OrdersView extends StatefulWidget {
  const OrdersView({Key? key}) : super(key: key);

  @override
  State<OrdersView> createState() => _OrdersViewState();
}

class _OrdersViewState extends State<OrdersView> with SingleTickerProviderStateMixin {
  static List<String> category = ['Date', 'Today', 'This week', 'This month', 'This year'];
  OrdersController ordersController = Get.put(OrdersController());

  @override
  void initState() {
    ordersController.tabController1 = TabController(length: 2, vsync: this);
    ordersController.tabController1.addListener(() {
      debugPrint("tab index${ordersController.tabController1.index}");
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      floatingActionButton: openKeyboardGuard(context, child: _createNewOrderButton(context)),
      body: DefaultTabController(
        length: 2,
        child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Orders',
                  style: customTheme(context).medium.copyWith(fontSize: 16),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * .05,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: Color(0xffEEF5FF)),
                  child: TabBar(
                      controller: ordersController.tabController1,
                      onTap: (index) {
                        ordersController.tabController1.animateTo(index);
                        if (index == 0) {
                          ordersController.fetchOrdersList(orderType: OrderType.previous);
                        } else {
                          ordersController.fetchOrdersList(orderType: OrderType.upcoming);
                        }
                      },
                      unselectedLabelColor: Colors.black,
                      indicator: BoxDecoration(
                        color: Theme.of(context).extension<CustomTheme>()!.secondary,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      labelColor: Colors.white,
                      labelStyle: customTheme(context).regular.copyWith(fontSize: 12),
                      indicatorSize: TabBarIndicatorSize.tab,
                      tabs: const [
                        Text('Completed'),
                        Text('Outstanding'),
                      ]),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                        child: CustomTextField(
                      onChanged: (val) => ordersController.searchOrders(val),
                      hint: 'Search for orders',
                      fillcolor: customTheme(context).textFormFieldColor,
                      icon: const Icon(
                        Icons.search,
                        size: 30,
                        color: Colors.grey,
                      ),
                    )),
                    SizedBox(
                      width: 5,
                    ),

                    ordersController.filterVals == null
                        ? PopupMenuButton<String>(
                            enabled: false,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
                            offset: const Offset(0.0, 50),
                            padding: EdgeInsets.zero,
                            child: Image.asset(
                              Assets.filter,
                              scale: 3.5,
                              color: Colors.grey,
                              colorBlendMode: BlendMode.saturation,
                            ),
                            onSelected: (element) {},
                            itemBuilder: (BuildContext context) {
                              if (ordersController.filterSelected.value == "") {}
                              return [
                                customPopupMenuItem<String>(
                                  context,
                                  name: "Date",
                                  isSelected: true,
                                  showBorder: false,
                                ),
                                ...(ordersController.filterVals?.date ?? [])
                                    .map((e) => customPopupMenuItem<String>(context,
                                        isSelected: ordersController.filterSelected.value == "Date-${e.id}", name: e.name!, onTap: () => ordersController.filterOrders("Date", e.id!)))
                                    .toList(),
                                customPopupMenuItem<String>(context, name: "Clear", isSelected: true, showBorder: false, onTap: () {
                                  ordersController.clearFilters();
                                }),
                              ];
                            })
                        : PopupMenuButton<String>(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
                            offset: const Offset(0.0, 50),
                            padding: EdgeInsets.zero,
                            child: Image.asset(
                              Assets.filter,
                              scale: 3.5,
                            ),
                            onSelected: (element) {},
                            itemBuilder: (BuildContext context) {
                              if (ordersController.filterSelected.value == "") {}
                              return [
                                customPopupMenuItem<String>(
                                  context,
                                  name: "Date",
                                  isSelected: true,
                                  showBorder: false,
                                ),
                                ...(ordersController.filterVals?.date ?? [])
                                    .map((e) => customPopupMenuItem<String>(context,
                                        isSelected: ordersController.filterSelected.value == "Date-${e.id}", name: e.name!, onTap: () => ordersController.filterOrders("Date", e.id!)))
                                    .toList(),
                                customPopupMenuItem<String>(context, name: "Clear", isSelected: true, showBorder: false, onTap: () {
                                  ordersController.clearFilters();
                                }),
                              ];
                            })
                    // PopupMenuButton<int>(
                    //
                    //   icon:Image.asset(
                    //     Assets.filter,),
                    //   itemBuilder: (context) => [
                    //     // PopupMenuItem 1
                    //     PopupMenuItem(
                    //       value: 1,
                    //         height: 5,
                    //
                    //         child: Text('Date',
                    //           style: customTheme(context).regular.copyWith(fontSize: 13))
                    //     ),
                    //     PopupMenuDivider(),
                    //     // PopupMenuItem 2
                    //     PopupMenuItem(
                    //         value: 2,
                    //         height: 5,
                    //
                    //         child: Text('Today',
                    //             style: customTheme(context).regular.copyWith(fontSize: 13)
                    //         )
                    //     ),
                    //     PopupMenuDivider(),
                    //
                    //     PopupMenuItem(
                    //         value: 1,
                    //         height: 5,
                    //
                    //         child: Text('This week',
                    //             style: customTheme(context).regular.copyWith(fontSize: 13))
                    //     ),
                    //     PopupMenuDivider(),
                    //
                    //     PopupMenuItem(
                    //         value: 1,
                    //         height: 5,
                    //         child: Text('This month',
                    //             style: customTheme(context).regular.copyWith(fontSize: 13))
                    //     ),
                    //     PopupMenuDivider(),
                    //
                    //     PopupMenuItem(
                    //         value: 1,
                    //         height: 5,
                    //
                    //         child: Text('This year',
                    //             style: customTheme(context).regular.copyWith(fontSize: 13))
                    //     ),
                    //   ],
                    //   offset: Offset(0, 100),
                    //   elevation: 2,
                    //   onSelected: (value) {
                    //   },
                    // ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Expanded(
                  child: Obx(() {
                    if (ordersController.isOrdersLoaded.value || ordersController.isFilterClick.value) {
                      return Center(child: circularProgressIndicator(context));
                    }
                    if (ordersController.allOrders.isEmpty) {
                      return Align(alignment: Alignment.topCenter, child: Text('No Orders'));
                    }

                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: _completedOrders(),
                    );
                  }),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            )),
      ),
    );
  }

  FloatingActionButton _createNewOrderButton(BuildContext context) {
    return FloatingActionButton.extended(
      backgroundColor: Theme.of(context).extension<CustomTheme>()!.primary,
      onPressed: () {
        Get.toNamed(Routes.CREATE_ORDER);
      },
      label: Text(
        "Create new order",
        style: customTheme(context).medium.copyWith(fontSize: 13, color: Colors.white),
      ),
      icon: Icon(Icons.add),
    );
  }

  ListView _completedOrders() {
    return ListView.separated(
        controller: ordersController.scrollController,
        separatorBuilder: (_, __) => const SizedBox(height: 0),
        scrollDirection: Axis.vertical,
        itemCount: ordersController.allOrders.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            child: InkWell(
                onTap: () {
                  Get.toNamed(Routes.ORDER_HISTORY_DETAILS, arguments: {'order_id': ordersController.allOrders[index].id});
                },
                child: OrderHistoryTile(orders: ordersController.allOrders[index])),
          );
        });
  }
}
