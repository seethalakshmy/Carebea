import 'package:flutter/material.dart';

import '../../../core/enum.dart';
import '../../../core/text_styles.dart';
import '../../widget/custom_text.dart';

class DateView extends StatelessWidget {
  const DateView({
    super.key,
    required this.color,
    required this.value,
    this.textColor,
  });
  final Color color;
  final String value;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: DBL.thirty.val,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      child: Center(
        child: CustomText(
          value,
          style: TS().gRoboto(
              color: textColor ?? AppColor.white.val, fontWeight: FW.w400.val),
        ),
      ),
    );
  }
}
