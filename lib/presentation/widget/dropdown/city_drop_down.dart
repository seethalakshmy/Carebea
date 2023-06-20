import 'package:admin_580_tech/core/custom_text.dart';
import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:flutter/material.dart';

import '../../../core/text_styles.dart';

class CityDropDown extends StatelessWidget {
  const CityDropDown({Key? key, this.errorText, required this.cityName})
      : super(key: key);
  final String? errorText;
  final String cityName;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText3(
           AppString.city.val,
          style: TS().gRoboto(color: AppColor.label.val),
        ),
        SizedBox(
          height: 4,
        ),
        Container(
          padding: EdgeInsets.all(8),
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
              border: Border.all(
                  color: (errorText != null && errorText!.isNotEmpty)
                      ? Colors.red
                      : AppColor.borderColor.val,
                  width: 1)),
          height: 50,
          child: Row(
            children: [
              CustomText3(
                 cityName,
                style: TS().gRoboto(color: AppColor.black.val),
              ),
              Spacer(),
              Icon(
                Icons.keyboard_arrow_down,
                color: AppColor.darkBlue.val,
              )
            ],
          ),
        ),
        SizedBox(
          height: 4,
        ),
        CustomText3(
           errorText ?? "",
          style: TS().gRoboto(color: AppColor.red.val)
        )
      ],
    );
  }
}
