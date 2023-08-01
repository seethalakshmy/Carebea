import 'package:admin_580_tech/application/bloc/onboarding/onboarding_bloc.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:flutter/material.dart';

import '../../../core/enum.dart';
import '../../../core/text_styles.dart';
import '../../on_boarding/modules/personal_details/models/state_list_reponse.dart';
import '../../on_boarding/widgets/drop_down.dart';
import '../custom_text.dart';

class StateDropDown extends StatelessWidget {
  StateDropDown(
      {Key? key,
      this.errorText,
      required this.items,
      required this.onChange,
      required this.selectedValue,
      required this.onboardingBloc,
      this.onSearchChanged,
      this.searchController})
      : super(key: key);
  final String? errorText;
  final Function onChange;
  final List<StateItem> items;
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
          onboardingBloc.statePage++;
          onboardingBloc.add(const OnboardingEvent.stateList(
              stateSearchQuery: "", wantLoading: false));
        }
      }
    });
    return CustomSizedBox(
      width: DBL.twoEighty.val,
      child: DropdownWidget(
          scrollController: scrollController,
          showSearchBox: true,
          searchController: searchController,
          onSearchChanged: (val) {
            onSearchChanged!(val);
          },
          hint: AppString.state.val,
          errorText: errorText,
          items: items
              .map((e) => DropdownItem(
                    value: e.name,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: CustomText(
                        e.name ?? "",
                        style: TS().gRoboto(color: AppColor.black.val),
                      ),
                    ),
                  ))
              .toList(),
          onChange: (value, index) {
            onChange(items[index].name);
            onboardingBloc.stateId = items[index].id!;
            onboardingBloc.selectedStateName = items[index].name ?? "";
          },
          child: CustomText(selectedValue ?? "")),
    );
  }
}
