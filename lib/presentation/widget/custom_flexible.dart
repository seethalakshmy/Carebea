import 'package:flutter/material.dart';

import '../../core/enum.dart';

class CFlexible extends StatelessWidget {
  const CFlexible({Key? key, required this.child, this.flex, this.fit}) : super(key: key);
  final int? flex;
  final FlexFit? fit;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: flex ?? INT.one.val,
      fit: fit??EFlexFit.loose.val,
      child: child,
    );
  }
}
