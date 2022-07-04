import 'package:carebea/app/utils/theme.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
    required this.child,
    this.hasShadow = true,
    this.color = Colors.white,
    this.height,
    this.width,
    this.padding,
    this.margin,
  }) : super(key: key);

  final bool hasShadow;
  final Color? color;
  final Widget child;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: color ?? Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          if (hasShadow) BoxShadow(blurRadius: 6, color: Theme.of(context).extension<CustomTheme>()!.shadowColor),
        ],
      ),
      child: child,
    );
  }
}
