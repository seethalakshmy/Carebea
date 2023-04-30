import 'package:flutter/material.dart';

class CustomScroll extends StatelessWidget {
  const CustomScroll({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: child,
    );
  }
}
