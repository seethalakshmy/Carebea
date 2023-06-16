import 'package:flutter/material.dart';

import '../../core/enum.dart';
import '../../core/text_styles.dart';
import 'custom_sizedbox.dart';
import 'custom_svg.dart';
import 'custom_text.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildCustomSvg(),
        CustomSizedBox(
          width: DBL.eighteen.val,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              "John George",
              style: TS().gRoboto(
                color: AppColor.black2.val,
                fontWeight: FW.w600.val,
                fontSize: FS.font16.val,
              ),
            ),
            CustomSizedBox(
              height: DBL.three.val,
            ),
            CustomText(
              AppString.client.val,
              style: TS().gRoboto(
                color: AppColor.lightGrey2.val,
                fontWeight: FW.w600.val,
                fontSize: FS.font14.val,
              ),
            ),
          ],
        )
      ],
    );
  }

  CustomSvg _buildCustomSvg() {
    return CustomSvg(
        path: IMG.profilePlaceHolder.val,
        width: DBL.oneFifty.val,
        height: DBL.oneFifty.val);
  }
}
