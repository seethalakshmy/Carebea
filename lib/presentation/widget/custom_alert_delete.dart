import 'package:flutter/material.dart';

import '../../core/enum.dart';
import '../../core/text_styles.dart';
import 'custom_alert_dialog_widget.dart';
import 'custom_button.dart';
import 'custom_sizedbox.dart';
import 'custom_text.dart';

class CustomAlertDelete extends StatelessWidget {
  const CustomAlertDelete(
      {super.key, required this.label, required this.onTapYes});
  final String label;
  final Function onTapYes;
  @override
  Widget build(BuildContext context) {
    return CustomAlertDialogWidget(
      heading: AppString.delete.val,
      height: 280,
      width: 500,
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
                height: DBL.hundred.val,
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
          )),
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
      onPressed: () {
        Navigator.pop(context);
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
}
