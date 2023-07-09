import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:flutter/material.dart';

import '../../../core/enum.dart';
import '../../../core/text_styles.dart';
import '../../on_boarding/modules/personal_details/models/city_list_response.dart';
import '../../on_boarding/widgets/drop_down.dart';
import '../custom_text.dart';

class CityDropDown extends StatelessWidget {
  const CityDropDown(
      {Key? key,
      this.errorText,
      required this.items,
      required this.onChange,
      required this.selectedValue,
      this.onSearchChanged,
      this.searchController})
      : super(key: key);
  final String? errorText;
  final Function onChange;
  final List<City> items;
  final String? selectedValue;
  final TextEditingController? searchController;
  final Function? onSearchChanged;

  @override
  Widget build(BuildContext context) {
    return CustomSizedBox(
      width: DBL.twoEighty.val,
      child: DropdownWidget(
          showSearchBox: true,
          searchController: searchController,
          onSearchChanged: (val) {
            onSearchChanged!(val);
          },
          hint: AppString.city.val,
          errorText: errorText,
          items: items
              .map((e) => DropdownItem(
                    value: e.cityName,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: CustomText(
                        e.cityName ?? "",
                        style: TS().gRoboto(color: AppColor.black.val),
                      ),
                    ),
                  ))
              .toList(),
          onChange: (value, index) {
            onChange(items[index].id);
          },
          child: CustomText(selectedValue ?? "")),
    );
  }
}
