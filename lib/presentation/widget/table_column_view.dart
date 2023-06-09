import 'package:flutter/material.dart';

import '../../core/enum.dart';
import '../../core/responsive.dart';
import '../../core/text_styles.dart';
import 'custom_text.dart';

class TableColumnView extends StatelessWidget {
  const TableColumnView({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return CustomText3(
      name,
      softWrap: true,
      style: TS().gRoboto(
          fontSize:
              Responsive.isWeb(context) ? DBL.fourteen.val : DBL.twelve.val,
          fontWeight: FW.bold.val,
          color: AppColor.columColor.val),
      textAlign: TextAlign.center,
    );
  }
}
