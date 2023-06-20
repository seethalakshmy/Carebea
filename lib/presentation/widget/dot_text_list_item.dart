import 'package:admin_580_tech/presentation/widget/custom_container.dart';
import 'package:admin_580_tech/presentation/widget/custom_padding.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:flutter/material.dart';

import '../../core/enum.dart';
import '../../core/text_styles.dart';
import 'custom_text.dart';

class DotTextListItem extends StatelessWidget {
  const DotTextListItem({
    Key? key,
    required this.value,
    this.verticalPadding,
    required this.color,
    this.isForHorizontalView = false,
  }) : super(key: key);
  final String value;
  final double? verticalPadding;
  final Color color;

  /// Expanded Text widget is not work with horizonatl listview
  final bool isForHorizontalView;

  @override
  Widget build(BuildContext context) {
    return CustomPadding.symmetric(
      vertical: verticalPadding ?? DBL.seven.val,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomContainer.decoration(
            height: DBL.ten.val,
            width: DBL.ten.val,
            decoration: BoxDecoration(color: color, shape: BoxShape.circle),
          ),
          CustomSizedBox(
            width: DBL.ten.val,
          ),
          isForHorizontalView
              ? _buildText()
              : Flexible(
                  fit: FlexFit.loose,
                  child: _buildText(),
                ),
          CustomSizedBox(
            width: DBL.twenty.val,
          ),
          CustomContainer(
            height: DBL.twenty.val,
            width: DBL.one.val,
            color: AppColor.dividerColor3.val,
          ),
          CustomSizedBox(
            width: DBL.fifteen.val,
          ),
        ],
      ),
    );
  }

  CustomText _buildText() {
    return CustomText(value,
        style: TS().gRoboto(
            color: AppColor.label4.val,
            fontWeight: FW.w400.val,
            fontSize: FS.font13.val));
  }
}
