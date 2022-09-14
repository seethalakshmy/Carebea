import 'package:carebea/app/modules/shops/models/payment_model.dart';

import '../data/payment_datasource.dart';

class PaymentRepo {
  PaymentDataSource paymentDataSource = PaymentDataSource();

  ///OrderListShopDeatilPage
  Future<PaymentResponse> payAmount(
      {required int salesPersonId,
      required int shopId,
      required double collectedAmount,
      required String paymentType,
      String? chequeNo}) async {
    return paymentDataSource.makePayment(
        salesPersonId: salesPersonId,
        shopId: shopId,
        collectedAmount: collectedAmount,
        paymentType: paymentType,
        chequeNo: chequeNo);
  }
}
