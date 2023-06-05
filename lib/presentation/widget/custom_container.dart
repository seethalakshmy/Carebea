import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key,
    this.height,
    this.width,
    this.child,
    this.color,
    this.alignment,
    this.padding,
  }) : decoration = null;
  final double? height;
  final double? width;
  final Decoration? decoration;
  final Color? color;
  final Widget? child;
  final Alignment? alignment;
  final EdgeInsetsGeometry ?padding;

  const CustomContainer.decoration(
      {super.key, this.height, this.width, this.child, this.decoration, this.alignment, this.padding})
      : color = null;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      alignment: alignment,
      padding: padding,
      decoration: decoration,
      color: color,
      child: child,
    );
  }
}
