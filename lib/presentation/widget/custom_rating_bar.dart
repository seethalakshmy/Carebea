import 'package:admin_580_tech/presentation/widget/custom_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../core/enum.dart';

class CustomRatingBar extends StatelessWidget {
  const CustomRatingBar({Key? key, required this.rating}) : super(key: key);
  final num rating;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: rating.toDouble(),
      itemBuilder: (context, index) => CustomIcon(
        icon: Icons.star,
        color: AppColor.amber3.val,
      ),
      itemCount: INT.four.val,
      itemSize: DBL.twenty.val,
      unratedColor: Colors.amber.withAlpha(50),
      direction: Axis.horizontal,
    );
  }
}
