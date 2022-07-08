import 'package:carebea/app/utils/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../utils/assets.dart';
import '../../../utils/theme.dart';
import '../../../utils/widgets/Order_history_tile.dart';
import '../../dashboard/views/bottom_nav_bar_view.dart';
import '../controllers/orders_controller.dart';
class OrdersView extends StatefulWidget {
  const OrdersView({Key? key}) : super(key: key);

  @override
  State<OrdersView> createState() => _OrdersViewState();
}

class _OrdersViewState extends State<OrdersView>with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Image.asset(Assets.assetsLogo),
        ),
        leadingWidth: 30,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Image.asset(Assets.assetsScan, width: 40, height: 40,),
          ),
        ],
      ),
      floatingActionButton: _createNewOrderButton(context),

      body: DefaultTabController(
        length: 2,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Orders',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
              SizedBox(height: 15,),
              Container(
                height: MediaQuery.of(context).size.height*.05,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color:Color(0xffEEF5FF)
                ),
                child: TabBar(
                  unselectedLabelColor: Colors.black,
                  indicator: BoxDecoration(
                    color:Theme.of(context).extension<CustomTheme>()!.secondary,
                    borderRadius: BorderRadius.circular(50),
                  ),
                    labelColor: Colors.white,
                    indicatorSize:TabBarIndicatorSize.tab,
                    tabs: [
                  Text('Completed',),
                  Text('Outstanding',),
                ]),
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      cursorColor: Colors.grey,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          ),
                          fillColor:Color(0xFFEFEFEF),
                          filled: true,

                          hintText: 'Search for orders',
                          hintStyle: const TextStyle(color: Colors.grey),
                          prefixIcon:Icon(Icons.search,color: Colors.grey,)),
                    ),
                  ),
                  PopupMenuButton<int>(

                    icon:Image.asset(
                      Assets.filter,),
                    itemBuilder: (context) => [
                      // PopupMenuItem 1
                      PopupMenuItem(
                        value: 1,
                        child: Text('Date')
                      ),
                      PopupMenuDivider(),
                      // PopupMenuItem 2
                      PopupMenuItem(
                          value: 2,
                          child: Text('Today')
                      ),
                      PopupMenuDivider(),

                      PopupMenuItem(
                          value: 1,
                          child: Text('This week')
                      ),
                      PopupMenuDivider(),

                      PopupMenuItem(
                          value: 1,
                          child: Text('This month')
                      ),
                      PopupMenuDivider(),

                      PopupMenuItem(
                          value: 1,
                          child: Text('This year')
                      ),
                    ],
                    offset: Offset(0, 100),
                    elevation: 2,
                    onSelected: (value) {
                    },
                  ),
                ],
              ),
              SizedBox(height: 25,),

              Expanded(
                child: TabBarView(children: [
                  _completedOrders(),
                  _completedOrders(),
                ]),
              ),
              SizedBox(height: 10,),
            ],
              )
          ),
        ),
      );
  }
  FloatingActionButton _createNewOrderButton(BuildContext context) {
    return FloatingActionButton.extended(
      backgroundColor:Theme.of(context).extension<CustomTheme>()!.primary,
      onPressed: () {},
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
        itemCount: 5,
        itemBuilder: (context, index) {
          return const  OrderHistoryTile();
        });
  }
}



