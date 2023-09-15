import 'package:admin_580_tech/core/enum.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomShimmerWidget extends StatelessWidget {
  final double width;
  final double height;
  final ShapeBorder shapeBorder;
  final double? borderRadius;
  final Color? baseColor;
  final Color? highlightColor;

  const CustomShimmerWidget.rectangular(
      {super.key,
      this.width = double.infinity,
      required this.height,
      this.borderRadius,
      this.baseColor,
      this.highlightColor,
      this.shapeBorder = const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)))});

  const CustomShimmerWidget.circular(
      {super.key,
      this.width = double.infinity,
      required this.height,
      this.borderRadius,
      this.baseColor,
      this.highlightColor,
      this.shapeBorder = const CircleBorder()});

  @override
  Widget build(BuildContext context) => Shimmer.fromColors(
        baseColor: baseColor ?? AppColor.backgroundColor.val,
        highlightColor:
            highlightColor ?? AppColor.backgroundColor.val.withOpacity(0.5),
        period: const Duration(milliseconds: 1500),
        enabled: true,
        child: Container(
          width: width,
          height: height,
          decoration: ShapeDecoration(
            color: Colors.grey[400]!,
            shape: shapeBorder,
          ),
        ),
      );
}
