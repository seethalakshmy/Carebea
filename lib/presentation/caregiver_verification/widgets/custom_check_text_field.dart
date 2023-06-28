import 'package:flutter/material.dart';

import '../../../core/enum.dart';
import '../../../core/text_styles.dart';
import '../../widget/custom_sizedbox.dart';
import '../../widget/custom_svg.dart';
import '../../widget/custom_text.dart';
import '../../widget/custom_text_field.dart';

class CustomCheckTextField extends StatelessWidget {
  const CustomCheckTextField({
    Key? key,
    required this.isTapped,
    required this.label,
    required this.onToggle,
    required this.focusNode,
    required this.textEditingController,
    required this.validator,
  }) : super(key: key);
  final bool isTapped;
  final String label;
  final Function onToggle;
  final TextEditingController textEditingController;
  final FocusNode focusNode;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            InkWell(
              onTap: () {
                onToggle();
              },
              child: CustomSvg(
                path: isTapped ? IMG.checkBox.val : IMG.unCheckBox.val,
                height: DBL.twenty.val,
                width: DBL.twenty.val,
              ),
            ),
            CustomSizedBox(
              width: DBL.fifteen.val,
            ),
            CustomText(
              label,
              style: TS().gRoboto(
                  color: AppColor.label7.val,
                  fontWeight: FW.w500.val,
                  fontSize: FS.font15.val),
            )
          ],
        ),
        CustomSizedBox(
          height: DBL.fifteen.val,
        ),
        _reasonField(context)
      ],
    );
  }

  _reasonField(BuildContext context) {
    return isTapped
        ? CTextField(
            width: isLg(context) ? null : 620,
            focusNode: focusNode,
            controller: textEditingController,
            borderColor: AppColor.lightBlue3.val,
            hintText: AppString.enterTheReason.val,
            maxLines: INT.three.val,
            hintStyle: TS().gRoboto(
                fontSize: FS.font15.val,
                fontWeight: FW.w400.val,
                color: AppColor.black.val),
            fillColor: AppColor.lightBlue3.val,
            validator: validator,
          )
        : CustomSizedBox.shrink();
  }

  bool isLg(BuildContext context) => MediaQuery.of(context).size.width <= 635;
}
