import 'package:flutter/material.dart';

import '../../core/enum.dart';
import '../../core/text_styles.dart';
import 'custom_alert_dialog_widget.dart';
import 'custom_button.dart';
import 'custom_sizedbox.dart';
import 'custom_text.dart';
import 'custom_text_field.dart';

class CommonAlertWidget extends StatelessWidget {
  const CommonAlertWidget(
      {super.key,
      required this.label,
      required this.onTapYes,
      required this.heading,
      this.isTextField = false,
      this.isLoading = false,
      this.controller,
      this.validator,
      this.height,
      this.width});

  final String heading;
  final String label;
  final Function onTapYes;
  final bool isTextField;
  final bool isLoading;
  final double? height;
  final double? width;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return CustomAlertDialogWidget(
      heading: heading,
      height: height ?? MediaQuery.of(context).size.height * .3,
      width: width ?? MediaQuery.of(context).size.width * .5,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: DBL.twentyFive.val,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomSizedBox(
              height: DBL.fifteen.val,
            ),
            CustomText(
              label,
              style: TS().gRoboto(
                  fontSize: FS.font17.val,
                  color: AppColor.black.val,
                  fontWeight: FW.w400.val),
            ),
            CustomSizedBox(
              height: isTextField
                  ? DBL.twenty.val
                  : height == 150
                      ? 20
                      : DBL.zero.val,
            ),
            isTextField ? reasonField() : CustomSizedBox.shrink(),
            CustomSizedBox(
              height: isTextField
                  ? DBL.thirty.val
                  : height == 150
                      ? 0
                      : DBL.hundred.val,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                _noButton(context),
                CustomSizedBox(
                  width: DBL.ten.val,
                ),
                _yesButton(context),
              ],
            )
          ],
        ),
      ),
    );
  }

  CustomButton _noButton(BuildContext context) {
    return CustomButton(
      text: AppString.no.val,
      onPressed: () {
        Navigator.pop(context);
      },
      color: AppColor.white.val,
      borderRadius: DBL.five.val,
      borderColor: AppColor.primaryColor.val,
      hoverColor: AppColor.offWhite.val.withOpacity(0.2),
      textStyle: TS().gRoboto(
          fontWeight: FW.w500.val,
          color: AppColor.primaryColor.val,
          fontSize: FS.font16.val),
      padding: EdgeInsets.symmetric(
          horizontal: DBL.thirtyFive.val, vertical: DBL.eighteen.val),
    );
  }

  CustomButton _yesButton(BuildContext context) {
    return CustomButton(
      text: AppString.yes.val,
      isLoading: isLoading,
      onPressed: () {
        onTapYes();
      },
      borderRadius: DBL.five.val,
      textStyle: TS().gRoboto(
          fontWeight: FW.w500.val,
          color: AppColor.white.val,
          fontSize: FS.font16.val),
      padding: EdgeInsets.symmetric(
          horizontal: DBL.thirtyFive.val, vertical: DBL.eighteen.val),
    );
  }

  reasonField() {
    return CTextField(
      width: 350,
      controller: controller,
      borderColor: AppColor.lightBlue3.val,
      hintText: AppString.enterTheReason.val,
      maxLines: INT.two.val,
      hintStyle: TS().gRoboto(
          fontSize: FS.font15.val,
          fontWeight: FW.w400.val,
          color: AppColor.black.val),
      fillColor: AppColor.lightBlue3.val,
      validator: validator,
    );
  }
}
