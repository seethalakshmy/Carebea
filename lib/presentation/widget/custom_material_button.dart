import 'dart:math' as math;
import 'dart:ui' show lerpDouble;

import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:flutter/material.dart';

import '../../core/enum.dart';
import '../../core/on_hover.dart';
import '../../core/properties.dart';
import '../../core/text_styles.dart';
import 'custom_text.dart';

class CustomMaterialButton extends StatelessWidget {
  final bool fullWidth;
  final Widget? icon;
  final double borderWidth;
  final double borderRadius;
  final void Function()? onPressed;
  final void Function()? onLongPress;
  final void Function(bool)? onHighlightChanged;
  final MouseCursor? mouseCursor;
  final double? minWidth;
  final double? height;
  final FocusNode? focusNode;
  final bool autofocus;
  final String? text;
  final Color? textColor;
  final Color? hoverTextColor;
  final FontWeight? textWeight;
  final bool enableFeedback;
  final EdgeInsetsGeometry? padding;
  final double? elevation;
  final double? hoverElevation;
  final Color? color;
  final Color? hoverColor;
  final bool isLoading;

  const CustomMaterialButton({
    Key? key,
    this.fullWidth = false,
    this.icon,
    this.borderWidth = 1.0,
    this.borderRadius = 12.0,
    required this.onPressed,
    this.onLongPress,
    this.onHighlightChanged,
    this.mouseCursor,
    this.minWidth,
    this.height,
    this.autofocus = false,
    this.focusNode,
    this.text,
    this.textColor,
    this.hoverTextColor,
    this.textWeight,
    this.enableFeedback = true,
    this.padding = const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
    this.elevation,
    this.hoverElevation,
    this.color,
    this.hoverColor,
    this.isLoading = false,
  })  : assert((fullWidth && minWidth == null) ||
            (!fullWidth && minWidth != null) ||
            (!fullWidth && minWidth == null)),
        assert(text != null || icon != null),
        assert(elevation == null || elevation >= 0.0),
        assert(hoverElevation == null || hoverElevation >= 0.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final double scale = MediaQuery.maybeOf(context)?.textScaleFactor ?? 1;
    final double gap =
        scale <= 1 ? 8 : lerpDouble(8, 4, math.min(scale - 1, 1))!;

    return TranslateOnHover(
      builder: (isHover) {
        return MaterialButton(
          enableFeedback: enableFeedback,
          autofocus: autofocus,
          onPressed: onPressed,
          onLongPress: onLongPress,
          onHighlightChanged: onHighlightChanged,
          mouseCursor: mouseCursor,
          elevation: elevation ?? DBL.zero.val,
          hoverElevation: hoverElevation ?? DBL.zero.val,
          highlightElevation: DBL.zero.val,
          focusElevation: DBL.zero.val,
          padding: padding,
          colorBrightness: Theme.of(context).brightness,
          color: color,
          hoverColor: hoverColor ?? AppColor.darkBlue.val,
          shape: PR().roundedRectangleBorderSide(
              radius: borderRadius,
              borderWidth: borderWidth,
              borderColor: AppColor.primaryColor.val),
          minWidth: fullWidth ? double.infinity : minWidth,
          height: height,
          textColor: isHover ? hoverTextColor : textColor,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              icon ?? CustomSizedBox.shrink(),
              icon != null && text != null
                  ? CustomSizedBox(width: gap)
                  : CustomSizedBox.shrink(),
              text != null
                  ? isLoading
                      ? buildProgress()
                      : Flexible(
                          child: IgnorePointer(
                            child: CustomText(
                              text!,
                              style: TS().gPoppins(
                                  fontWeight: FW.w600.val,
                                  color: AppColor.white.val),
                            ),
                          ),
                        )
                  : CustomSizedBox.shrink(),
            ],
          ),
        );
      },
    );
  }

  Center buildProgress() {
    return Center(
      child: CircularProgressIndicator(
        color: AppColor.white.val,
        strokeWidth: 4,
      ),
    );
  }
}
