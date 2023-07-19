import 'package:flutter/material.dart';

import 'custom_text.dart';

class EmptyLabelView extends StatelessWidget {
  const EmptyLabelView({
    super.key,
    required this.msg,
  });
  final String msg;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomText(msg),
    );
  }
}
