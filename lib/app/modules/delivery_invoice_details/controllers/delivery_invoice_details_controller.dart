import 'package:carebea/app/modules/delivery_invoice_details/data/models/invoice_details_response.dart';
import 'package:carebea/app/modules/delivery_invoice_details/data/repository/delivery_invoice_details_repository.dart';
import 'package:carebea/app/utils/show_snackbar.dart';
import 'package:carebea/app/utils/widgets/custom_alertbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DeliveryInvoiceDetailsController extends GetxController {
  final DeliveryInvoiceDetailsRepository _repository = DeliveryInvoiceDetailsRepository();
  RxBool isLoading = true.obs;
  RxBool generatingInvoice = false.obs;
  InvoiceDetailsResult? deliveryInvoice;

  @override
  void onInit() {
    fetchInvoiceDetails();
    super.onInit();
  }

  fetchInvoiceDetails() async {
    isLoading(true);
    var res = await _repository.getInvoiceDetails(orderId: Get.arguments["orderId"]);
    if (res.result?.status ?? false) {
      deliveryInvoice = res.result;
    } else {
      Get.back();
      showSnackBar(res.result?.message ?? "Could't generate invoice, Please try again");
    }
    isLoading(false);
  }

  generateInvoice() async {
    generatingInvoice(true);
    var res = await _repository.generateInvoiceBill(invoiceId: deliveryInvoice!.invoiceId);
    generatingInvoice(false);
  }
}
