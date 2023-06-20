import 'package:admin_580_tech/core/text_styles.dart';
import 'package:admin_580_tech/presentation/widget/custom_container.dart';
import 'package:admin_580_tech/presentation/widget/custom_padding.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:flutter/material.dart';

import '../../core/enum.dart';

class PetItem extends StatelessWidget {
  const PetItem({Key? key, required this.name, required this.inOutStatus})
      : super(key: key);
  final String name;
  final int inOutStatus;

  @override
  Widget build(BuildContext context) {
    return CustomPadding.symmetric(
      horizontal: DBL.seven.val,
      child: CustomContainer.decoration(
          padding: EdgeInsets.symmetric(
              horizontal: DBL.ten.val, vertical: DBL.eight.val),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(DBL.five.val),
              color: inOutStatus == InOut.indoor.val
                  ? AppColor.indoor.val
                  : AppColor.outdoor.val),
          child: Center(
            child: CustomText(
              "$name(${inOutStatus == InOut.indoor.val ? AppString.inDoor.val : AppString.outDoor.val})",
              style: TS().gRoboto(
                  fontWeight: FW.w400.val,
                  fontSize: FS.font12.val,
                  color: AppColor.black3.val),
            ),
          )),
    );
  }
}
