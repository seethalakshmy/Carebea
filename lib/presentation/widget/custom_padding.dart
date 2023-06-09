import 'package:flutter/material.dart';

class CustomPadding extends StatelessWidget {
  final double? top;
  final double? bottom;
  final double? right;
  final double? left;
  final double? horizontal;
  final double? vertical;
  final Widget? child;
  final double? padding;
  final EdgeInsets edgeInsets;

  CustomPadding.all(this.padding, {super.key, this.child})
      : edgeInsets = EdgeInsets.all(padding!),
        top = null,
        bottom = null,
        right = null,
        left = null,
        horizontal = null,
        vertical = null;

  CustomPadding.symmetric(
      {super.key, this.horizontal=0.0, this.vertical=0.0, this.child})
      : edgeInsets =
            EdgeInsets.symmetric(horizontal: horizontal!, vertical: vertical!),
        top = null,
        bottom = null,
        right = null,
        padding = null,
        left = null;

  CustomPadding.only(
      {super.key,
      this.top = 0.0,
      this.bottom = 0.0,
      this.right = 0.0,
      this.left = 0.0,
      this.child})
      : edgeInsets = EdgeInsets.only(
            top: top!, bottom: bottom!, right: right!, left: left!),
        horizontal = null,
        padding = null,
        vertical = null;

  CustomPadding.lTRB(this.left, this.top, this.right, this.bottom,
      {super.key, this.child})
      : edgeInsets = EdgeInsets.fromLTRB(left!, top!, right!, bottom!),
        horizontal = null,
        padding = null,
        vertical = null;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: edgeInsets,
      child: child,
    );
  }
}
