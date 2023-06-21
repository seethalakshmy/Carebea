import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/core/responsive.dart';
import 'package:admin_580_tech/core/text_styles.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/custom_svg.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:flutter/material.dart';

class SVGText extends StatelessWidget {
  const SVGText({
    Key? key,
    required this.path,
    required this.name,
    this.height,
    this.widthGap,
    this.width,
  }) : super(key: key);
  final double? height;
  final double? width;
  final String path;
  final String name;
  final double? widthGap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildCustomSvg(),
        CustomSizedBox(
          width: widthGap,
        ),
        _buildText(context)
      ],
    );
  }

  Expanded _buildText(BuildContext context) {
    return Expanded(
      child: CustomText(
        name,
        style: _buildStyle(context),
      ),
    );
  }

  _buildStyle(BuildContext context) {
   return TS().gRoboto(
          fontSize: getFontSize(context),
          fontWeight: FW.w400.val,
          color: AppColor.lightGrey2.val);
  }

  CustomSvg _buildCustomSvg() {
    return CustomSvg(
      path: path,
      height: height,
      width: width,
    );
  }

  double getFontSize(BuildContext context) {
    return Responsive.isLg(context) ? FS.font14.val : FS.font16.val;
  }
}
