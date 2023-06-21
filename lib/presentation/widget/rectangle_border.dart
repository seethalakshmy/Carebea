import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/presentation/widget/custom_container.dart';
import 'package:admin_580_tech/presentation/widget/custom_padding.dart';
import 'package:flutter/material.dart';

class RectangleBorder extends StatelessWidget {
  const RectangleBorder({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return CustomContainer.decoration(
      decoration: _buildBoxDecoration(),
      child: CustomPadding.symmetric(
          horizontal: DBL.twenty.val, vertical: DBL.ten.val, child: child),
    );
  }

  BoxDecoration _buildBoxDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(DBL.eight.val),
      border: Border.all(color: AppColor.lightBlue2.val, width: 1.5),
    );
  }
}
