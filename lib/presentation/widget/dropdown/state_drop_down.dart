import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:flutter/material.dart';

import '../../../core/enum.dart';
import '../../../core/text_styles.dart';
import '../../on_boarding/widgets/drop_down.dart';
import '../custom_text.dart';

class StateDropDown extends StatelessWidget {
  const StateDropDown(
      {Key? key,
      this.errorText,
      required this.stateName,
      required this.items,
      required this.onChange,
      required this.selectedValue})
      : super(key: key);
  final String? errorText;
  final String stateName;
  final Function onChange;
  final List<String> items;
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
                    value: e,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: CustomText3(
                        e ?? "",
                        style: TS().gRoboto(color: AppColor.black.val),
                      ),
                    ),
                  ))
              .toList(),
          onChange: (value, index) {
            onChange(items[index]);
          },
          child: CustomText3(selectedValue ?? "")),
    );
  }
}
