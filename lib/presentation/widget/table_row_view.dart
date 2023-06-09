import 'package:flutter/material.dart';

import '../../core/enum.dart';
import '../../core/responsive.dart';
import '../../core/text_styles.dart';
import 'custom_text.dart';

class TableRowView extends StatelessWidget {
  const TableRowView({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return  CustomText3(
      name,
      softWrap: true,
      style: TS().gRoboto(
          fontSize: Responsive.isWeb(context)
              ? DBL.thirteenPointFive.val
              : DBL.twelve.val,
          fontWeight: FW.w400.val,
          color: AppColor.rowColor.val),
      textAlign: TextAlign.start,
    );
  }
}