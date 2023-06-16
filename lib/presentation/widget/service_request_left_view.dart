import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/rectangle_border.dart';
import 'package:admin_580_tech/presentation/widget/row_combo.dart';
import 'package:flutter/material.dart';


class ServiceRequestLeftView extends StatelessWidget {
  const ServiceRequestLeftView(
      {Key? key,
      required this.serviceRequestID,
      required this.requestedStartDateTime,
      required this.requestedEndDateTime,
      required this.isAdvanceDirective,
      required this.isHavePets,
      required this.isSmoking})
      : super(key: key);
  final String serviceRequestID;
  final String requestedStartDateTime;
  final String requestedEndDateTime;
  final String isHavePets;
  final String isSmoking;
  final String isAdvanceDirective;

  @override
  Widget build(BuildContext context) {
    return RectangleBorder(
      child: _buildRowCombo(),
    );
  }

  Column _buildRowCombo() {
    return Column(
      children: [
        RowColonCombo(
            label: AppString.serviceRequestID.val, value: serviceRequestID),
        CustomSizedBox(
          height: DBL.ten.val,
        ),
        RowColonCombo(
            label: AppString.requestedStartDateTime.val,
            value: requestedStartDateTime),
        CustomSizedBox(
          height: DBL.ten.val,
        ),
        RowColonCombo(
            label: AppString.requestedEndDateTime.val,
            value: requestedEndDateTime),
        CustomSizedBox(
          height: DBL.ten.val,
        ),
        RowColonCombo(
            label: AppString.isSmokerInHouseHold.val, value: isSmoking),
        CustomSizedBox(
          height: DBL.ten.val,
        ),
        RowColonCombo(
            label: AppString.isAdvanceDirective.val, value: isAdvanceDirective),
      ],
    );
  }
}

