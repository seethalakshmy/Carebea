
import 'package:admin_580_tech/core/text_styles.dart';
import 'package:flutter/material.dart';

import '../../../core/enum.dart';
import '../../../core/responsive.dart';
import 'custom_sizedbox.dart';
import 'custom_text.dart';
import 'dotted_container.dart';


class ServiceRewardAndCompletion extends StatelessWidget {
  const ServiceRewardAndCompletion({
    required this.title,
    required this.subTitle,
    this.height,
    super.key,
  });
  final String title;
  final String subTitle;
  final double ?height;

  @override
  Widget build(BuildContext context) {
    return DottedContainer(
      height: height?? DBL.ninetyTwo.val,
      width: DBL.oneFiftyEight.val,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText3(title,style: TS().gRoboto(fontWeight: FW.w500.val,fontSize:getFontSize(context, fontSize: FS.font20.val) ,color:AppColor.matBlack.val ),),
          CustomSizedBox(height: DBL.seven.val,),
          CustomText3(subTitle, style: TS().gInter(fontWeight: FW.w400.val, fontSize:getFontSize(context, fontSize:  FS.font14.val),color: AppColor.matBlack2.val) ,)
        ],
      ),
    );
  }

  double getFontSize(BuildContext context,{required double fontSize}){
    return Responsive.isLg(context)?fontSize -2: fontSize;
  }
}
