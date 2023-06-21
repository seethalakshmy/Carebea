import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../../core/enum.dart';
import '../../core/text_styles.dart';
import 'custom_sizedbox.dart';
import 'custom_text.dart';

class TableSwitchBox extends StatelessWidget {
  const TableSwitchBox({Key? key, required this.value, required this.onToggle})
      : super(key: key);
  final bool value;
  final Function onToggle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildSwitch(),
        CustomSizedBox(
          width: DBL.eight.val,
        ),
        _buildText()
      ],
    );
  }

  CustomText _buildText() {
    return CustomText(
      value ? AppString.active.val : AppString.inActive.val,
      style: _buildStyle(),
    );
  }

  _buildStyle() {
   return TS().gRoboto(
        color: value ? AppColor.green.val : AppColor.inactive.val,
        fontSize: FS.font12.val,
        fontWeight: FW.w600.val);
  }

  FlutterSwitch _buildSwitch() {
    return FlutterSwitch(
      width: DBL.forty.val,
      height: DBL.twentyFour.val,
      valueFontSize: DBL.zero.val,
      toggleSize: DBL.fourteen.val,
      value: value,
      activeColor: AppColor.green.val,
      inactiveColor: AppColor.lightGrey.val,
      borderRadius: DBL.thirty.val,
      onToggle: (val) {
        onToggle();
      },
    );
  }
}
