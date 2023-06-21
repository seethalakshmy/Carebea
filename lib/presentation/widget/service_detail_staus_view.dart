import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/core/text_styles.dart';
import 'package:admin_580_tech/presentation/widget/custom_container.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:admin_580_tech/presentation/widget/rectangle_border.dart';
import 'package:admin_580_tech/presentation/widget/row_combo.dart';
import 'package:admin_580_tech/presentation/widget/table_status_box.dart';
import 'package:flutter/material.dart';

import 'alert_text_label.dart';
import 'custom_svg.dart';

class ServiceDetailStatusView extends StatelessWidget {
  const ServiceDetailStatusView(
      {Key? key,
      required this.status,
      required this.serviceId,
      this.cancelReason,
      this.bookingLeft = ""})
      : super(key: key);
  final int status;
  final String serviceId;
  final String? cancelReason;
  final String bookingLeft;

  @override
  Widget build(BuildContext context) {
    return RectangleBorder(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _statusView(),
        CustomSizedBox(
          height: DBL.ten.val,
        ),
        RowColonCombo.twoHundred(
            label: AppString.serviceId.val, value: serviceId),
        CustomSizedBox(
          height: status == Status.canceled.val &&
                  cancelReason != null &&
                  cancelReason!.isNotEmpty
              ? DBL.twelve.val
              : DBL.zero.val,
        ),
        if (status == Status.canceled.val &&
            cancelReason != null &&
            cancelReason!.isNotEmpty)
          _cancelReasonView(),
      ],
    ));
  }

  CustomContainer _cancelReasonView() {
    return CustomContainer.decoration(
      padding:
          EdgeInsets.symmetric(horizontal: DBL.ten.val, vertical: DBL.ten.val),
      decoration: _boxDecoration(),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        CustomSvg(
          path: IMG.warning.val,
          height: DBL.fifteen.val,
          width: DBL.fifteen.val,
        ),
        CustomSizedBox(
          width: DBL.five.val,
        ),
        CustomText(
          AppString.reasonForCancellation.val,
          style: _buildStyle(),
        ),
        AlertTextLabel(
          cancelReason!,
        ),
      ]),
    );
  }

  _buildStyle() {
    return TS().gRoboto(fontWeight: FW.w500.val, color: AppColor.red.val);
  }

  BoxDecoration _boxDecoration() {
    return BoxDecoration(
        color: AppColor.red3.val,
        borderRadius: BorderRadius.circular(DBL.five.val));
  }

  Row _statusView() {
    return Row(
      children: [
        AlertTextLabel(AppString.status.val,
            isCustomWidth: true, width: DBL.twoHundred.val),
        TableStatusBox(status: status),
        if (status == Status.upcoming.val)
          CustomSizedBox(
            width: DBL.six.val,
          ),
        if (status == Status.upcoming.val)
          AlertTextLabel(
            bookingLeft,
            color: AppColor.red2.val,
          )
      ],
    );
  }
}
