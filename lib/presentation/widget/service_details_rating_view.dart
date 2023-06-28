import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/presentation/widget/custom_rating_bar.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/rectangle_border.dart';
import 'package:admin_580_tech/presentation/widget/row_combo.dart';
import 'package:flutter/material.dart';

import 'alert_text_label.dart';

class ServiceDetailRatingView extends StatelessWidget {
  const ServiceDetailRatingView({
    Key? key,
    required this.rating,
    required this.feeBack,
  }) : super(key: key);
  final num rating;
  final String feeBack;

  @override
  Widget build(BuildContext context) {
    return RectangleBorder(
      child: Column(
        children: [
          _ratingView(),
          CustomSizedBox(
            height: DBL.ten.val,
          ),
          RowColonCombo.twoHundred(
              label: AppString.feedBack.val, value: feeBack),
          CustomSizedBox(
            height: DBL.ten.val,
          ),
        ],
      ),
    );
  }

  Row _ratingView() {
    return Row(
      children: [
        AlertTextLabel(
          customWidth: DBL.twoHundred.val,
          AppString.rating.val,
          isCustomWidth: true,
        ),
        CustomRatingBar(rating: rating)
      ],
    );
  }
}
