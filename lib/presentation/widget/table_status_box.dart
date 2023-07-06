import 'package:admin_580_tech/presentation/widget/custom_padding.dart';
import 'package:flutter/material.dart';

import '../../core/enum.dart';
import '../../core/text_styles.dart';
import 'custom_container.dart';
import 'custom_text.dart';

class TableStatusBox extends StatelessWidget {
  const TableStatusBox(
      {Key? key,
      required this.status,
      this.isActiveOrInactive = false,
      this.height})
      : super(key: key);
  final int status;
  final bool isActiveOrInactive;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return CustomContainer.decoration(
      height: height ?? DBL.thirty.val,
      width: DBL.eighty.val,
      decoration: _buildBoxDecoration(),
      child: _buildText(),
    );
  }

  Center _buildText() {
    return Center(
      child: CustomText(
        _getStatusText(),
        style: _getStyle(),
      ),
    );
  }

  BoxDecoration _buildBoxDecoration() {
    return BoxDecoration(
        color: _getColor(), borderRadius: BorderRadius.circular(DBL.five.val));
  }

  _getStyle() {
    return TS().gRoboto(
        fontWeight: FW.w500.val,
        fontSize: FS.font12.val,
        color: status == Status.pending.val
            ? AppColor.amber.val
            : AppColor.white.val);
  }

  Color _getColor() {
    return status == Status.pending.val
        ? AppColor.amber4.val
        : status == Status.completed.val
            ? AppColor.darkGreen.val
            : status == Status.canceled.val
                ? AppColor.red2.val
                : status == Status.ongoing.val
                    ? AppColor.blue.val
                    : AppColor.amber2.val;
  }

  String _getStatusText() {
    return status == Status.pending.val
        ? AppString.pending.val
        : status == Status.completed.val
            ? AppString.completed.val
            : status == Status.canceled.val
                ? AppString.canceled.val
                : status == Status.ongoing.val
                    ? AppString.onGoing.val
                    : AppString.upcoming.val;
  }
}
