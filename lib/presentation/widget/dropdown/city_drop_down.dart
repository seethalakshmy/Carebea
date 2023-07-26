import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:flutter/material.dart';

import '../../../application/bloc/onboarding/onboarding_bloc.dart';
import '../../../core/enum.dart';
import '../../../core/text_styles.dart';
import '../../on_boarding/modules/personal_details/models/city_list_response.dart';
import '../../on_boarding/widgets/drop_down.dart';
import '../custom_text.dart';

class CityDropDown extends StatelessWidget {
  CityDropDown(
      {Key? key,
      this.errorText,
      required this.items,
      required this.onChange,
      required this.selectedValue,
      this.onSearchChanged,
      this.searchController,
      required this.onboardingBloc})
      : super(key: key);
  final String? errorText;
  final Function onChange;
  final List<City> items;
  final String? selectedValue;
  final TextEditingController? searchController;
  final Function? onSearchChanged;
  final OnboardingBloc onboardingBloc;
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    scrollController.addListener(() {
      if (scrollController.position.atEdge) {
        if (scrollController.position.pixels == 0) {
          print("scrolled to the top");
          // Scrolled to the top
        } else {
          onboardingBloc.cityPage++;
          onboardingBloc.add(const OnboardingEvent.cityList(
              searchQuery: '', wantLoading: false));
        }
      }
    });
    return CustomSizedBox(
      width: DBL.twoEighty.val,
      child: onboardingBloc.stateId.isEmpty
          ? Container(
              padding: const EdgeInsets.only(left: 20),
              alignment: Alignment.centerLeft,
              height: DBL.fortyEight.val,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: AppColor.borderColor.val)),
              child: CustomText(
                AppString.selectYourStateFirst.val,
                style: TS().gRoboto(
                    fontSize: FS.font13.val,
                    fontWeight: FW.w400.val,
                    color: AppColor.notAvailable.val),
              ),
            )
          : DropdownWidget(
              scrollController: scrollController,
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
                onboardingBloc.selectedCityName = items[index].cityName ?? "";
              },
              child: CustomText(selectedValue ?? "")),
    );
  }
}
