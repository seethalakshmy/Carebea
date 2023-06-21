import 'package:flutter/material.dart';

import '../../core/enum.dart';
import '../../core/responsive.dart';
import '../../core/text_styles.dart';
import 'custom_text.dart';

class TableColumnView extends StatelessWidget {
  const TableColumnView({Key? key, required this.text, this.isUnderTab = false})
      : super(key: key);
  final String text;
  final bool isUnderTab;

  @override
  Widget build(BuildContext context) {
    return _buildText(context);
  }

  CustomText _buildText(BuildContext context) {
    return CustomText(
      text,
      softWrap: true,
      style: _buildStyle(context),
      textAlign: TextAlign.center,
    );
  }

  _buildStyle(BuildContext context) {
    return TS().gRoboto(
        fontSize: getFontSize(context),
        fontWeight: isUnderTab ? FW.w600.val : FW.bold.val,
        color: AppColor.columColor.val);
  }

  double getFontSize(BuildContext context) {
    if (isUnderTab) {
      return Responsive.isWeb(context) ? FS.font13.val : FS.font12.val;
    } else {
      return Responsive.isWeb(context) ? FS.font14.val : FS.font12.val;
    }
  }
}
