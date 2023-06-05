import 'package:flutter/material.dart';

import '../../core/enum.dart';

class CScrollView extends StatelessWidget {
  const CScrollView({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: child);
  }
}
