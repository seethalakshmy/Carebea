import 'package:flutter/material.dart';

import '../../core/enum.dart';
import '../../core/text_styles.dart';
import 'custom_text.dart';

class AlertTextLabel extends StatelessWidget {
  const AlertTextLabel(this.name,
      {Key? key,
      this.isCustomWidth = false,
      this.isNotChangeWidth = true,
      this.isRequiredSpace = false,
        this.width,
        this.color
      })
      : super(key: key);
  final String name;
  final bool isCustomWidth;
  final bool isNotChangeWidth;
  final bool isRequiredSpace;
  final Color? color;
  final double ?width;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return isCustomWidth
        ? _buildCustomText(context, size)
        : isRequiredSpace
            ? _buildCustomText(context, size)
            : Flexible(
                fit: FlexFit.loose, child: _buildCustomText(context, size));
  }

  CustomText _buildCustomText(BuildContext context, Size size) {
    return CustomText(name,
        width: getWidth(context, size),
        style: TS()
            .gRoboto(color:color?? AppColor.matBlack3.val, fontWeight: FW.w400.val));
  }

  double? getWidth(BuildContext context, Size size) {
    if (isNotChangeWidth) {
      return isCustomWidth
          ? isXs(context)
              ? width??DBL.twoHundred.val
              : isLg1(context)
                  ? DBL.threeEighty.val
                  : isLg(context)
                      ? size.width * .13
                      : DBL.twoHundred.val
          : null;
    } else {
      return isCustomWidth
          ? isXs(context)
              ? DBL.twoHundred.val
              : isLg1(context)
                  ? DBL.threeEighty.val
                  : isLg(context)
                      ? size.width * .2
                      : DBL.threeEighty.val
          : null;
    }
  }

  bool isLg(BuildContext context) => MediaQuery.of(context).size.width <= 1370;

  bool isLg1(BuildContext context) => MediaQuery.of(context).size.width <= 976;

  bool isXs(BuildContext context) => MediaQuery.of(context).size.width <= 760;
}
