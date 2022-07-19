import 'package:carebea/app/modules/order_history_details/views/order_history_details_view.dart';
import 'package:carebea/app/utils/widgets/appbar.dart';
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
  TabController? tabController1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      floatingActionButton: _createNewOrderButton(context),
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
                      controller: tabController1,
                      onTap: (index) {
                        tabController1!.animateTo(index);
                        if (index == 0) {
                          ordersController.fetchOrdersList(orderType: 'Previous');
                        } else {
                          ordersController.fetchOrdersList(orderType: 'Upcoming');
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
                      onChanged: (val) {},
                      hint: 'Search for orders',
                      fillcolor: Colors.grey[300],
                      icon: const Icon(
                        Icons.search,
                        size: 30,
                        color: Colors.grey,
                      ),
                    )),
                    SizedBox(
                      width: 5,
                    ),
                    PopupMenuButton<String>(
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
                                .map((e) => customPopupMenuItem<String>(context, name: e.name!))
                                .toList()
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
                    if (ordersController.isOrdersLoaded.value) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    if (ordersController.allOrders!.isEmpty) {
                      return Align(alignment: Alignment.topCenter, child: Text('No Orders'));
                    }
                    return TabBarView(controller: tabController1, physics: NeverScrollableScrollPhysics(), children: [
                      _completedOrders(),
                      _completedOrders(),
                    ]);
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
        Get.to(CreateOrderView());
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
        separatorBuilder: (_, __) => const SizedBox(height: 16),
        scrollDirection: Axis.vertical,
        itemCount: ordersController.allOrders!.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: InkWell(
                onTap: () {
                  Get.to(() => OrderHistoryDetailsView());
                },
                child: OrderHistoryTile(orders: ordersController.allOrders![index])),
          );
        });
  }
}
