import 'package:carebea/app/routes/app_pages.dart';
import 'package:carebea/app/utils/widgets/appbar.dart';
import 'package:carebea/app/utils/widgets/custom_textfield.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../utils/assets.dart';
import '../../../utils/theme.dart';
import '../../../utils/widgets/custom_alertbox.dart';
import '../../../utils/widgets/custom_button.dart';
import '../../add_shop/views/add_shop_view.dart';
import '../controllers/order_details_delivery_controller.dart';

class OrderDetailsDeliveryView extends GetView<OrderDetailsDeliveryController> {
  const OrderDetailsDeliveryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:appBar(context),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomButton(title: 'Order Delivered', onTap: () {
          Get.defaultDialog(
            barrierDismissible: false,
            title: '',
            content: Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Payment Method',
                    style: customTheme(context).medium.copyWith(fontSize: 18),
                  ),
                  PaymentMethodRadioButton(),
                  Text('Collect amount',
                    style: customTheme(context).regular.copyWith(fontSize: 14),
                  ),
                  CustomTextField(),
                ],
              ),
            ),
            confirm: CustomButton(title: 'Confirm', onTap: (){
              Get.back();
              showDialog<bool>(
                  context: context,
                  builder: (ctx) {
                    return CustomAlertbox(
                      topIcon: Image.asset(
                        Assets.successIcon,
                        width: 80,
                        height: 80,
                      ),
                      title: "Delivered Successfully",
                      content: "Your delivery has been successful!",
                      actions: [
                        CustomButton(
                            title: "Go to invoice details",
                            onTap: () {
                              Get.back(result: true);
                              Get.toNamed(Routes.DELIVERY_INVOICE_DETAILS);
                            })
                      ],
                    );
                  });

            })
          );

        },),
      ) ,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15)),
              ),
              elevation: 10,

              child: Padding(
                padding: const EdgeInsets.only(left: 20,top: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: (){
                            Get.back();
                          },
                            child: Icon(Icons.arrow_back_ios_new,size: 20,)),
                        SizedBox(width: 10,),
                        Text('Order ID:#456789',
                          style: customTheme(context).medium.copyWith(fontSize: 18),
                        )

                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text("Delivery Date:20/06/2022",
                        style: customTheme(context).regular.copyWith(fontSize: 12),
                      ),
                    ),
                    SizedBox(height: 30,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Image.asset(Assets.pickup,scale: 2,),
                            SizedBox(
                              height:MediaQuery.of(context).size.height*.1,
                              child: DottedLine(
                                direction: Axis.vertical,
                                lineThickness: .5,
                                dashLength: 4.0,
                                dashColor: Colors.black,
                                dashGapLength: 4.0,
                                dashGapColor: Colors.transparent,
                              ),
                            ),

                            Image.asset(Assets.assetsLocationFilled,scale: 2,),
                          ],
                        ),
                        SizedBox(width: 20,),
                        Column(
                          crossAxisAlignment:CrossAxisAlignment.start ,
                          children: [
                            Text('Pickup point',
                              style: customTheme(context)
                                  .medium
                                  .copyWith(fontSize: 14, color: customTheme(context).secondary),
                            ),
                            Text('Pickup',
                              style: customTheme(context).medium.copyWith(fontSize: 14),
                            ),
                            SizedBox(
                              height:MediaQuery.of(context).size.height*.08,

                            ),
                            Text('Location to be delivered',
                              style: customTheme(context)
                                  .medium
                                  .copyWith(fontSize: 14, color: customTheme(context).secondary),
                            ),
                            Text('Trinity Shop',
                              style: customTheme(context).medium.copyWith(fontSize: 14),
                            ),
                            Row(
                              children: [
                                Text('Akshya Nagar 1st Block 1st Cross,\nRammurthy nagar,Kerala-689145',
                                  style: customTheme(context).regular.copyWith(fontSize: 14),
                                ),
                                SizedBox(width: 30,),
                                Image.asset(Assets.phoneFilled,scale: 3,)
                              ],
                            ),

                          ],
                        ),

                      ],
                    ),
                    SizedBox(height: 20,),
                    Text('Order Details',style: customTheme(context).medium.copyWith(fontSize: 16)),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Flexible(
                          flex: 8,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Product',
                                style: customTheme(context).medium.copyWith(fontSize: 14),
                              ),
                              SizedBox(height: 10,),
                              Text("Eccelence Hand Wash Total Plus.",
                                style: customTheme(context).regular.copyWith(fontSize: 12),),
                              SizedBox(height: 5,),
                              Text("Eccelence Hand Wash Total Plus.",
                                style: customTheme(context).regular.copyWith(fontSize: 12),),
                              SizedBox(height: 5,),
                              Text("Eccelence Hand Wash Total Plus.",
                                style: customTheme(context).regular.copyWith(fontSize: 12),),
                            ],
                          ),
                        ),
                        SizedBox(width: 40,),
                        Flexible(
                          flex: 1,
                          child: Column(
                            children: [
                              Text('Qty',
                                style: customTheme(context).medium.copyWith(fontSize: 14),

                              ),
                              SizedBox(height: 10,),

                              Text("20x",
                                  style: customTheme(context).regular.copyWith(fontSize: 12)),
                              SizedBox(height: 5,),
                              Text("20x",
                                  style: customTheme(context).regular.copyWith(fontSize: 12)),
                              SizedBox(height: 5,),
                              Text("20x",
                                  style: customTheme(context).regular.copyWith(fontSize: 12)),

                            ],
                          ),
                        ),
                        SizedBox(width: 60,),

                        Flexible(
                          flex: 2,
                          child: Column(
                            children: [
                              Text('Price',
                                style: customTheme(context).medium.copyWith(fontSize: 14),
                              ),
                              SizedBox(height: 10,),

                              Text("₹951",
                                style: customTheme(context).regular.copyWith(fontSize: 12),
                              ),
                              SizedBox(height: 5,),
                              Text("₹172",
                                style: customTheme(context).regular.copyWith(fontSize: 12),
                              ),
                              SizedBox(height: 5,),
                              Text("₹51",
                                style: customTheme(context).regular.copyWith(fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30,),
                    Text('Amount to be Collected',
                      style: customTheme(context).regular.copyWith(fontSize: 14,color: Colors.grey),
                    ),
                    Text('COD',
                        style: customTheme(context)
                            .medium
                            .copyWith(fontSize: 14, color: customTheme(context).primary)),
                    Text('₹1245',
                      style: customTheme(context).medium.copyWith(fontSize: 16),

                    ),
                    Container(
                      height: 200,
                    ),


                  ],
                ),
              ),
            ),
          ),
        ),
      )
    );
  }

}

