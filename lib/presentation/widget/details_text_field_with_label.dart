import 'package:admin_580_tech/presentation/widget/custom_container.dart';
import 'package:admin_580_tech/presentation/widget/custom_padding.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../core/enum.dart';
import '../../../core/text_styles.dart';
import 'custom_text.dart';
import 'custom_text_field.dart';

class DetailsTextFieldWithLabel extends StatelessWidget {
  const DetailsTextFieldWithLabel({
    Key? key,
    required this.controller,
    required this.textInputAction,
    required this.textInputType,
    required this.focusNode,
    required this.validator,
    required this.labelName,
    required this.suffixIcon,
    this.isMandatory = false,
    this.maxLines,
    this.width,
    this.textAlignVertical,
    this.inputFormatter,
    this.height,
    this.isIgnore = false,
  }) : super(key: key);
  final String labelName;
  final Widget suffixIcon;
  final FocusNode focusNode;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final TextEditingController controller;
  final FormFieldValidator<String> validator;
  final bool isMandatory;
  final double? width;
  final double? height;
  final int? maxLines;
  final TextAlignVertical? textAlignVertical;
  final List<TextInputFormatter>? inputFormatter;
  final bool isIgnore;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomText(labelName,
                style: TS().gRoboto(
                    fontWeight: FW.w400.val,
                    color: AppColor.label8.val,
                    fontSize: FS.font16.val)),
            isMandatory
                ? CustomPadding.only(
                    left: DBL.five.val,
                    child: CustomText(
                      AppString.mandatorySymbol.val,
                      style: TS().gRoboto(
                          color: AppColor.red.val, fontSize: FS.font15.val),
                    ),
                  )
                : const CustomContainer()
          ],
        ),
        CustomSizedBox(height: DBL.ten.val),
        CTextField(
          isIgnore: isIgnore,
          textAlignVertical: textAlignVertical,
          suffixIcon: suffixIcon,
          focusNode: focusNode,
          width: width ?? DBL.twoEighty.val,
          inputFormatter: inputFormatter ?? [],
          maxLines: maxLines,
          onChanged: (String value) {},
          keyBoardType: textInputType,
          textInputAction: textInputAction,
          controller: controller,
          validator: validator,
        )
      ],
    );
  }
}
