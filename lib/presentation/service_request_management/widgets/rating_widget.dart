import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../core/enum.dart';
import '../../../core/responsive.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({
    Key? key,
    required this.rating,
    required this.rater,
    required this.feedback,
  }) : super(key: key);
  final double rating;
  final String rater;
  final String feedback;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: DBL.fiveFifty.val,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColor.lightGrey.val, width: 1)),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(width: 180, child: CustomText('Rate by $rater')),
              const CustomText(':'),
              const SizedBox(width: 8),
              RatingBarIndicator(
                itemCount: 5,
                itemSize: 14,
                rating: rating,
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: AppColor.starFillColor.val,
                ),
              )
            ],
          ),
          CustomSizedBox(height: DBL.ten.val),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 180, child: CustomText('Feedback by $rater')),
              const CustomText(':'),
              const SizedBox(width: 8),
              SizedBox(
                  width: Responsive.isMobile(context) ||
                          Responsive.isTablet(context)
                      ? MediaQuery.of(context).size.width * 0.3
                      : MediaQuery.of(context).size.width * 0.2,
                  child: CustomText(feedback)),
            ],
          ),
        ],
      ),
    );
  }
}
