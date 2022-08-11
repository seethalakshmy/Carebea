import 'dart:convert';
import 'dart:io';

import 'package:carebea/app/core/helper.dart';
import 'package:carebea/app/modules/delivery_invoice_details/data/models/invoice_details_response.dart';
import 'package:carebea/app/modules/delivery_invoice_details/data/repository/delivery_invoice_details_repository.dart';
import 'package:carebea/app/utils/cloudmessaging.dart';
import 'package:carebea/app/utils/show_snackbar.dart';
import 'package:carebea/app/utils/widgets/custom_alertbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

class DeliveryInvoiceDetailsController extends GetxController {
  final DeliveryInvoiceDetailsRepository _repository = DeliveryInvoiceDetailsRepository();
  RxBool isLoading = true.obs;
  RxBool generatingInvoice = false.obs;
  InvoiceDetailsResult? deliveryInvoice;
  CloudMessaging _cloudMessaging = CloudMessaging();
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
    if (res.result?.status ?? false) {
      if ((res.result?.base64Invoice ?? "").isEmpty) {
        generatingInvoice(false);
        showSnackBar("Could't generate invoice, Please try again!");

        return;
      }
      if (await getStoragePermission()) {
        try {
          await storePdfTostorage(res.result!.base64Invoice!, Get.arguments["orderId"].toString());
        } catch (e) {
          showSnackBar("Could't save pdf to storage please try again");
        }
      }
    } else {
      showSnackBar("Could't generate invoice, Please try again!");
    }
    generatingInvoice(false);
  }

  Future<bool> getStoragePermission() async {
    if (!(await Permission.storage.isGranted)) {
      var permissionStatus = await Permission.storage.request();
      if (permissionStatus != PermissionStatus.granted) {
        return false;
      }
    }
    return true;
  }

  Future storePdfTostorage(String base64pdf, String orderID) async {
    var bytes = base64Decode(base64pdf);
    final output = await getDownloadPath();
    final file = File("$output/Order-$orderID.pdf");
    await file.writeAsBytes(bytes.buffer.asUint8List());
    showSnackBar("invoice downloded successfully");
    _cloudMessaging.showDownloadNotification(file.path);
  }
}
