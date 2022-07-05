import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../utils/assets.dart';
import '../../../utils/theme.dart';
import '../../../utils/widgets/custom_card.dart';
import '../controllers/order_history_details_controller.dart';

class OrderHistoryDetailsView extends GetView<OrderHistoryDetailsController> {
  const OrderHistoryDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Image.asset(Assets.assetsLogo),
        ),
        leadingWidth: 30,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children:  [
                  Icon(Icons.arrow_back_ios_new,size: 20,),
                  SizedBox(width: 15,),
                  Text('Order ID:#456789',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                  SizedBox(width: MediaQuery.of(context).size.width*.4,),
                  Image.asset(Assets.edit,
                  scale: 3,)

                ],
              ),
        SizedBox(height: 25,),
        CustomCard(
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Order ID: #656546',
                          style: customTheme(context)
                              .medium
                              .copyWith(fontSize: 12, color: customTheme(context).secondary),
                        ),
                        Text(
                          'Delivery Date : 20/06/2022',
                          style: customTheme(context).regular.copyWith(fontSize: 11),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: customTheme(context).action.withOpacity(.25),
                      ),
                      child: Text(
                        'Delivered',
                        style: customTheme(context).medium.copyWith(fontSize: 10, color: customTheme(context).action),
                      ),
                    ),
                  ],
                ),
                const Divider(
                  thickness: 1,
                ),
                Text("Sales Representative: Akash Kumar",
                  style: customTheme(context).medium.copyWith(fontSize: 14),
                ),
                Text("ordered date:11/06/2022"),
                SizedBox(height: 10,),
                Row(children: [
                  Image.asset(Assets.assetsLocationFilled,scale: 3,),
                  SizedBox(width: 5,),
                  Text("Trinity Shop",
                    style: customTheme(context).medium.copyWith(fontSize: 14),
                  )
                ],),

                Padding(
                  padding: const EdgeInsets.only(top: 8,left: 15),
                  child: Text('Akshya Nagar 1st Block 1st cross,Rammurthy nagar,\nKerala-689145 '),
                ),
                SizedBox(height: 15,),

                Text("Outstanding amount",
                  style: customTheme(context).medium.copyWith(fontSize: 14),
                ),
                Text("₹2,45,000"),
                SizedBox(height: 10,),
                Divider(
                  thickness: 1,
                ),
                SizedBox(height: 10,),

                Row(
                  children: [
                    Text("Product",style: TextStyle(fontWeight: FontWeight.w600),),
                    SizedBox(width: MediaQuery.of(context).size.width*.39,),
                    Text("Qty",style: TextStyle(fontWeight: FontWeight.w600),),
                    SizedBox(width: MediaQuery.of(context).size.width*.19,),
                    Text("Price",style: TextStyle(fontWeight: FontWeight.w600),)
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Text("Eccelence Hand Wash Total Plus."),
                    SizedBox(width: MediaQuery.of(context).size.width*.02,),
                    Text("20x"),
                    SizedBox(width: MediaQuery.of(context).size.width*.19,),
                    Text("₹951.00",
                      style: customTheme(context).regular.copyWith(fontSize: 12),
                    )
                  ],
                ),
                SizedBox(height: 10,),

                Row(
                  children: [
                    Text("Eccelence Hand Wash Total Plus."),
                    SizedBox(width: MediaQuery.of(context).size.width*.02,),
                    Text("20x"),
                    SizedBox(width: MediaQuery.of(context).size.width*.19,),
                    Text("₹51.00",
                      style: customTheme(context).regular.copyWith(fontSize: 12),
                    )
                  ],
                ),
                SizedBox(height: 10,),

                Row(
                  children: [
                    Text("Eccelence Hand Wash Total Plus."),
                    SizedBox(width: MediaQuery.of(context).size.width*.02,),
                    Text("20x"),
                    SizedBox(width: MediaQuery.of(context).size.width*.19,),
                    Text("₹101.00",
                      style: customTheme(context).regular.copyWith(fontSize: 12),
                    )
                  ],
                ),
                SizedBox(height: 10,),
                Divider(
                  thickness: 1,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Item Total',
                          style: customTheme(context).regular.copyWith(fontSize: 12),
                        ),
                        SizedBox(height: 10,),
                        Text('GST',
                          style: customTheme(context).regular.copyWith(fontSize: 12),
                        ),
                        SizedBox(height: 10,),
                        Text('CGST',
                          style: customTheme(context).regular.copyWith(fontSize: 12),
                        ),
                        SizedBox(height: 10,),
                        Text('Discount',
                          style: customTheme(context).regular.copyWith(fontSize: 12),
                        ),
                        SizedBox(height: 20,),
                        Text('Grand Total',style: customTheme(context).medium.copyWith(fontSize: 14),),
                      ],
                    ),
                    SizedBox(width:MediaQuery.of(context).size.width*.15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("₹805.00",
                          style: customTheme(context).regular.copyWith(fontSize: 12),
                        ),
                        SizedBox(height: 10,),
                        Text("₹155.00",
                          style: customTheme(context).regular.copyWith(fontSize: 12),
                        ),
                        SizedBox(height: 10,),
                        Text("₹15.00",
                          style: customTheme(context).regular.copyWith(fontSize: 12),
                        ),
                        SizedBox(height: 10,),
                        Text("₹0.00",
                          style: customTheme(context).regular.copyWith(fontSize: 12),
                        ),
                        SizedBox(height: 20,),
                        Text("₹1245",
                          style: customTheme(context).medium.copyWith(fontSize: 14),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
            ],
          ),
        ),
      )
    );
  }
}
