import 'package:admin_580_tech/core/text_styles.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:admin_580_tech/presentation/widget/table_status_box.dart';
import 'package:flutter/cupertino.dart';
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
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AlertTextLabel(AppString.clientName.val, isCustomWidth: true),
            AlertTextLabel(AppString.colon.val, isRequiredSpace: true),
            AlertTextLabel(
              clientName,
            ),
          ],
        ),
        CustomSizedBox(
          height: DBL.ten.val,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AlertTextLabel(AppString.paymentStatus.val, isCustomWidth: true),
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
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AlertTextLabel(AppString.transactionId.val, isCustomWidth: true),
            AlertTextLabel(AppString.colon.val, isRequiredSpace: true),
            AlertTextLabel(
              transactionId,
            ),
          ],
        ),
        CustomSizedBox(
          height: DBL.ten.val,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AlertTextLabel(AppString.amount.val, isCustomWidth: true),
            AlertTextLabel(AppString.colon.val, isRequiredSpace: true),
            StatusText(amount,status: status),
          ],
        ),
        CustomSizedBox(
          height: DBL.ten.val,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AlertTextLabel(AppString.dateTime.val, isCustomWidth: true),
            AlertTextLabel(AppString.colon.val, isRequiredSpace: true),
            AlertTextLabel(
              dateTime,
            ),
          ],
        ),
        CustomSizedBox(
          height: DBL.ten.val,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AlertTextLabel(AppString.creditTo.val, isCustomWidth: true),
            AlertTextLabel(AppString.colon.val, isRequiredSpace: true),
            AlertTextLabel(
              creditTo,
            ),
          ],
        ),
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
        Divider(color: AppColor.dividerColor.val,),
        CustomSizedBox(
          height: DBL.ten.val,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AlertTextLabel(AppString.serviceId.val, isCustomWidth: true),
            AlertTextLabel(AppString.colon.val, isRequiredSpace: true),
            AlertTextLabel(
              serviceId,
            ),
          ],
        ),
        CustomSizedBox(
          height: DBL.ten.val,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AlertTextLabel(AppString.paidFor.val, isCustomWidth: true),
            AlertTextLabel(AppString.colon.val, isRequiredSpace: true),
            AlertTextLabel(
              paidFor,
            ),
          ],
        ),
        CustomSizedBox(
          height: DBL.ten.val,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AlertTextLabel(AppString.location.val, isCustomWidth: true),
            AlertTextLabel(AppString.colon.val, isRequiredSpace: true),
            AlertTextLabel(
              location,
            ),
          ],
        ),
      ],
    ));
  }
}
