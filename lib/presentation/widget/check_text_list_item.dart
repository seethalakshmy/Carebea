import 'package:admin_580_tech/presentation/widget/custom_padding.dart';
import 'package:flutter/material.dart';

import '../../core/enum.dart';
import '../../core/text_styles.dart';
import 'custom_svg.dart';
import 'custom_text.dart';

class CheckTextListItem extends StatelessWidget {
  const CheckTextListItem({Key? key, required this.value, this.verticalPadding})
      : super(key: key);
  final String value;
  final double? verticalPadding;

  @override
  Widget build(BuildContext context) {
    return CustomPadding.symmetric(
      vertical: verticalPadding ?? DBL.seven.val,
      child: Row(
        children: [
          CustomSvg(path: IMG.tick.val),
          SizedBox(
            width: DBL.fifteen.val,
          ),
          Flexible(
            fit: FlexFit.loose,
            child: CustomText(value,
                style: TS().gRoboto(
                    color: AppColor.matBlack3.val, fontWeight: FW.w400.val)),
          ),
        ],
      ),
    );
  }
}
