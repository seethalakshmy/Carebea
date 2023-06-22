import 'package:flutter/material.dart';

import '../../../../../core/enum.dart';
import '../../../../../core/text_styles.dart';
import '../../../../widget/custom_sizedbox.dart';
import '../../../../widget/custom_text.dart';

class YesNoRadioButtonWidget extends StatelessWidget {
  const YesNoRadioButtonWidget({
    Key? key,
    required this.groupValue,
    required this.yesLabel,
    required this.noLabel,
    required this.onChanged,
  }) : super(key: key);
  final int groupValue;
  final String yesLabel;
  final String noLabel;
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
          yesLabel,
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
          noLabel,
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
