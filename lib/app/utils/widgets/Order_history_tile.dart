import 'package:carebea/app/utils/theme.dart';
import 'package:carebea/app/utils/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class OrderHistoryTile extends StatelessWidget {
  const OrderHistoryTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      height: MediaQuery.of(context).size.height*.21,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
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
          ),
          const Divider(
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Trinty Shop',
                  style: customTheme(context).medium.copyWith(fontSize: 14),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Column(children: [
                    Text('Total',style: TextStyle(color: Theme.of(context).extension<CustomTheme>()!.secondary),),
                    Text("₹951",style: customTheme(context).medium.copyWith(fontSize: 14),)
                  ],),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,top: 20),
            child: Text('Product',
            style: customTheme(context).medium.copyWith(fontSize: 12),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8,top: 5),
            child: Row(
              children: [
                Text('Eccelence Hand Wash Total... 20x',style: customTheme(context).regular.copyWith(fontSize: 11),),
                SizedBox(width:MediaQuery.of(context).size.width*.25),
                Text('View details',style: customTheme(context).medium.copyWith(fontSize: 10),),
                Icon(Icons.arrow_forward_ios_rounded,size: 20,color: Colors.black54,)
              ],
            ),
          )
        ],
      ),
    );
  }
}