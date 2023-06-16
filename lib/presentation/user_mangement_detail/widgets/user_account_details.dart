import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/core/text_styles.dart';
import 'package:admin_580_tech/presentation/widget/custom_container.dart';
import 'package:admin_580_tech/presentation/widget/custom_padding.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:flutter/material.dart';

import '../../../core/responsive.dart';
import '../../widget/custom_sizedbox.dart';

class UserAccountDetails extends StatelessWidget {
  const UserAccountDetails({Key? key, required this.label, required this.value})
      : super(key: key);
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return CustomPadding.only(
      left: Responsive.isWeb(context) ? DBL.twenty.val : DBL.eight.val,
      right: DBL.five.val,
      child: Row(
        children: [
          CustomSizedBox(
            width: isXS2(context)?DBL.oneEighty.val: DBL.twoHundred.val,
            child: CustomText(
              label,
              style: TS().gRoboto(
                  fontSize: getFontSize(
                    context,
                    fontSize: getFontSize(context, fontSize:  FS.font16.val,),
                  ),
                  color: AppColor.darkGrey.val,
                  fontWeight: FW.w400.val),
            ),
          ),
          CustomSizedBox(
            width: isXS(context) ? DBL.ten.val : DBL.ninetyTwo.val,
          ),
          CustomContainer.decoration(
            height: DBL.fortyFive.val,
            width: isXS2(context)?DBL.twoNinety.val: isXS(context)?DBL.threeFortyThree.val:DBL.fourHundred.val,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: AppColor.lightWhite.val,
            ),
            child: CustomPadding.only(
              left: DBL.twelve.val,
              right: DBL.five.val,
              top: DBL.twelve.val,
              bottom: DBL.twelve.val,
              child: CustomText(
                value,
                style: TS().gRoboto(
                    fontSize: getFontSize(
                      context,
                      fontSize: FS.font16.val,
                    ),
                    color: AppColor.darkGrey2.val,
                    fontWeight: FW.w400.val),
              ),
            ),
          )
        ],
      ),
    );
  }

  bool isXS(context) => MediaQuery.of(context).size.width <= 950;

  bool isXS2(context) => MediaQuery.of(context).size.width <= 750;

  double getFontSize(BuildContext context, {required double fontSize}) {
    return isXS(context) ? fontSize - 1 : fontSize;
  }
}
