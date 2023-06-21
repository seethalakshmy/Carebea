import 'package:flutter/material.dart';

import '../../core/enum.dart';
import 'alert_text_label.dart';

class RowColonCombo extends StatelessWidget {
  const RowColonCombo({
    super.key,
    required this.label,
    required this.value,
    this.fontSize,
    this.color,
    this.width,
    this.fontWeight,
  });

  final String value;
  final String label;
  final Color? color;
  final double? fontSize;
  final double? width;
  final FontWeight? fontWeight;
  RowColonCombo.twoHundred({
    super.key,
    required this.label,
    required this.value,
    this.color,
    this.fontSize,
    this.fontWeight,
  }) : width = DBL.twoHundred.val;

  RowColonCombo.threeEighty({
    super.key,
    required this.value,
    required this.label,
    this.color,
    this.fontSize,
    this.fontWeight,
  }) : width = DBL.threeEighty.val;

  RowColonCombo.threeSeventy({
    super.key,
    required this.value,
    required this.label,
    this.color,
    this.fontSize,
    this.fontWeight,
  }) : width = DBL.threeSeventeen.val;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AlertTextLabel(
          label,
          isCustomWidth: true,
          width: width,
          color: color,
          fontWeight: fontWeight,
          fontSize: fontSize,
        ),
        AlertTextLabel(
          AppString.colon.val,
          isRequiredSpace: true,
          color: color,
          fontWeight: fontWeight,
          fontSize: fontSize,
        ),
        AlertTextLabel(
          value,
          color: color,
          fontWeight: fontWeight,
          fontSize: fontSize,
        ),
      ],
    );
  }
}
