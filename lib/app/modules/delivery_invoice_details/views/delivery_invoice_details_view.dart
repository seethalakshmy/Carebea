import 'package:carebea/app/utils/assets.dart';
import 'package:carebea/app/utils/theme.dart';
import 'package:carebea/app/utils/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/delivery_invoice_details_controller.dart';

class DeliveryInvoiceDetailsView extends GetView<DeliveryInvoiceDetailsController> {
  const DeliveryInvoiceDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Image.asset(
            Assets.assetsLogo,
            scale: 3,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _orderDetails(context),
              const SizedBox(height: 30),
              const Divider(),
              const SizedBox(height: 20),
              _billDetails(context),
              const SizedBox(height: 50),
              Align(
                alignment: Alignment.centerRight,
                child: CustomButton(
                  onTap: () {},
                  title: "Download Bill",
                ),
              )
            ],
          ),
        ));
  }

  Widget _billDetails(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Bill Details",
              style: customTheme(context).medium.copyWith(fontSize: 13),
            ),
            const SizedBox(height: 10),
            PaymentTile(title: "Item Total", value: 805),
            PaymentTile(title: "GST Tax", value: 115),
            PaymentTile(title: "SCGST Tax", value: 15),
            PaymentTile(title: "Discount", value: 0),
            const Divider(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  flex: 5,
                  child: Text(
                    "Grand Total",
                    style: customTheme(context).medium.copyWith(fontSize: 12),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    "₹${(975).toStringAsFixed(2)}",
                    style: customTheme(context).regular.copyWith(fontSize: 12),
                  ),
                ),
              ],
            )
          ],
        ));
  }

  Padding _orderDetails(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          _title(context),
          const SizedBox(height: 30),
          DetailsTile(
            title: "Order details",
            content: "Order ID: #56789",
          ),
          const SizedBox(height: 5),
          DetailsTile(
            title: "Delivered at 20 June 22 at 15.03",
            content: "Akshya Nagar 1st Block 1st Cross, Rammurthy nagar, Bangalore-560016",
          ),
          const SizedBox(height: 5),
          DetailsTile(
            title: "Picked by",
            content: "Akash Kumar",
          ),
          const SizedBox(height: 5),
          DetailsTile(
            title: "Payment method",
            content: "Cash on delivery",
          ),
        ],
      ),
    );
  }

  Row _title(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back_ios,
            size: 16,
          ),
        ),
        const SizedBox(width: 8),
        Image.asset(
          Assets.orderIcon,
          scale: 4,
          color: customTheme(context).primary,
        ),
        const SizedBox(width: 8),
        Text(
          'Invoice details',
          style: customTheme(context).medium.copyWith(fontSize: 16),
        ),
      ],
    );
  }
}

class DetailsTile extends StatelessWidget {
  const DetailsTile({
    Key? key,
    required this.title,
    required this.content,
  }) : super(key: key);
  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: customTheme(context).regular.copyWith(fontSize: 11, color: Colors.grey),
        ),
        Flexible(
          child: Text(
            content,
            style: customTheme(context).regular.copyWith(fontSize: 14),
          ),
        ),
      ],
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
