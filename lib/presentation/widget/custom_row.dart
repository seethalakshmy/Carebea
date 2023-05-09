
import 'package:flutter/material.dart';

import '../../core/enum.dart';

class CustomRow extends StatelessWidget {

  const CustomRow(
      {Key? key,
        required this.children,
        this.mainAxisAlignment,
        this.crossAxisAlignment,
        this.mainAxisSize
      })
      : super(key: key);
  final List<Widget> children;

  final MainAxisAlignment? mainAxisAlignment;
  final CrossAxisAlignment? crossAxisAlignment;
  final MainAxisSize?mainAxisSize;

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisSize: mainAxisSize??EMainAxisSize.max.val,
        mainAxisAlignment: mainAxisAlignment??EMainAxisAlignment.start.val,
        crossAxisAlignment: crossAxisAlignment??ECrossAxisAlignment.center.val,
        children: children);
  }
}