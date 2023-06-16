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
        isView ? _onView(context) : CustomSizedBox.shrink(),
        CustomSizedBox(
          width: isView ? DBL.twentyThree.val : DBL.zero.val,
        ),
        isEdit ? _onEdit(context) : CustomSizedBox.shrink(),
      ],
    );
  }

  InkWell _onEdit(BuildContext context) {
    return InkWell(
        onTap: () {
          onEditTap!();
        },
        child: _buildCustomSvg(context, IMG.edit.val));
  }

  CustomSvg _buildCustomSvg(BuildContext context, String path) {
    return CustomSvg(
      path: path,
      height: Responsive.isWeb(context) ? DBL.fifteen.val : DBL.twelve.val,
      width: Responsive.isWeb(context) ? DBL.fifteen.val : DBL.twelve.val,
    );
  }

  InkWell _onView(BuildContext context) {
    return InkWell(
        onTap: () {
          onViewTap!();
        },
        child: _buildCustomSvg(context, IMG.eye.val));
  }
}
