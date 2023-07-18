import 'package:flutter/material.dart';

import '../../../core/enum.dart';
import '../../../core/text_styles.dart';
import '../../widget/custom_sizedbox.dart';
import '../../widget/custom_text.dart';

class CustomCheckLabel extends StatelessWidget {
  const CustomCheckLabel({
    super.key,
    required this.label,
    required this.value,
    required this.onToggle,
    this.isIgnoring = false,
  });

  final String label;
  final bool value;
  final Function(bool value) onToggle;
  final bool isIgnoring;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: isIgnoring,
      child: Row(
        children: [
          Checkbox(
              focusColor: AppColor.transparent.val,
              hoverColor: AppColor.transparent.val,
              value: value,
              onChanged: (value) {
                onToggle(value!);
              }),
          CustomSizedBox(
            width: DBL.three.val,
          ),
          CustomText(
            label,
            style: TS().gRoboto(
                color: AppColor.label8.val,
                fontSize: FS.font12.val,
                fontWeight: FW.w400.val),
          ),
        ],
      ),
    );
  }
}
