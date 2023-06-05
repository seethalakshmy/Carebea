import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard(
      {Key? key,
      required this.child,
      this.shape,
      this.shadowColor,
      this.elevation})
      : super(key: key);
  final Widget child;
  final Color? shadowColor;
  final ShapeBorder? shape;
  final double? elevation;

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: shadowColor,
      shape: shape,
      elevation: elevation,
      child: child,
    );
  }
}
