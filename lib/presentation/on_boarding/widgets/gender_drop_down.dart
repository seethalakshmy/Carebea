import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:flutter/material.dart';

import '../../../core/text_styles.dart';
import '../../widget/custom_sizedbox.dart';
import '../modules/personal_details/models/gender_list_response.dart';
import 'drop_down.dart';

class GenderDropDown extends StatelessWidget {
  const GenderDropDown(
      {Key? key,
      required this.onChange,
      required this.errorText,
      required this.items,
      this.selectedValue})
      : super(key: key);

  final Function onChange;
  final String errorText;
  final List<Gender> items;
  final String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return CustomSizedBox(
      width: DBL.twoEighty.val,
      child: DropdownWidget(
          hint: AppString.gender.val,
          errorText: errorText,
          items: items
              .map((e) => DropdownItem(
                    value: e.name,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: CustomText3(
                        e.name ?? "",
                        style: TS().gRoboto(color: AppColor.black.val),
                      ),
                    ),
                  ))
              .toList(),
          onChange: (value, index) {
            onChange(items[index].id);
          },
          child: CustomText3(selectedValue ?? "")),
    );
  }
}
