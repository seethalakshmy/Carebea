import 'package:flutter/material.dart';

class CommonPaddingWidget extends StatelessWidget {
  const CommonPaddingWidget({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: child,
    );
  }
}
