import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

import '../../../application/bloc/get_states_bloc/get_states_bloc.dart';
import '../../../application/bloc/onboarding/onboarding_bloc.dart';
import '../../../core/enum.dart';
import '../../on_boarding/modules/personal_details/models/state_item.dart';
import '../custom_sizedbox.dart';

class NewStateDropDown extends StatelessWidget {
  final TextEditingController? searchController;
  final Function(StateItem val)? onSearchChanged;
  final OnboardingBloc onboardingBloc;
  final StateItem? initial;

  const NewStateDropDown(
      {super.key,
      required this.searchController,
      required this.onSearchChanged,
      required this.onboardingBloc,
      required this.initial});

  @override
  Widget build(BuildContext context) {
    return CustomSizedBox(
      width: DBL.twoEighty.val,
      child: BlocBuilder<GetStatesBloc, GetStatesState>(
        builder: (context, state) {
          return state.when(
              // initial: () => DropdownButtonFormField2<StateItem>(
              //       buttonHeight: DBL.fifty.val,
              //       buttonPadding: EdgeInsets.zero,
              //       validator: (value) {
              //         if (value == null ||
              //             value.id == null ||
              //             value.name == null ||
              //             value.name?.trim() == "") {
              //           return "This field is mandatory";
              //         }
              //       },
              //       dropdownDecoration: BoxDecoration(border: Border()),
              //       dropdownPadding: EdgeInsets.zero,
              //       searchController: searchController,
              //       // buttonDecoration: BoxDecoration(
              //       //     color: Colors.white,
              //       //     borderRadius: BorderRadius.circular(6),
              //       //     border: Border.all(
              //       //         color: AppColor.borderColor.val, width: 1)),
              //       onChanged: (val) {
              //         if (val == null) {
              //           return;
              //         } else {
              //           onSearchChanged!(val);
              //         }
              //       },
              //       value: null,
              //       items: []
              //           .map((e) => DropdownMenuItem<StateItem>(
              //                 value: e,
              //                 child: Container(
              //                   padding: const EdgeInsets.symmetric(
              //                       horizontal: 20, vertical: 10),
              //                   child: CustomText(
              //                     e.name ?? "",
              //                     style:
              //                         TS().gRoboto(color: AppColor.black.val),
              //                   ),
              //                 ),
              //               ))
              //           .toList(),
              //     ),
              initial: () => TypeAheadFormField<StateItem>(validator: (value) {
                    if (value == null || value.trim() == "") {
                      return "This field is mandatory";
                    }
                  }, onSuggestionSelected: (val) {
                    if (val == null) {
                      return;
                    } else {
                      onSearchChanged!(val);
                    }
                  }, itemBuilder: (context, item) {
                    return Container();
                  }, suggestionsCallback: (val) {
                    return [];
                  }),
              loading: (_) => Container(),
              failed: (error) =>
                  TypeAheadFormField<StateItem>(validator: (value) {
                    if (value == null || value.trim() == "") {
                      return "This field is mandatory";
                    }
                  }, onSuggestionSelected: (val) {
                    if (val == null) {
                      return;
                    } else {
                      onSearchChanged!(val);
                    }
                  }, itemBuilder: (context, item) {
                    return Container();
                  }, suggestionsCallback: (val) {
                    return [];
                  }),
              success: (items) {
                return TypeAheadFormField<StateItem>(
                    initialValue: initial?.name,
                    validator: (value) {
                      if (value == null || value.trim() == "") {
                        return "This field is mandatory";
                      }
                    },
                    onSuggestionSelected: (val) {
                      if (val == null) {
                        return;
                      } else {
                        onSearchChanged!(val);
                      }
                    },
                    itemBuilder: (context, item) {
                      return Container(
                        child: Center(
                          child: Text(item.name ?? ""),
                        ),
                      );
                    },
                    suggestionsCallback: (val) {
                      BlocProvider.of<GetStatesBloc>(context).add(
                          GetStatesEvent.fetch(
                              previousData: [],
                              page: "1",
                              searchKey: "${val.trim().toLowerCase()}"));
                      return items;
                    });
              });
        },
      ),
    );
  }
}
