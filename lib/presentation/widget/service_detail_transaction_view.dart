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

class ServiceDetailTransactionView extends StatelessWidget {
  const ServiceDetailTransactionView(
      {Key? key, required this.serviceFee, required this.transactionId})
      : super(key: key);
  final String serviceFee;
  final String transactionId;

  @override
  Widget build(BuildContext context) {
    return RectangleBorder(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RowColonCombo(label: AppString.serviceFee.val, value: serviceFee),
        CustomSizedBox(
          height: DBL.ten.val,
        ),
        RowColonCombo(label: AppString.transactionId.val, value: transactionId)
      ],
    ));
  }
}
