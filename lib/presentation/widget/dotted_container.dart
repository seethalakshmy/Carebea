import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class DottedContainer extends StatelessWidget {
  const DottedContainer(
      {Key? key,
      required this.height,
      required this.width,
      required this.child})
      : super(key: key);
  final double height;
  final double width;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      color: AppColor.lightGrey3.val,
      borderType: BorderType.RRect,
      radius: const Radius.circular(5),
      padding: const EdgeInsets.all(6),
      child: CustomSizedBox(
        height: height,
        width: width,
        child: child,
      ),
    );
  }
}
