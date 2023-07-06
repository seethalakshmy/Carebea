import 'dart:async';

import 'package:flutter/material.dart';

import '../../core/enum.dart';

abstract class ToastProvider {
  const ToastProvider();
  Widget show(BuildContext context, double? toastWidth);
}

class ToastWithColor extends ToastProvider {
  final String message;
  final Widget? leading;
  final Color? backgroundColor;
  final Color? borderColor;
  final TextStyle? textStyle;
  final int maxLines;
  final double radius;
  final double? height;
  final bool isLightBackground;
  static const primaryColor = Color(0xff344280);
  const ToastWithColor({
    required this.message,
    this.leading,
    this.textStyle,
    this.maxLines = 2,
    this.backgroundColor,
    this.borderColor,
    this.radius = 12,
    this.height,
    this.isLightBackground = false,
  }) : super();

  const ToastWithColor.success({
    Key? key,
    required this.message,
    this.leading,
    this.textStyle,
    this.maxLines = 2,
    this.backgroundColor = primaryColor,
    this.borderColor,
    this.radius = 12,
    this.height,
    this.isLightBackground = false,
  }) : super();

  const ToastWithColor.error({
    Key? key,
    required this.message,
    this.leading,
    this.textStyle,
    this.maxLines = 2,
    this.backgroundColor = Colors.red,
    this.borderColor,
    this.radius = 12,
    this.height,
    this.isLightBackground = false,
  }) : super();

  const ToastWithColor.warning({
    Key? key,
    required this.message,
    this.leading,
    this.textStyle,
    this.maxLines = 2,
    this.backgroundColor = Colors.amber,
    this.borderColor,
    this.radius = 12,
    this.height,
    this.isLightBackground = false,
  }) : super();

  const ToastWithColor.info({
    Key? key,
    required this.message,
    this.leading,
    this.textStyle,
    this.maxLines = 2,
    this.backgroundColor = Colors.blue,
    this.borderColor,
    this.radius = 12,
    this.height,
    this.isLightBackground = false,
  }) : super();

  @override
  Widget show(BuildContext context, double? toastWidth) {
    bool isWeb = MediaQuery.of(context).size.width >= 1100;
    return Container(
      width: isWeb ? toastWidth ?? 500 : MediaQuery.of(context).size.width - 32,
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(radius),
      ),
      clipBehavior: Clip.hardEdge,
      child: Container(
        height: height,
        padding: const EdgeInsets.all(12.0),
        width:
            isWeb ? toastWidth ?? 500 : MediaQuery.of(context).size.width - 32,
        decoration: BoxDecoration(
          color: isLightBackground
              ? backgroundColor?.withOpacity(0.25) ??
                  Theme.of(context).colorScheme.primary.withOpacity(0.25)
              : backgroundColor ?? Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(radius),
          border: Border.all(
            color: borderColor ??
                backgroundColor ??
                Theme.of(context).colorScheme.primary,
            width: 1.5,
          ),
        ),
        clipBehavior: Clip.hardEdge,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            leading ?? const SizedBox.shrink(),
            leading != null
                ? const SizedBox(width: 12.0)
                : const SizedBox.shrink(),
            Expanded(
              child: Text(
                message,
                softWrap: true,
                maxLines: maxLines,
                overflow: TextOverflow.ellipsis,
                style: textStyle ??
                    TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                      color: isLightBackground
                          ? backgroundColor ??
                              Theme.of(context).colorScheme.primary
                          : Colors.white,
                    ),
              ),
            ),

            // trailing ?? const SizedBox.shrink(),
            // trailing != null
            //     ? const SizedBox(width: 12.0)
            //     : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}

class FxToast {
  static OverlayEntry? _overlayEntry;
  static Timer? _timer;

  /// Use [ToastWithColor] or [ToastWithoutColor] for ToastProvider
  static Future<void> showToast(
      {required BuildContext context,
      ToastPosition? position = ToastPosition.top,
      required ToastProvider toast,
      Duration? displayDuration,
      Duration? animationDuration,
      double? toastWidth}) async {
    if (_timer != null) {
      _timer!.cancel();
      _overlayEntry != null ? _overlayEntry!.remove() : null;
    }
    _overlayEntry = _createOverlayEntry(
        context, toast, position!, animationDuration, toastWidth);
    Overlay.of(context).insert(_overlayEntry!);
    _timer = Timer(
      displayDuration ?? const Duration(seconds: 2),
      () {
        _timer!.cancel();
        _overlayEntry!.remove();
        _overlayEntry = null;
      },
    );
  }

  /// Use [ToastWithColor] or [ToastWithoutColor] for ToastProvider
  static show(BuildContext context, ToastProvider toast) {
    return Material(
      color: Colors.transparent,
      child: toast.show(context, null),
    );
  }

  static OverlayEntry _createOverlayEntry(
    BuildContext context,
    ToastProvider toast,
    ToastPosition position,
    Duration? duration,
    double? toastWidth,
  ) {
    bool isWeb = MediaQuery.of(context).size.width >= 1100;

    return OverlayEntry(
      builder: (context) => Positioned(
        top: position == ToastPosition.top ||
                position == ToastPosition.topLeft ||
                position == ToastPosition.topRight
            ? 16.0
            : null,
        left: isWeb
            ? position == ToastPosition.top || position == ToastPosition.bottom
                ? (MediaQuery.of(context).size.width - (toastWidth ?? 500.0)) /
                    2
                : null
            : null,
        right: isWeb
            ? position == ToastPosition.topRight ||
                    position == ToastPosition.bottomRight
                ? 0.0
                : null
            : null,
        bottom: position == ToastPosition.bottom ||
                position == ToastPosition.bottomLeft ||
                position == ToastPosition.bottomRight
            ? 16.0
            : null,
        child: ToastAnimation(
          offset: getOffset(position),
          duration: duration,
          child: Material(
            color: Colors.transparent,
            child: SafeArea(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child: toast.show(context, toastWidth),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ToastAnimation extends StatefulWidget {
  final Widget child;
  final Offset offset;
  final Duration? duration;
  const ToastAnimation({
    Key? key,
    required this.child,
    required this.offset,
    this.duration,
  }) : super(key: key);

  @override
  State<ToastAnimation> createState() => _ToastAnimationState();
}

class _ToastAnimationState extends State<ToastAnimation>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration ?? const Duration(milliseconds: 300),
    )..forward();
  }

  @override
  void deactivate() {
    _controller.stop();
    super.deactivate();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: widget.offset,
        end: const Offset(0.0, 0.0),
      ).animate(
        CurvedAnimation(
          parent: _controller,
          curve: Curves.easeIn,
          reverseCurve: Curves.easeOut,
        ),
      ),
      child: widget.child,
    );
  }
}

Offset getOffset(ToastPosition position) {
  if (position == ToastPosition.top) {
    return const Offset(0.0, -1.0);
  } else if (position == ToastPosition.topLeft) {
    return const Offset(-1.0, 0.0);
  } else if (position == ToastPosition.topRight) {
    return const Offset(1.0, 0.0);
  } else if (position == ToastPosition.bottomLeft) {
    return const Offset(-1.0, 0.0);
  } else if (position == ToastPosition.bottomRight) {
    return const Offset(1.0, 0.0);
  } else {
    return const Offset(0.0, 1.0);
  }
}
