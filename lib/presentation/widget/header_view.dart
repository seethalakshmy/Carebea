import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/core/properties.dart';
import 'package:admin_580_tech/core/responsive.dart';
import 'package:admin_580_tech/presentation/widget/custom_card.dart';
import 'package:admin_580_tech/presentation/widget/custom_container.dart';
import 'package:admin_580_tech/presentation/widget/custom_padding.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:flutter/material.dart';

import '../../../core/text_styles.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({
    required this.title,
    super.key,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return CustomPadding.only(
      top: DBL.twentyFour.val,
      child: CustomContainer(
        width: double.infinity,
        padding: EdgeInsets.only(
            left: Responsive.isWeb(context) ? DBL.twenty.val : DBL.eight.val),
        child: buildCustomText(context),
      ),
    );
  }

  CustomText buildCustomText(BuildContext context) {
    return CustomText(
        title,
        style: buildGRoboto(context),
      );
  }

  buildGRoboto(BuildContext context) {
    return TS().gRoboto(
          color: AppColor.black.val,
          fontWeight: FW.w500.val,
          fontSize:
              Responsive.isWeb(context) ? FS.font21.val : FS.font18.val);
  }
}
