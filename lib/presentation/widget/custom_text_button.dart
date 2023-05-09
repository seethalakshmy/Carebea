import 'dart:math' as math;
import 'dart:ui' show lerpDouble;

import 'package:admin_580_tech/presentation/widget/custom_flexible.dart';
import 'package:admin_580_tech/presentation/widget/custom_row.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:flutter/material.dart';

import '../../core/enum.dart';
import '../../core/hover.dart';
import '../../core/on_hover.dart';
import '../../core/properties.dart';
import '../../core/text_styles.dart';
import 'custom_text.dart';

class CTextButton extends StatelessWidget {
  final Widget? icon;
  final void Function()? onPressed;
  final void Function()? onLongPress;
  final MouseCursor? mouseCursor;
  final bool autofocus;
  final String? text;
  final Color? hoverTextColor;
  final FontWeight? textWeight;
  final Color? color;
  final Color? hoverColor;
  final FontWeight? fontWeight;
  final double? width;
  final double? height;

  const CTextButton({
    Key? key,
    this.icon,
    required this.onPressed,
    this.onLongPress,
    this.mouseCursor,
    this.autofocus = false,
    this.text,
    this.hoverTextColor,
    this.textWeight,
    this.color,
    this.hoverColor,
    this.fontWeight,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double scale = MediaQuery.maybeOf(context)?.textScaleFactor ?? 1;
    final double gap =
        scale <= 1 ? 8 : lerpDouble(8, 4, math.min(scale - 1, 1))!;

    return TranslateOnHover(
      builder: (isHover) {
        return TextButton(
          autofocus: autofocus,
          onPressed: onPressed,
          onLongPress: onLongPress,

          style: ButtonStyle(
            
            mouseCursor: MaterialStatePropertyAll(mouseCursor),
            maximumSize: MaterialStatePropertyAll(
                Size(width ?? DBL.fourFifty.val, height ?? DBL.fifty.val)),
            overlayColor: MaterialStatePropertyAll(AppColor.transparent.val),
          ),
          child: FxHover(
            builder: (isHover) {
              Color color = isHover
                  ? AppColor.darkBlue.val
                  : AppColor.lightBlue.val;
              return CustomText3(
                text!,
                style: TS().gPoppins(
                    fontWeight: fontWeight ?? FW.w600.val,
                    color: color),
              );
            },
          )
        );
      },
    );
  }
}
