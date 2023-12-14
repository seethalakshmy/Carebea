import 'package:admin_580_tech/domain/on_boarding/models/preferences/preference_language_model.dart';
import 'package:admin_580_tech/presentation/widget/custom_container.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../application/bloc/onboarding/onboarding_bloc.dart';
import '../../../../../core/enum.dart';
import '../../../../../core/text_styles.dart';
import '../../../../../domain/on_boarding/models/preferences/pets_model.dart';
import '../../../../../domain/on_boarding/models/preferences/pets_type.dart';
import '../../../../../infrastructure/on_boarding/on_boarding_repository.dart';
import '../../../../widget/custom_button.dart';
import '../../../../widget/custom_sizedbox.dart';

class SampleDropdown extends StatefulWidget {
  const SampleDropdown(
      {super.key,
      required this.isFromLangauge,
      this.petList,
      this.languageList,
      required this.searchController,
      required this.onboardingBloc,
      required this.onSearchChanged});

  final bool isFromLangauge;
  final List<PetsModel>? petList;
  final List<PreferenceLanguageModel>? languageList;
  final TextEditingController searchController;
  final Function onSearchChanged;
  final OnboardingBloc onboardingBloc;

  @override
  State<SampleDropdown> createState() => _SampleDropdownState();
}

class _SampleDropdownState extends State<SampleDropdown> {
  final ScrollController scrollController = ScrollController();
  @override
  void initState() {
    scrollController.addListener(() {
      if (scrollController.position.atEdge) {
        if (scrollController.position.pixels == 0) {
          print("scrolled to the top");
          // Scrolled to the top
        } else {
          widget.onboardingBloc.languagePage++;
          widget.onboardingBloc.add(const OnboardingEvent.languageList("", []));
        }
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              widget.isFromLangauge
                  ? Container(
                      width: 100,
                      height: 30,
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: AppColor.amber2.val),
                          color: AppColor.white.val),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'English',
                            style: TextStyle(fontSize: 13),
                          ),
                        ],
                      ),
                    )
                  : const SizedBox.shrink(),
              Expanded(
                child: Wrap(
                    runSpacing: 5.0,
                    spacing: 8.0,
                    children: generateSelectedItemsList()),
              ),
            ],
          ),
          CustomSizedBox(height: DBL.ten.val),
          InkWell(
            borderRadius: BorderRadius.circular(10),
            onTap: () => openDropdown(context),
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: AppColor.borderColor.val),
                    borderRadius: BorderRadius.circular(10)),
                width: DBL.twoEighty.val,
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      widget.isFromLangauge
                          ? AppString.selectLanguage.val
                          : AppString.selectPets.val,
                      style: TS().gRoboto(
                          fontSize: FS.font16.val,
                          fontWeight: FW.w400.val,
                          color: AppColor.label.val),
                    ),
                    const Icon(Icons.arrow_drop_down),
                  ],
                )),
          ),
        ],
      ),
    );
  }

  void openDropdown(BuildContext context) {
    showDialog(
      barrierColor: AppColor.transparent.val,
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return BlocProvider(
              create: (context) => OnboardingBloc(OnBoardingRepository()),
              child: BlocBuilder<OnboardingBloc, OnboardingState>(
                builder: (context, state) {
                  return AlertDialog(
                    elevation: 10,
                    shadowColor: Colors.black,
                    backgroundColor: Colors.white,
                    surfaceTintColor: Colors.transparent,
                    content: CustomSizedBox(
                      width: 500, // Set a specific width for the container
                      child: Column(
                        children: [
                          Wrap(
                            runSpacing: 5.0,
                            spacing: 8.0,
                            children: generateSelectedItemsList(),
                          ),
                          CustomSizedBox(height: DBL.sixteen.val),
                          Container(
                            color: AppColor.offWhite.val,
                            child: TextFormField(
                              controller: widget.searchController,
                              onChanged: (val) {
                                setState(() {
                                  widget.onSearchChanged(val);
                                });
                              },
                              onFieldSubmitted: (val) {
                                setState(() {
                                  widget.onSearchChanged(val);
                                });
                              },
                              decoration: const InputDecoration(
                                  hintText: 'Search...',
                                  prefixIcon: Icon(Icons.search),
                                  enabledBorder: InputBorder.none,
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  focusedErrorBorder: InputBorder.none),
                            ),
                          ),
                          CustomSizedBox(height: DBL.sixteen.val),
                          Flexible(
                            child: ListView.separated(
                              controller: scrollController,
                              separatorBuilder: (context, index) {
                                return CustomContainer(
                                  height: DBL.one.val,
                                  color: AppColor.lightGrey.val,
                                );
                              },
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              itemCount: widget.isFromLangauge
                                  ? widget.languageList!.length
                                  : widget.petList!.length,
                              itemBuilder: (context, index) {
                                final selectedItem = widget.isFromLangauge
                                    ? widget.languageList![index]
                                    : widget.petList![index];
                                bool isSelected = false;
                                if (widget.isFromLangauge) {
                                  isSelected = widget
                                      .onboardingBloc.selectedLanguageList
                                      .map((e) => e.id)
                                      .contains(widget.languageList![index].id);
                                } else {
                                  isSelected = widget
                                      .onboardingBloc.selectedPetsList
                                      .map((e) => e.id)
                                      .contains(widget.petList![index].id);
                                }

                                return ListTile(
                                  // titleAlignment: ListTileTitleAlignment.center,
                                  leading: Checkbox(
                                    value: isSelected,
                                    onChanged: (value) {
                                      setState(() {
                                        addOrRemoveFunction(
                                            isSelected, selectedItem, index);
                                      });
                                    },
                                  ),
                                  title: CustomText(
                                    !widget.isFromLangauge
                                        ? widget.petList![index].name
                                        : widget.languageList![index].name,
                                    style: TS().gRoboto(
                                        color: AppColor.primaryColor.val,
                                        fontSize: FS.font14.val,
                                        fontWeight: FW.w400.val),
                                  ),
                                  trailing: widget.isFromLangauge
                                      ? Container(width: 10)
                                      : CustomContainer(
                                          width: 245.0,
                                          child: ButtonBar(
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    widget.petList![index]
                                                        .type = PetsType.INDOOR;
                                                  });
                                                },
                                                child: Container(
                                                  alignment: Alignment.center,
                                                  width: 70,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    border: Border.all(
                                                      color:
                                                          AppColor.amber2.val,
                                                    ),
                                                    color: widget
                                                                .petList![index]
                                                                .type ==
                                                            PetsType.INDOOR
                                                        ? AppColor.indoor.val
                                                        : AppColor.white.val,
                                                  ),
                                                  child: CustomText(
                                                    AppString.inDoor.val,
                                                    style: TS().gRoboto(
                                                        fontSize: FS.font13.val,
                                                        fontWeight:
                                                            FW.w400.val),
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    widget.petList![index]
                                                            .type =
                                                        PetsType.OUTDOOR;
                                                  });
                                                },
                                                child: Container(
                                                  alignment: Alignment.center,
                                                  width: 70,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    border: Border.all(
                                                      color: AppColor.red1.val,
                                                    ),
                                                    color: widget
                                                                .petList![index]
                                                                .type ==
                                                            PetsType.OUTDOOR
                                                        ? AppColor.outdoor.val
                                                        : AppColor.white.val,
                                                  ),
                                                  child: CustomText(
                                                    AppString.outDoor.val,
                                                    style: TS().gRoboto(
                                                        fontSize: FS.font13.val,
                                                        fontWeight:
                                                            FW.w400.val),
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    widget.petList![index]
                                                        .type = PetsType.BOTH;
                                                  });
                                                },
                                                child: Container(
                                                  alignment: Alignment.center,
                                                  width: 70,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    border: Border.all(
                                                      color: AppColor.blue1.val,
                                                    ),
                                                    color: widget
                                                                .petList![index]
                                                                .type ==
                                                            PetsType.BOTH
                                                        ? AppColor.both.val
                                                        : AppColor.white.val,
                                                  ),
                                                  child: CustomText(
                                                    AppString.both.val,
                                                    style: TS().gRoboto(
                                                        fontSize: FS.font13.val,
                                                        fontWeight:
                                                            FW.w400.val),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                  tileColor:
                                      isSelected ? Colors.grey[200] : null,
                                  onTap: () {
                                    setState(() {
                                      addOrRemoveFunction(
                                          isSelected, selectedItem, index);
                                    });
                                  },
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    actions: [
                      CustomButton(
                        text: AppString.ok.val,
                        onPressed: () {
                          if (widget.isFromLangauge) {
                            Navigator.of(context).pop(
                                widget.onboardingBloc.selectedLanguageList);
                          } else {
                            Navigator.of(context)
                                .pop(widget.onboardingBloc.selectedPetsList);
                          }
                        },
                      ),
                    ],
                  );
                },
              ),
            );
          },
        );
      },
    ).then((value) {
      setState(() {
        if (value != null) {
          if (widget.isFromLangauge) {
            widget.onboardingBloc.selectedLanguageList =
                List<PreferenceLanguageModel>.from(value);
          } else {
            widget.onboardingBloc.selectedPetsList =
                List<PetsModel>.from(value);
          }
        }
      });
    });
  }

  List<Widget> generateSelectedItemsList() {
    List<dynamic> selectedItems = widget.isFromLangauge
        ? widget.onboardingBloc.selectedLanguageList
        : widget.onboardingBloc.selectedPetsList;
    return List<Widget>.generate(selectedItems.length, (index) {
      final item = selectedItems[index];
      return Container(
        // width: 100,
        height: 30,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: widget.isFromLangauge
                ? AppColor.amber2.val
                : item.type == PetsType.INDOOR
                    ? AppColor.amber2.val
                    : item.type == PetsType.OUTDOOR
                        ? AppColor.red1.val
                        : AppColor.blue1.val,
          ),
          color: widget.isFromLangauge
              ? AppColor.white.val
              : item.type == PetsType.INDOOR
                  ? AppColor.indoor.val
                  : item.type == PetsType.OUTDOOR
                      ? AppColor.outdoor.val
                      : AppColor.both.val,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              item.name,
              style: const TextStyle(fontSize: 13),
            ),
            const SizedBox(
              width: 20,
            ),
            InkWell(
              borderRadius: BorderRadius.circular(50),
              onTap: () {
                setState(() {
                  if (widget.isFromLangauge) {
                    debugPrint('taped');
                    widget.onboardingBloc.selectedLanguageList.remove(item);
                    selectedItems.remove(item);
                  } else {
                    widget.onboardingBloc.selectedPetsList.remove(item);
                  }
                });
              },
              child: Container(
                width: 15,
                height: 15,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.transparent,
                  border: Border.all(color: Colors.black),
                ),
                child: const Icon(
                  Icons.close,
                  size: 11,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      );
    });
  }

  addOrRemoveFunction(bool isSelected, final selectedItem, int index) {
    if (isSelected) {
      if (!widget.isFromLangauge) {
        widget.onboardingBloc.selectedPetsList
            .removeWhere((item) => item.name == widget.petList![index].name);
      } else {
        widget.onboardingBloc.selectedLanguageList.removeWhere(
            (item) => item.name == widget.languageList![index].name);
      }
    } else {
      if (!widget.isFromLangauge &&
          !widget.onboardingBloc.selectedPetsList
              .map((e) => e.id)
              .toList()
              .contains(widget.petList![index].id)) {
        widget.onboardingBloc.selectedPetsList.add(widget.petList![index]);
      } else if (widget.isFromLangauge &&
          !widget.onboardingBloc.selectedLanguageList
              .map((e) => e.id)
              .toList()
              .contains(widget.languageList![index].id)) {
        widget.onboardingBloc.selectedLanguageList
            .add(widget.languageList![index]);
      }
    }
  }
}
