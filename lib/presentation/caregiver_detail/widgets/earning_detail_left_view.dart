import 'package:admin_580_tech/core/text_styles.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:admin_580_tech/presentation/widget/row_combo.dart';
import 'package:admin_580_tech/presentation/widget/table_status_box.dart';
import 'package:flutter/material.dart';

import '../../../core/enum.dart';
import '../../widget/alert_text_label.dart';
import '../../widget/custom_sizedbox.dart';
import '../../widget/rectangle_border.dart';
import '../../widget/status_text.dart';

class EarnDetailLeftView extends StatelessWidget {
  const EarnDetailLeftView(
      {Key? key,
      required this.clientName,
      required this.transactionId,
      required this.status,
      required this.amount,
      required this.dateTime,
      required this.receivedFrom,
      required this.creditTo,
      required this.serviceId,
      required this.paidFor,
      required this.location})
      : super(key: key);
  final String clientName;
  final String transactionId;
  final int status;
  final String amount;
  final String dateTime;
  final String receivedFrom;
  final String creditTo;
  final String serviceId;
  final String paidFor;
  final String location;

  @override
  Widget build(BuildContext context) {
    return RectangleBorder(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomSizedBox(
          height: DBL.twelve.val,
        ),
        RowColonCombo.twoHundred(
            label: AppString.clientName.val, value: clientName),
        CustomSizedBox(
          height: DBL.ten.val,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AlertTextLabel(
              AppString.paymentStatus.val,
              isCustomWidth: true,
              width: DBL.twoHundred.val,
            ),
            AlertTextLabel(AppString.colon.val, isRequiredSpace: true),
            TableStatusBox(
              height: DBL.twentyFive.val,
              status: status,
            )
          ],
        ),
        CustomSizedBox(
          height: DBL.ten.val,
        ),
        RowColonCombo.twoHundred(
            label: AppString.transactionId.val, value: transactionId),
        CustomSizedBox(
          height: DBL.ten.val,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AlertTextLabel(AppString.amount.val,
                isCustomWidth: true, width: DBL.twoHundred.val),
            AlertTextLabel(AppString.colon.val, isRequiredSpace: true),
            StatusText(amount, status: status),
          ],
        ),
        CustomSizedBox(
          height: DBL.ten.val,
        ),
        RowColonCombo.twoHundred(
            label: AppString.dateTime.val, value: dateTime),
        CustomSizedBox(
          height: DBL.ten.val,
        ),
        RowColonCombo.twoHundred(
            label: AppString.creditTo.val, value: creditTo),
        CustomSizedBox(
          height: DBL.twenty.val,
        ),
        CustomText(
          AppString.serviceDetails.val,
          style: TS().gRoboto(
              fontWeight: FW.w500.val,
              fontSize: FS.font16.val,
              color: AppColor.matBlack3.val),
        ),
        Divider(
          color: AppColor.dividerColor.val,
        ),
        CustomSizedBox(
          height: DBL.ten.val,
        ),
        RowColonCombo.twoHundred(
            label: AppString.serviceId.val, value: serviceId),
        CustomSizedBox(
          height: DBL.ten.val,
        ),
        RowColonCombo.twoHundred(label: AppString.paidFor.val, value: paidFor),
        CustomSizedBox(
          height: DBL.ten.val,
        ),
        RowColonCombo.twoHundred(
            label: AppString.location.val, value: location),
      ],
    ));
  }
}
