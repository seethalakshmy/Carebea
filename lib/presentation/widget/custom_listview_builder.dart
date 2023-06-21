import 'package:flutter/material.dart';

class CustomListViewBuilder extends StatelessWidget {
  const CustomListViewBuilder({
    Key? key,
    required this.itemCount,
    this.scrollDirection,
    this.shrinkWrap,
    required this.itemBuilder,
    this.physics,
    this.padding,
  }) : super(key: key);
  final int itemCount;
  final Axis? scrollDirection;
  final bool? shrinkWrap;
  final NullableIndexedWidgetBuilder itemBuilder;
  final EdgeInsetsGeometry? padding;
  final ScrollPhysics? physics;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: scrollDirection ?? Axis.vertical,
        itemCount: itemCount,
        physics: physics,
        padding: padding,
        shrinkWrap: shrinkWrap ?? false,
        itemBuilder: itemBuilder);
  }
}
