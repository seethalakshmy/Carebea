import 'package:admin_580_tech/core/text_styles.dart';
import 'package:admin_580_tech/presentation/widget/service_details_rating_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../core/enum.dart';
import '../../../core/responsive.dart';
import '../../widget/custom_rating_bar.dart';
import '../../widget/custom_sizedbox.dart';
import '../../widget/custom_text.dart';
import '../../widget/dotted_container.dart';

class ServiceRewardAndCompletion extends StatelessWidget {
  const ServiceRewardAndCompletion({
    required this.title,
    required this.subTitle,
    this.subTitle2 = "",
    this.height,
    this.isShowRating = false,
    this.rating = 0.0,
    super.key,
  });

  final String title;
  final String subTitle;
  final double? height;
  final String subTitle2;
  final bool isShowRating;
  final num? rating;

  @override
  Widget build(BuildContext context) {
    return DottedContainer(
      height: height ?? DBL.eightyFive.val,
      width: DBL.oneFiftyEight.val,
      child: !isShowRating ? _countView(context) : _ratingView(context),
    );
  }

  Column _countView(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomText(
          title,
          style: TS().gRoboto(
              fontWeight: FW.w500.val,
              fontSize: getFontSize(context, fontSize: FS.font20.val),
              color: AppColor.matBlack.val),
        ),
        CustomSizedBox(
          height: DBL.seven.val,
        ),
        CustomText(
          subTitle,
          style: TS().gInter(
              fontWeight: FW.w400.val,
              fontSize: getFontSize(context, fontSize: FS.font14.val),
              color: AppColor.matBlack2.val),
        ),
        CustomSizedBox(
          height: subTitle2.isNotEmpty ? DBL.two.val : DBL.zero.val,
        ),
        subTitle2.isNotEmpty
            ? CustomText(
                subTitle2,
                style: TS().gInter(
                    fontWeight: FW.w400.val,
                    fontSize: getFontSize(context, fontSize: FS.font10.val),
                    color: AppColor.matBlack2.val),
              )
            : CustomSizedBox.shrink(),
      ],
    );
  }

  Column _ratingView(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomRatingBar(rating: rating!.toDouble()),
            CustomSizedBox(
              width: DBL.five.val,
            ),
            CustomText(
             "($subTitle)",
              style: TS().gInter(
                  fontWeight: FW.w400.val,
                  fontSize: getFontSize(context, fontSize: FS.font14.val),
                  color: AppColor.matBlack2.val),
            ),
          ],
        ),
        CustomSizedBox(
          height: DBL.five.val,
        ),
        CustomText(
          AppString.averageReviewFromClient.val,
          textAlign: TextAlign.center,
          style: TS().gInter(
              fontWeight: FW.w400.val,
              fontSize: getFontSize(context, fontSize: FS.font14.val),
              color: AppColor.matBlack2.val),
        ),
      ],
    );
  }

  double getFontSize(BuildContext context, {required double fontSize}) {
    return Responsive.isLg(context) ? fontSize - 2 : fontSize;
  }
}
