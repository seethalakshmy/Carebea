import 'package:flutter/material.dart';

import '../../core/enum.dart';
import '../../core/responsive.dart';
import 'custom_sizedbox.dart';
import 'custom_svg.dart';

class TableActions extends StatelessWidget {
  const TableActions({
    Key? key,
    this.isView = false,
    this.isEdit = false,
    this.isDelete = false,
    this.onEditTap,
    this.onViewTap,
    this.onDeleteTap,
  }) : super(key: key);
  final bool isView;
  final bool isEdit;
  final bool isDelete;
  final Function? onViewTap;
  final Function? onEditTap;
  final Function? onDeleteTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        isView ? _onView(context) : CustomSizedBox.shrink(),
        CustomSizedBox(
          width: isView ? DBL.twentyThree.val : DBL.zero.val,
        ),
        isEdit ? _onEdit(context) : CustomSizedBox.shrink(),
        CustomSizedBox(
          width: isView ? DBL.twentyThree.val : DBL.zero.val,
        ),
        isDelete ? _onDelete(context) : CustomSizedBox.shrink(),
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

  InkWell _onDelete(BuildContext context) {
    return InkWell(
        onTap: () {
          onDeleteTap!();
        },
        child: _buildCustomSvg(context, IMG.delete.val));
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
