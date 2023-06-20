import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/core/responsive.dart';
import 'package:admin_580_tech/presentation/widget/custom_container.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:flutter/material.dart';

import '../../../core/text_styles.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({
    required this.title,
    this.color,
    this.fontSize,
    this.topPadding,
    this.sidePadding,
    super.key,
  });

  final String title;
  final Color? color;
  final double? fontSize;
  final double? topPadding;
  final double? sidePadding;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      width: double.infinity,
      padding: EdgeInsets.only(
        left: getLeftPadding(context, padding: sidePadding ?? DBL.twenty.val),
        right: getLeftPadding(context, padding: sidePadding ?? DBL.twenty.val),
        top: topPadding ?? DBL.twentyFour.val,
      ),
      child: buildCustomText(context),
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
        color: color ?? AppColor.black.val,
        fontWeight: FW.w500.val,
        fontSize: getFontSize(context, fontSize: fontSize ?? FS.font21.val));
  }

  double getFontSize(BuildContext context, {required double fontSize}) {
    return Responsive.isLg(context) ? fontSize - 3 : fontSize;
  }

  double getLeftPadding(BuildContext context, {required double padding}) {
    return Responsive.isWeb(context)
        ? padding
        : padding != 0
            ? padding - 2
            : padding;
  }
}
