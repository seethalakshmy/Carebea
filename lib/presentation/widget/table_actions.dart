import 'package:flutter/material.dart';

import '../../core/enum.dart';
import '../../core/responsive.dart';
import 'custom_sizedbox.dart';
import 'custom_svg.dart';

class TableActions extends StatelessWidget {
  const TableActions(
      {Key? key,
      this.isView = false,
      this.isEdit = false,
      this.onEditTap,
      this.onViewTap})
      : super(key: key);
  final bool isView;
  final bool isEdit;
  final Function? onViewTap;
  final Function? onEditTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        isView? InkWell(
            onTap : () {
              onViewTap!();
            },
            child: CustomSvg(
              path: IMG.eye.val,
              height:
                  Responsive.isWeb(context) ? DBL.fifteen.val : DBL.twelve.val,
              width:
                  Responsive.isWeb(context) ? DBL.twenty.val : DBL.eighteen.val,
            )):CustomSizedBox.shrink(),
        CustomSizedBox(
          width:isView? DBL.twentyThree.val:DBL.zero.val,
        ),
        isEdit? InkWell(
            onTap: () {
              onEditTap!();
            },
            child: CustomSvg(
              path: IMG.edit.val,
              height:
                  Responsive.isWeb(context) ? DBL.fifteen.val : DBL.twelve.val,
              width:
                  Responsive.isWeb(context) ? DBL.fifteen.val : DBL.twelve.val,
            )):CustomSizedBox.shrink(),
      ],
    );
  }
}
