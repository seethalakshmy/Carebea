import 'package:admin_580_tech/core/enum.dart';
import 'package:flutter/material.dart';

class CustomSizedBox extends StatelessWidget {
  final double? height;
  final double? width;
  final Widget? child;

  const CustomSizedBox({super.key, this.height, this.width, this.child});

  CustomSizedBox.shrink({super.key})
      : width = DBL.zero.val,
        height = DBL.zero.val,
        child = null;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: child,
    );
  }
}
