import 'package:carebea/app/modules/delivery_invoice_details/data/models/invoice_details_response.dart';
import 'package:carebea/app/utils/assets.dart';
import 'package:carebea/app/utils/theme.dart';
import 'package:carebea/app/utils/widgets/appbar.dart';
import 'package:carebea/app/utils/widgets/circular_progress_indicator.dart';
import 'package:carebea/app/utils/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../controllers/delivery_invoice_details_controller.dart';

class DeliveryInvoiceDetailsView extends GetView<DeliveryInvoiceDetailsController> {
  DeliveryInvoiceDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(context),
        body: Obx(() {
          if (controller.isLoading.value) {
            return Center(
              child: circularProgressIndicator(context),
            );
          }
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _orderDetails(context, controller.deliveryInvoice),
                const SizedBox(height: 30),
                const Divider(),
                const SizedBox(height: 20),
                _billDetails(context, controller.deliveryInvoice),
                const SizedBox(height: 50),
                _downloadButton(controller.deliveryInvoice!.invoiceId!),
              ],
            ),
          );
        }));
  }

  Align _downloadButton(int invoiceId) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: const EdgeInsets.only(right: 24),
        child: Obx(() {
          return CustomButton(
            isDense: true,
            isLoading: controller.generatingInvoice.value,
            icon: const Icon(
              Icons.file_download_outlined,
              color: Colors.white,
            ),
            title: "Download Bill",
            onTap: () {
              controller.generateInvoice();
            },
          );
        }),
      ),
    );
  }

  Widget _billDetails(BuildContext context, [InvoiceDetailsResult? deliveryInvoice]) {
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
            PaymentTile(title: "Item Total", value: deliveryInvoice?.itemTotal ?? 0),
            // PaymentTile(title: "GST Tax", value: 115),
            // PaymentTile(title: "SCGST Tax", value: 15),
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
                    "₹${(deliveryInvoice?.grandTotal ?? 0).toStringAsFixed(2)}",
                    style: customTheme(context).regular.copyWith(fontSize: 12),
                  ),
                ),
              ],
            )
          ],
        ));
  }

  Padding _orderDetails(BuildContext context, [InvoiceDetailsResult? deliveryInvoice]) {
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
            content: "Order ID: #${deliveryInvoice!.orderId}",
          ),
          const SizedBox(height: 5),
          DetailsTile(
            title:
                "Delivered at ${deliveryInvoice.deliveryDate == null ? '' : ('${DateFormat("dd MMMM yy").format(deliveryInvoice.deliveryDate!)} at ${DateFormat("HH.mm").format(deliveryInvoice.deliveryDate!)}')}",
            content: deliveryInvoice.userAddress!.split("\n").join(" ").trim(),
          ),
          if (deliveryInvoice.deliveryPersonId != null) const SizedBox(height: 5),
          if (deliveryInvoice.deliveryPersonId != null)
            DetailsTile(
              title: "Picked by",
              content: deliveryInvoice.deliveryPersonId ?? "",
            ),
          const SizedBox(height: 5),
          DetailsTile(
            title: "Payment method",
            content: deliveryInvoice.paymentMethod!,
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
            size: 17,
          ),
        ),
        const SizedBox(width: 15),
        InkWell(
          onTap: () {
            Get.back();
          },
          child: Image.asset(
            Assets.orderIcon,
            scale: 4,
            color: customTheme(context).primary,
          ),
        ),
        const SizedBox(width: 8),
        Text(
          'Invoice details',
          style: customTheme(context).medium.copyWith(fontSize: 16),
        ),

        // Icon(Icons.share)
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
