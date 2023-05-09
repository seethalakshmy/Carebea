import 'package:flutter/material.dart';

import '../../core/enum.dart';


class CustomListViewBuilder extends StatelessWidget {
  const CustomListViewBuilder({
    Key? key,
    required this.itemCount,
    this.scrollDirection,
    this.shrinkWrap,
    required this.itemBuilder,
    this.physics,
  }) : super(key: key);
  final int itemCount;
  final Axis? scrollDirection;
  final bool? shrinkWrap;
  final NullableIndexedWidgetBuilder itemBuilder;

  final ScrollPhysics? physics;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection:scrollDirection?? EAxis.vertical.val,
        itemCount: itemCount,
        physics: physics,
        shrinkWrap: shrinkWrap ?? false,
        itemBuilder: itemBuilder);
  }
}
