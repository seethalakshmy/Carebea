import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:flutter/material.dart';

import '../../../application/bloc/onboarding/onboarding_bloc.dart';
import '../../../core/text_styles.dart';
import '../../widget/custom_sizedbox.dart';
import '../modules/personal_details/models/gender_list_response.dart';
import 'drop_down.dart';

class GenderDropDown extends StatelessWidget {
  GenderDropDown(
      {Key? key,
      required this.onChange,
      required this.errorText,
      required this.items,
      this.selectedValue,
      required this.onboardingBloc})
      : super(key: key);

  final Function onChange;
  final String errorText;
  final List<Gender> items;
  final String? selectedValue;
  final OnboardingBloc onboardingBloc;

  @override
  Widget build(BuildContext context) {
    return CustomSizedBox(
      width: DBL.twoEighty.val,
      child: DropdownWidget(
          showSearchBox: false,
          hint: AppString.gender.val,
          errorText: errorText,
          items: items
              .map((e) => DropdownItem(
                    value: e.name,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 12),
                      child: CustomText(
                        e.name ?? "",
                        style: TS().gRoboto(color: AppColor.black.val),
                      ),
                    ),
                  ))
              .toList(),
          onChange: (value, index) {
            onChange(items[index].id);
            onboardingBloc.selectedGenderName = items[index].name ?? "";
          },
          child: CustomText(selectedValue ?? "")),
    );
  }
}
