import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/rectangle_border.dart';
import 'package:admin_580_tech/presentation/widget/row_combo.dart';
import 'package:flutter/material.dart';

class ServiceDetailCanceledView extends StatelessWidget {
  const ServiceDetailCanceledView(
      {Key? key, required this.refundStatus, required this.canceledBy})
      : super(key: key);
  final String refundStatus;
  final String canceledBy;

  @override
  Widget build(BuildContext context) {
    return RectangleBorder(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RowColonCombo.twoHundred(
            label: AppString.canceledBy.val, value: canceledBy),
        CustomSizedBox(
          height: DBL.ten.val,
        ),
        RowColonCombo.twoHundred(
            label: AppString.transactionHistory.val, value: refundStatus),
      ],
    ));
  }
}
