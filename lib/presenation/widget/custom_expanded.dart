import 'package:flutter/material.dart';

import '../../core/enum.dart';

class CExpanded extends StatelessWidget {
  const CExpanded({Key? key, required this.child, this.flex})
      : super(key: key);
  final int? flex;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Expanded(flex: flex ?? INT.one.val, child: child);
  }
}
