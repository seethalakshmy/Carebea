import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:flutter/material.dart';

import '../../core/text_styles.dart';

class StatusText extends StatelessWidget {
  const StatusText(this.title, {Key? key, required this.status, this.fontSize})
      : super(key: key);
  final String title;
  final int status;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return CustomText(
      title,
      style: _buildTextStyle(),
    );
  }

  _buildTextStyle() {
    return TS().gRoboto(
      fontWeight: FW.w600.val,
      fontSize: FS.font15.val,
      color: _getColor(),
    );
  }

  Color _getColor() {
    return status == Status.pending.val
        ? AppColor.amber.val
        : status == Status.completed.val
            ? AppColor.darkGreen.val
            : status == Status.canceled.val
                ? AppColor.red2.val
                : status == Status.ongoing.val
                    ? AppColor.blue.val
                    : AppColor.amber2.val;
  }
}
