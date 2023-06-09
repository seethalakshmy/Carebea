import 'package:admin_580_tech/presentation/widget/custom_padding.dart';
import 'package:flutter/material.dart';

import '../../core/enum.dart';
import '../../core/text_styles.dart';
import 'custom_container.dart';
import 'custom_text.dart';

class TableStatusBox extends StatelessWidget {
  const TableStatusBox({Key? key, required this.status}) : super(key: key);
  final int status;

  @override
  Widget build(BuildContext context) {
    return CustomContainer.decoration(
      height: DBL.thirty.val,
      width: DBL.eighty.val,
      decoration: BoxDecoration(
          color: status == 1
              ? AppColor.darkGreen.val
              : status == 2
              ? AppColor.red2.val
              : status == 3
              ? AppColor.blue.val
              : AppColor.amber2.val,
          borderRadius: BorderRadius.circular(DBL.five.val)
      ),
      child: Center(
        child: CustomText3(
          status == 1
              ? AppString.completed.val
              : status == 2
              ? AppString.canceled.val
              : status == 3
              ? AppString.onGoing.val
              : AppString.upcoming.val,
          style: TS().gRoboto(
              fontWeight: FW.w500.val,
              fontSize: FS.font12.val,
              color: AppColor.white.val),
        ),
      ),
    );
  }
}
