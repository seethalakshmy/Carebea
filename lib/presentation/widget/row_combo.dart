import 'package:flutter/material.dart';

import '../../core/enum.dart';
import 'alert_text_label.dart';

class RowColonCombo extends StatelessWidget {
  const RowColonCombo(
      {super.key,
      required this.label,
      required this.value,
      this.isNotChangeWidth = true});

  final String value;
  final String label;
  final bool isNotChangeWidth;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AlertTextLabel(
          label,
          isCustomWidth: true,
          isNotChangeWidth: isNotChangeWidth,
        ),
        AlertTextLabel(
          AppString.colon.val,
          isRequiredSpace: true,
        ),
        AlertTextLabel(
          value,
        ),
      ],
    );
  }
}
