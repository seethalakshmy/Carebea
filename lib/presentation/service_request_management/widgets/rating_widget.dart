import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../core/enum.dart';
import '../../../domain/service_request_management/model/service_request_response.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({Key? key, required this.service}) : super(key: key);
  final Services service;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 180, child: CustomText('Rating')),
        const CustomText(':'),
        const SizedBox(
          width: 8,
        ),
        RatingBarIndicator(
          itemCount: 5,
          itemSize: 14,
          rating: double.tryParse(service.rating ?? "0") ?? 0,
          itemBuilder: (context, _) => Icon(
            Icons.star,
            color: AppColor.starFillColor.val,
          ),
        )
      ],
    );
  }
}
