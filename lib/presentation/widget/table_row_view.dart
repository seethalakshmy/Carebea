import 'package:flutter/material.dart';

import '../../core/enum.dart';
import '../../core/responsive.dart';
import '../../core/text_styles.dart';
import 'custom_text.dart';

class TableRowView extends StatelessWidget {
  const TableRowView({Key? key, required this.text, this.maxLines})
      : super(key: key);
  final String text;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return _buildText(context);
  }

  _buildText(BuildContext context) {
    return Tooltip(
      message: text,
      child: CustomText(
        text,
        overflow: TextOverflow.ellipsis,
        maxLines: maxLines,
        softWrap: true,
        style: _buildStyle(context),
        textAlign: TextAlign.start,
      ),
    );
  }

  _buildStyle(BuildContext context) {
    return TS().gRoboto(
        fontSize: Responsive.isWeb(context)
            ? DBL.thirteenPointFive.val
            : DBL.twelve.val,
        fontWeight: FW.w400.val,
        color: AppColor.rowColor.val);
  }
}
