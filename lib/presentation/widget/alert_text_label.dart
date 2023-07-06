import 'package:flutter/material.dart';

import '../../core/enum.dart';
import '../../core/text_styles.dart';
import 'custom_text.dart';

class AlertTextLabel extends StatelessWidget {
  const AlertTextLabel(
    this.name, {
    Key? key,
    this.isCustomWidth = false,
    this.isRequiredSpace = false,
    this.width,
    this.color,
    this.fontSize,
    this.fontWeight,
  }) : super(key: key);
  final String name;
  final bool isCustomWidth;
  final bool isRequiredSpace;
  final Color? color;
  final double? width;
  final double? fontSize;
  final FontWeight? fontWeight;

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
        width: isCustomWidth ? getWidth(context, size) : null,
        style: TS().gRoboto(
            color: color ?? AppColor.matBlack3.val,
            fontWeight: fontWeight ?? FW.w400.val,
            fontSize: fontSize));
  }

  double? getWidth(BuildContext context, Size size) {
    if (width == 200) {
      return isCustomWidth
          ? isXs(context)
              ? DBL.twoHundred.val
              : isLg1(context)
                  ? DBL.threeEighty.val
                  : isLg(context)
                      ? size.width * .13
                      : width
          : null;
    } else if (width == 380) {
      return isCustomWidth
          ? isXs(context)
              ? DBL.twoHundred.val
              : isLg1(context)
                  ? DBL.threeEighty.val
                  : isLg(context)
                      ? size.width * .2
                      : width
          : null;
    } else if (width == 370) {
      return isCustomWidth
          ? isXs(context)
              ? 190
              : isLg1(context)
                  ? DBL.threeSeventeen.val
                  : isLg(context)
                      ? size.width * .19
                      : width
          : null;
    } else {
      return width;
    }
  }

  bool isLg(BuildContext context) => MediaQuery.of(context).size.width <= 1370;

  bool isLg1(BuildContext context) => MediaQuery.of(context).size.width <= 976;

  bool isXs(BuildContext context) => MediaQuery.of(context).size.width <= 760;
}
