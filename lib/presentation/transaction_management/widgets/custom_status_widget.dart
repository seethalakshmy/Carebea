import 'package:admin_580_tech/core/responsive.dart';
import 'package:flutter/cupertino.dart';

import '../../../core/enum.dart';
import '../../../core/properties.dart';
import '../../../core/text_styles.dart';
import '../../widget/custom_container.dart';
import '../../widget/custom_text.dart';

class CustomStatusWidget extends StatelessWidget {
  final bool isCompleted;
  final bool? isFromDetails;
  final String statusName;

  const CustomStatusWidget(
      {Key? key,
      required this.isCompleted,
      this.isFromDetails,
      required this.statusName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomContainer.decoration(
          alignment: Alignment.center,
          width: isFromDetails != null && isFromDetails! ? 80 : 110,
          height: DBL.thirty.val,
          padding: EdgeInsets.symmetric(
              vertical: DBL.five.val, horizontal: DBL.five.val),
          decoration: BoxDecoration(
              color: isCompleted ? AppColor.darkGreen.val : AppColor.red.val,
              borderRadius: PR().circularRadius(DBL.eight.val)),
          child: CustomText(
            textAlign: TextAlign.center,
            statusName,
            style: TS().gRoboto(
              fontWeight: FW.w600.val,
              fontSize:
                  Responsive.isWeb(context) ? FS.font12.val : FS.font10.val,
              color: AppColor.white.val,
            ),
          ),
        ),
        !isCompleted
            ? CustomText(
                "Refund under process",
                style: TextStyle(
                    fontSize: Responsive.isWeb(context)
                        ? FS.font07.val
                        : FS.font065.val,
                    fontWeight: FontWeight.w400,
                    color: AppColor.label.val),
              )
            : Container()
      ],
    );
  }
}
