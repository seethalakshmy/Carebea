import 'dart:math' as math;
import 'dart:ui' show lerpDouble;

import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:flutter/material.dart';

import '../../core/enum.dart';
import '../../core/on_hover.dart';

class CustomButton extends StatelessWidget {
  final ButtonType? buttonType;
  final bool fullWidth;
  final Widget? icon;
  final bool isOutlineButton;
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
  final TextStyle? textStyle;

  const CustomButton({
    Key? key,
    this.buttonType,
    this.fullWidth = false,
    this.icon,
    this.isOutlineButton = false,
    this.borderWidth = 1.0,
    this.borderRadius = 05.0,
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
    this.textStyle,
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
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return TranslateOnHover(
      builder: (isHover) {
        return MaterialButton(
          enableFeedback: enableFeedback,
          autofocus: autofocus,
          onPressed: onPressed,
          onLongPress: onLongPress,
          onHighlightChanged: onHighlightChanged,
          mouseCursor: mouseCursor,
          elevation: isOutlineButton ? 0.0 : elevation,
          hoverElevation: isOutlineButton ? 0.0 : hoverElevation,
          highlightElevation: 0.0,
          focusElevation: 0.0,
          padding: padding,
          colorBrightness: Theme.of(context).brightness,
          color: color ??
              _getButtonColor(colorScheme, buttonType, isOutlineButton),
          hoverColor: hoverColor ??
              _getHoverButtonColor(colorScheme, buttonType, isOutlineButton),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            side: BorderSide(
              width: borderWidth,
              color: isOutlineButton
                  ? color ?? _getButtonColor(colorScheme, buttonType, false)!
                  : color ?? _getButtonColor(colorScheme, buttonType, true)!,
            ),
          ),
          minWidth: fullWidth ? double.infinity : minWidth,
          height: height,
          textColor: isHover
              ? hoverTextColor ??
                  _getHoverFontColor(colorScheme, buttonType, isOutlineButton)
              : textColor ??
                  _getFontColor(colorScheme, buttonType, isOutlineButton),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              icon ?? CustomSizedBox.shrink(),
              icon != null && text != null
                  ? SizedBox(width: gap)
                  : CustomSizedBox.shrink(),
              text != null
                  ? Flexible(
                      child: Text(
                        text!,
                        style: textStyle,
                      ),
                    )
                  : CustomSizedBox.shrink(),
            ],
          ),
        );
      },
    );
  }
}

Color? _getButtonColor(
    ColorScheme colorScheme, ButtonType? buttonType, bool isOutlineButton) {
  if (isOutlineButton) {
    return Colors.transparent;
  }
  if (buttonType == ButtonType.secondary) {
    return colorScheme.secondary;
  } else if (buttonType == ButtonType.warning) {
    return AppColor.warning.val;
  } else if (buttonType == ButtonType.error) {
    return AppColor.error.val;
  } else if (buttonType == ButtonType.success) {
    return AppColor.success.val;
  } else if (buttonType == ButtonType.info) {
    return AppColor.info.val;
  } else {
    return colorScheme.primary;
  }
}

Color? _getHoverButtonColor(
    ColorScheme colorScheme, ButtonType? buttonType, bool isOutlineButton) {
  if (isOutlineButton) {
    return _getButtonColor(colorScheme, buttonType, false);
  }
  if (buttonType == ButtonType.secondary) {
    return colorScheme.onSecondaryContainer;
  } else if (buttonType == ButtonType.warning) {
    return AppColor.warningDark.val;
  } else if (buttonType == ButtonType.error) {
    return AppColor.errorDark.val;
  } else if (buttonType == ButtonType.success) {
    return AppColor.successDark.val;
  } else if (buttonType == ButtonType.info) {
    return AppColor.infoDark.val;
  } else {
    if (colorScheme.brightness == Brightness.dark) {
      return colorScheme.inversePrimary;
    } else {
      return colorScheme.onPrimaryContainer;
    }
  }
}

Color? _getFontColor(
    ColorScheme colorScheme, ButtonType? buttonType, bool isOutlineButton) {
  if (isOutlineButton) {
    return _getButtonColor(colorScheme, buttonType, false);
  }
  if (buttonType == ButtonType.secondary) {
    return colorScheme.surface;
  } else if (buttonType == ButtonType.warning ||
      buttonType == ButtonType.info) {
    return AppColor.dark.val;
  } else if (buttonType == ButtonType.error ||
      buttonType == ButtonType.success) {
    return AppColor.white.val;
  } else {
    return colorScheme.onPrimary;
  }
}

Color? _getHoverFontColor(
    ColorScheme colorScheme, ButtonType? buttonType, bool isOutlineButton) {
  if (isOutlineButton) {
    return _getFontColor(colorScheme, buttonType, false);
  }
  if (buttonType == ButtonType.secondary) {
    return colorScheme.surface;
  } else if (buttonType == ButtonType.warning ||
      buttonType == ButtonType.info) {
    return AppColor.dark.val;
  } else if (buttonType == ButtonType.error ||
      buttonType == ButtonType.success) {
    return AppColor.white.val;
  } else {
    if (colorScheme.brightness == Brightness.dark) {
      return colorScheme.onPrimaryContainer;
    } else {
      return colorScheme.onPrimary;
    }
  }
}
