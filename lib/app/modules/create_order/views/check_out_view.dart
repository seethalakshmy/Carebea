import 'package:carebea/app/routes/app_pages.dart';
import 'package:carebea/app/utils/assets.dart';
import 'package:carebea/app/utils/theme.dart';
import 'package:carebea/app/utils/widgets/custom_alertbox.dart';
import 'package:carebea/app/utils/widgets/custom_button.dart';
import 'package:carebea/app/utils/widgets/custom_card.dart';
import 'package:carebea/app/utils/widgets/custom_radio_button.dart';
import 'package:carebea/app/utils/widgets/custom_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({Key? key}) : super(key: key);

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
      body: ListView(
        children: [
          _title(context),
          const SizedBox(height: 15),
          _addressTile(context),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 24, 24, 19),
            child: _productListing(context),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 0, 24, 35),
            child: _paymentMethods(context),
          ),
          _billDetails(context),
          _comments()
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(left: 23, right: 4),
        alignment: Alignment.center,
        height: 55,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: customTheme(context).shadowColor, blurRadius: 10)],
          borderRadius: const BorderRadius.vertical(top: Radius.circular(7)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Total",
                  style: customTheme(context).regular.copyWith(fontSize: 11),
                ),
                Text(
                  "₹975",
                  style: customTheme(context).medium.copyWith(fontSize: 16),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(color: customTheme(context).primary, borderRadius: BorderRadius.circular(7)),
              child: ConfirmationSlider(
                backgroundColor: customTheme(context).primary,
                // height: 48,
                // width: 200,
                shadow: BoxShadow(color: Colors.transparent),
                onConfirmation: () => onConfirm(context),
                foregroundColor: Colors.transparent,
                text: "Swipe to Confirm",
                textStyle: customTheme(context).regular.copyWith(fontSize: 12, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }

  void onConfirm(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => CustomAlertbox(
          topIcon: Image.asset(Assets.successIcon,
          height: 80,
          width: 80,),
              title: "Order Successful!",
              content: "Your order placed has been successful!",
              actions: [
                CustomButton(
                    title: "Go to Home page",
                    onTap: () {
                      Get.offAllNamed(Routes.DASHBOARD);
                    })
              ],
            ));
  }

  Padding _comments() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 19, 24, 10),
      child: CustomTextField(
        maxLines: 4,
        hint: "Add Comments",
      ),
    );
  }

  Column _paymentMethods(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "Payment Method",
          style: customTheme(context).medium.copyWith(fontSize: 12, color: Colors.black),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomRadioButton<String>(
              groupValue: "hi",
              value: "hi",
              onChanged: (value) {},
              label: "Cash on Delivery",
            ),
            CustomRadioButton<String>(
              groupValue: "hi",
              value: "2",
              onChanged: (value) {},
              label: "Cheque",
            ),
            CustomRadioButton<String>(
              groupValue: "hi",
              value: "2",
              onChanged: (value) {},
              label: "Credit",
            ),
          ],
        ),
      ],
    );
  }

  Column _productListing(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Products (7)",
          style: customTheme(context).regular.copyWith(fontSize: 11),
        ),
        const SizedBox(height: 10),
        const ProductTile(),
        const SizedBox(height: 10),
        const ProductTile(),
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () {},
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Show more",
                  style: customTheme(context).regular.copyWith(fontSize: 12, color: customTheme(context).primary),
                ),
                const SizedBox(width: 2),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 10,
                  color: customTheme(context).primary,
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  CustomCard _addressTile(BuildContext context) {
    return CustomCard(
        margin: const EdgeInsets.symmetric(horizontal: 24),
        padding: const EdgeInsets.all(13),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Location",
              style: customTheme(context).regular.copyWith(fontSize: 11, color: Color(0xff767676)),
            ),
            const SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  Assets.assetsLocationFilled,
                  scale: 3,
                ),
                const SizedBox(
                  width: 5,
                ),
                Flexible(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Trinity Shop",
                        style: customTheme(context).medium.copyWith(fontSize: 12, color: Colors.black),
                      ),
                      Flexible(
                        child: Text(
                          'Akshya Nagar 1st Block 1st Cross, Rammurthy nagar, Kerala-689145',
                          style: customTheme(context).regular.copyWith(fontSize: 11),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }

  CustomCard _billDetails(BuildContext context) {
    return CustomCard(
        margin: const EdgeInsets.symmetric(horizontal: 24),
        padding: const EdgeInsets.all(13),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Bill Details",
              style: customTheme(context).regular.copyWith(fontSize: 11, color: Color(0xff767676)),
            ),
            const SizedBox(height: 10),
            PaymentTile(title: "Item Total", value: 805),
            PaymentTile(title: "GST Tax", value: 115),
            PaymentTile(title: "SCGST Tax", value: 15),
            PaymentTile(title: "Discount", value: 0),
          ],
        ));
  }

  Padding _title(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Row(
        children: [
          const Icon(
            Icons.arrow_back_ios,
            size: 17,
          ),
          const SizedBox(width: 10),
          Text(
            "Confirm order",
            style: customTheme(context).medium.copyWith(fontSize: 16, color: Colors.black),
          )
        ],
      ),
    );
  }
}

class PaymentTile extends StatelessWidget {
  const PaymentTile({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);
  final String title;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          flex: 5,
          child: Text(
            title,
            style: customTheme(context).regular.copyWith(fontSize: 12),
          ),
        ),
        Expanded(
          flex: 1,
          child: Text(
            "₹${value.toStringAsFixed(2)}",
            style: customTheme(context).regular.copyWith(fontSize: 12),
          ),
        ),
      ],
    );
  }
}

class ProductTile extends StatelessWidget {
  const ProductTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      height: 100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: _image(),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: RichText(
                      maxLines: 3,
                      overflow: TextOverflow.visible,
                      text: TextSpan(
                          text: "Eccelence Hand Wash Total Protect Plus ",
                          children: const [
                            TextSpan(text: "500ml", style: TextStyle(color: Color(0xff929292))),
                          ],
                          style: customTheme(context).regular.copyWith(fontSize: 12)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 8, right: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: customTheme(context).secondary.withOpacity(.2),
                            child: IconButton(
                                color: const Color(0xff909090),
                                onPressed: () {},
                                icon: const RotatedBox(quarterTurns: 3, child: Icon(Icons.chevron_left))),
                          ),
                          const SizedBox(width: 6),
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(color: Color(0xffF1F1F1), borderRadius: BorderRadius.circular(2)),
                            child: Text(
                              "12",
                              style: customTheme(context).regular.copyWith(fontSize: 12),
                            ),
                          ),
                          const SizedBox(width: 6),
                          CircleAvatar(
                            backgroundColor: customTheme(context).secondary.withOpacity(.2),
                            child: IconButton(
                                color: customTheme(context).secondary,
                                onPressed: () {},
                                icon: RotatedBox(quarterTurns: 1, child: Icon(Icons.chevron_left))),
                          ),
                        ],
                      ),
                      Text(
                        "₹205",
                        style: customTheme(context).medium.copyWith(fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _image() {
    return SizedBox(
      height: 100,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: AspectRatio(
          aspectRatio: 58 / 74,
          child: Image.asset(
            Assets.assetsLoginBackground,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
