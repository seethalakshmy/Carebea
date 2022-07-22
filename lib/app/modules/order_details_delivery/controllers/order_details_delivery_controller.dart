import 'package:carebea/app/modules/order_details_delivery/data/repository/order_details_repository.dart';
import 'package:carebea/app/modules/shops/models/order_list_model.dart';
import 'package:carebea/app/modules/shops/repo/order_list_repo.dart';
import 'package:carebea/app/routes/app_pages.dart';
import 'package:carebea/app/utils/shared_prefs.dart';
import 'package:carebea/app/utils/show_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderDetailsDeliveryController extends GetxController {
  OrderListRepo orderListRepo = OrderListRepo();
  OrderDetailsRepository orderDetailsRepository = OrderDetailsRepository();
  OrderListResponse? orderListDetailResponse;
  RxBool isOrderDetailsLoading = true.obs;
  RxBool isConfirmingOrder = false.obs;
  Rx<PaymentMethods> selectedPaymentMethod = PaymentMethods.csh1.obs;
  TextEditingController collectedAmountEditingController = TextEditingController();

  @override
  void onInit() {
    fetchOrderDetails(Get.arguments['order_id']);
    super.onInit();
  }

  fetchOrderDetails(int orderId) async {
    isOrderDetailsLoading(true);
    orderListDetailResponse =
        await orderListRepo.orderDetails(salesPersonId: SharedPrefs.getUserId(), orderId: orderId);
    isOrderDetailsLoading(false);
  }

  confirmOrder() async {
    isConfirmingOrder(true);
    var res = await orderDetailsRepository.confirmOrder(
        orderId: orderListDetailResponse?.orderListResult?.history?.first.id,
        salesPersonId: SharedPrefs.getUserId(),
        paymentMethod: _enumToString(selectedPaymentMethod.value),
        collectedAmount: collectedAmountEditingController.text);
    if (res.result?.status ?? false) {
      Get.back();
      Get.toNamed(Routes.DELIVERY_INVOICE_DETAILS,
          arguments: {"orderId": orderListDetailResponse?.orderListResult?.history?.first.id});
    } else {
      showSnackBar(res.result?.message ?? "Something happend, Please try again!");
    }
    isConfirmingOrder(false);
  }
}

enum PaymentMethods { cheq, cred, csh1 }

String _enumToString(PaymentMethods method) {
  switch (method) {
    case PaymentMethods.cheq:
      return "CHEQ";
    case PaymentMethods.cred:
      return "CRED";
    case PaymentMethods.csh1:
    default:
      return "CSH1";
  }
}