class PaymentMethodRadioButton extends StatefulWidget {
  const PaymentMethodRadioButton({Key? key}) : super(key: key);

  @override
  State<PaymentMethodRadioButton> createState() => _PaymentMethodRadioButtonState();
}

class _PaymentMethodRadioButtonState extends State<PaymentMethodRadioButton> {
  int? radioValue;
  int? selectedRadio;

  @override
  void initState() {
    super.initState();
    radioValue = 1;


  }
  setSelectedRadio(int? val) {
    setState(() {
      selectedRadio = val!;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Radio<int>(
          splashRadius: 0,
            value: 1,
            groupValue: radioValue,
            onChanged: (val) {
              setSelectedRadio(val);
              radioValue = 1;
            },
            activeColor: Theme.of(context).extension<CustomTheme>()!.secondary),
        const Text("COD"),
        Radio<int>(
          value: 2,
          groupValue: radioValue,
          onChanged: (val) {
            setSelectedRadio(val);
            radioValue = 2;
          },
          activeColor:Theme.of(context).extension<CustomTheme>()!.secondary,
        ),
        const Text("Cheque"),
        Radio<int>(
          value: 3,
          groupValue: radioValue,
          onChanged: (val) {
            setSelectedRadio(val);
            radioValue = 3;
          },
          activeColor:Theme.of(context).extension<CustomTheme>()!.secondary,
        ),
        const Text("Credit")


      ],
    );
  }
}
class PaymentMethodAlertDialogue extends StatefulWidget {
  const PaymentMethodAlertDialogue({Key? key}) : super(key: key);

  @override
  State<PaymentMethodAlertDialogue> createState() => _PaymentMethodAlertDialogueState();
}

class _PaymentMethodAlertDialogueState extends State<PaymentMethodAlertDialogue> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Payment Method"),
      content: Column(
        children: [
          PaymentMethodRadioButton(),
          CustomTextField()
        ],
      ),
      actions: [
        CustomButton(title: 'Confirm', onTap: (){
          Get.back();
        })
      ],
      elevation: 10,
    );
  }
}
