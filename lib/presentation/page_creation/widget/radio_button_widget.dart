import 'package:flutter/material.dart';

import '../../../../../core/enum.dart';
import '../../../../../core/text_styles.dart';
import '../../widget/custom_sizedbox.dart';
import '../../widget/custom_text.dart';

class RadioButtonWidget extends StatelessWidget {
  const RadioButtonWidget({
    Key? key,
    required this.groupValue,
    required this.firstLabel,
    required this.secondLabel,
    required this.thirdLabel,
    required this.onChanged,
  }) : super(key: key);
  final int groupValue;
  final String firstLabel;
  final String secondLabel;
  final String thirdLabel;
  final Function(int?) onChanged;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio<int>(
          value: 0,
          groupValue: groupValue,
          onChanged: onChanged,
        ),
        CustomText(
          firstLabel,
          style: TS().gRoboto(
            fontSize: FS.font13.val,
            fontWeight: FW.w400.val,
            color: AppColor.matBlack2.val,
          ),
        ),
        CustomSizedBox(width: DBL.twelve.val),
        Radio<int>(
          value: 1,
          groupValue: groupValue,
          onChanged: onChanged,
        ),
        CustomText(
          secondLabel,
          style: TS().gRoboto(
            fontSize: FS.font13.val,
            fontWeight: FW.w400.val,
            color: AppColor.matBlack2.val,
          ),
        ),
        Radio<int>(
          value: 2,
          groupValue: groupValue,
          onChanged: onChanged,
        ),
        CustomText(
          thirdLabel,
          style: TS().gRoboto(
            fontSize: FS.font13.val,
            fontWeight: FW.w400.val,
            color: AppColor.matBlack2.val,
          ),
        ),
      ],
    );
  }
}
