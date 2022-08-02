import 'package:carebea/app/modules/shops/models/order_list_model.dart';
import 'package:carebea/app/modules/shops/repo/order_list_repo.dart';
import 'package:carebea/app/utils/shared_prefs.dart';
import 'package:carebea/app/utils/show_snackbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../create_order/model/create_order.dart';
import '../../order_details_delivery/data/repository/order_details_repository.dart';

class OrderHistoryDetailsController extends GetxController {
  OrderListRepo orderListRepo = OrderListRepo();
  OrderDetailsRepository orderDetailsRepository = OrderDetailsRepository();

  OrderListResponse? orderListDetailResponse;
  RxBool isOrderDetailsLoading = true.obs;
  late Rx<PaymentMethod> selectedPaymentMethod;
  TextEditingController collectedAmountEditingController = TextEditingController();
  TextEditingController cheqNoController = TextEditingController();
  RxBool isConfirmingOrder = false.obs;




  @override
  void onInit() {
    fetchOrderDetails(Get.arguments['order_id']);
    super.onInit();
  }

  // fetchOrderDetails(int orderId) async {
  //   isOrderDetailsLoaded(true);
  //   orderListDetailResponse =
  //       await orderListRepo.orderDetails(salesPersonId: SharedPrefs.getUserId(), orderId: orderId);
  //   isOrderDetailsLoaded(false);
  // }
  fetchOrderDetails(int orderId) async {
    isOrderDetailsLoading(true);
    orderListDetailResponse =
    await orderListRepo.orderDetails(salesPersonId: SharedPrefs.getUserId(), orderId: orderId);
    if ((orderListDetailResponse?.orderListResult?.paymentMethods ?? []).isNotEmpty) {
      if (orderListDetailResponse?.orderListResult?.history?.first.paymentMethod != null) {
        selectedPaymentMethod = orderListDetailResponse!.orderListResult!.paymentMethods!
            .firstWhere(
                (element) => element.id == orderListDetailResponse!.orderListResult!.history!.first.paymentMethod!)
            .obs;
      } else {
        selectedPaymentMethod = (orderListDetailResponse!.orderListResult!.paymentMethods!.first).obs;
      }
    }
    isOrderDetailsLoading(false);
  }

  confirmOrder() async {
    isConfirmingOrder(true);
    var res = await orderDetailsRepository.confirmOrder(
        orderId: orderListDetailResponse?.orderListResult?.history?.first.id,
        salesPersonId: SharedPrefs.getUserId(),
        paymentMethod: selectedPaymentMethod.value.code,
        collectedAmount: collectedAmountEditingController.text,
        cheqNo: cheqNoController.text
    );
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
