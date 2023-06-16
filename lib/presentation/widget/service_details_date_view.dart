import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/rectangle_border.dart';
import 'package:admin_580_tech/presentation/widget/row_combo.dart';
import 'package:flutter/material.dart';

class ServiceDetailDateView extends StatelessWidget {
  const ServiceDetailDateView(
      {Key? key,
      required this.startDateTime,
      required this.endDateTime,
      required this.location})
      : super(key: key);
  final String startDateTime;
  final String endDateTime;
  final String location;

  @override
  Widget build(BuildContext context) {
    return RectangleBorder(
      child: Column(
        children: [
          RowColonCombo(
              label: AppString.startDateTime.val, value: startDateTime),
          CustomSizedBox(
            height: DBL.ten.val,
          ),
          RowColonCombo(label: AppString.endDateTime.val, value: endDateTime),
          CustomSizedBox(
            height: DBL.ten.val,
          ),
          RowColonCombo(label: AppString.location.val, value: location),
        ],
      ),
    );
  }
}
