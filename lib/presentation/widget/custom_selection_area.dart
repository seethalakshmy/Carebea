import 'package:flutter/material.dart';

import '../../core/enum.dart';

class CSelectionArea extends StatelessWidget {
  const CSelectionArea({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SelectionArea(child: child);
  }
}
