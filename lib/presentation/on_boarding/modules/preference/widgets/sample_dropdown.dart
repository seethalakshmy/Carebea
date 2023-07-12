import 'package:admin_580_tech/application/bloc/onboarding/onboarding_bloc.dart';
import 'package:admin_580_tech/domain/on_boarding/models/preferences/preference_language_model.dart';
import 'package:admin_580_tech/presentation/widget/custom_container.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:flutter/material.dart';

import '../../../../../core/enum.dart';
import '../../../../../core/text_styles.dart';
import '../../../../../domain/on_boarding/models/preferences/pets_model.dart';
import '../../../../../domain/on_boarding/models/preferences/pets_type.dart';
import '../../../../widget/custom_button.dart';
import '../../../../widget/custom_sizedbox.dart';

class SampleDropdown extends StatefulWidget {
  const SampleDropdown(
      {super.key,
      required this.isFromLangauge,
      this.petList,
      this.languageList,
      required this.searchController,
      required this.onboardingBloc});

  final bool isFromLangauge;
  final List<PetsModel>? petList;
  final List<PreferenceLanguageModel>? languageList;
  final TextEditingController searchController;
  final OnboardingBloc onboardingBloc;

  @override
  State<SampleDropdown> createState() => _SampleDropdownState();
}

class _SampleDropdownState extends State<SampleDropdown> {
  List<PetsModel> selectedPetItems = [];
  List<PreferenceLanguageModel> selectedLanguageItems = [];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Wrap(
                  runSpacing: 5.0,
                  spacing: 8.0,
                  children: generateSelectedItemsList()),
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
                      AppString.select.val,
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
            return AlertDialog(
              elevation: 10,
              shadowColor: Colors.black,
              backgroundColor: Colors.white,
              surfaceTintColor: Colors.transparent,
              content: CustomSizedBox(
                width: 400, // Set a specific width for the container
                child: SingleChildScrollView(
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
                              widget.onboardingBloc.petSearchKey = val;
                            });
                            widget.onboardingBloc
                                .add(OnboardingEvent.petsList());
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
                      ListView.separated(
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
                          final item = widget.isFromLangauge
                              ? widget.languageList![index]
                              : widget.petList![index];
                          bool isSelected = false;
                          if (widget.isFromLangauge) {
                            isSelected = selectedLanguageItems.contains(item);
                          } else {
                            isSelected = selectedPetItems.contains(item);
                          }

                          return ListTile(
                            // titleAlignment: ListTileTitleAlignment.center,
                            leading: Checkbox(
                              value: widget.isFromLangauge
                                  ? selectedLanguageItems.contains(item)
                                  : selectedPetItems.contains(item),
                              onChanged: (value) {
                                setState(() {
                                  if (isSelected) {
                                    if (!widget.isFromLangauge) {
                                      selectedPetItems.removeWhere((item) =>
                                          item.name ==
                                          widget.petList![index].name);
                                    } else {
                                      selectedLanguageItems.removeWhere(
                                          (item) =>
                                              item.name ==
                                              widget.languageList![index].name);
                                    }
                                  } else {
                                    if (!widget.isFromLangauge) {
                                      selectedPetItems
                                          .add(widget.petList![index]);
                                    } else {
                                      selectedLanguageItems
                                          .add(widget.languageList![index]);
                                    }
                                  }
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
                                ? Container(width: 230)
                                : CustomContainer(
                                    width: 245.0,
                                    child: ButtonBar(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              widget.petList![index].type =
                                                  PetsType.INDOOR;
                                            });
                                          },
                                          child: Container(
                                            alignment: Alignment.center,
                                            width: 70,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                color: AppColor.amber2.val,
                                              ),
                                              color:
                                                  widget.petList![index].type ==
                                                          PetsType.INDOOR
                                                      ? AppColor.indoor.val
                                                      : AppColor.white.val,
                                            ),
                                            child: CustomText(
                                              AppString.inDoor.val,
                                              style: TS().gRoboto(
                                                  fontSize: FS.font13.val,
                                                  fontWeight: FW.w400.val),
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              widget.petList![index].type =
                                                  PetsType.OUTDOOR;
                                            });
                                          },
                                          child: Container(
                                            alignment: Alignment.center,
                                            width: 70,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                color: AppColor.red1.val,
                                              ),
                                              color:
                                                  widget.petList![index].type ==
                                                          PetsType.OUTDOOR
                                                      ? AppColor.outdoor.val
                                                      : AppColor.white.val,
                                            ),
                                            child: CustomText(
                                              AppString.outDoor.val,
                                              style: TS().gRoboto(
                                                  fontSize: FS.font13.val,
                                                  fontWeight: FW.w400.val),
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              widget.petList![index].type =
                                                  PetsType.BOTH;
                                            });
                                          },
                                          child: Container(
                                            alignment: Alignment.center,
                                            width: 70,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                color: AppColor.blue1.val,
                                              ),
                                              color:
                                                  widget.petList![index].type ==
                                                          PetsType.BOTH
                                                      ? AppColor.both.val
                                                      : AppColor.white.val,
                                            ),
                                            child: CustomText(
                                              AppString.both.val,
                                              style: TS().gRoboto(
                                                  fontSize: FS.font13.val,
                                                  fontWeight: FW.w400.val),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                            tileColor: isSelected ? Colors.grey[200] : null,
                            onTap: () {
                              setState(() {
                                if (isSelected) {
                                  if (!widget.isFromLangauge) {
                                    selectedPetItems.remove(item);
                                  } else {
                                    selectedLanguageItems.remove(item);
                                  }
                                } else {
                                  if (!widget.isFromLangauge) {
                                    if (!selectedPetItems.contains(item)) {
                                      selectedPetItems
                                          .add(widget.petList![index]);
                                    } else {
                                      if (!selectedLanguageItems
                                          .contains(item)) {
                                        selectedLanguageItems
                                            .add(widget.languageList![index]);
                                      }
                                    }
                                  }
                                }
                              });
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              actions: [
                CustomButton(
                  text: AppString.ok.val,
                  onPressed: () {
                    if (widget.isFromLangauge) {
                      Navigator.of(context).pop(selectedLanguageItems);
                    } else {
                      Navigator.of(context).pop(selectedPetItems);
                    }
                  },
                ),
              ],
            );
          },
        );
      },
    ).then((value) {
      setState(() {
        if (value != null) {
          if (widget.isFromLangauge) {
            selectedLanguageItems = List<PreferenceLanguageModel>.from(value);
          } else {
            selectedPetItems = List<PetsModel>.from(value);
          }
        }
      });
    });
  }

  List<Widget> generateSelectedItemsList() {
    return List<Widget>.generate(
        widget.isFromLangauge
            ? selectedLanguageItems.length
            : selectedPetItems.length, (index) {
      var item;
      if (widget.isFromLangauge) {
        item = selectedLanguageItems[index];
      } else {
        item = selectedPetItems[index];
      }

      return Container(
        width: 90,
        height: 30,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: widget.petList![index].type == PetsType.INDOOR
                ? AppColor.amber2.val
                : widget.petList![index].type == PetsType.OUTDOOR
                    ? AppColor.red1.val
                    : AppColor.blue1.val,
          ),
          color: widget.petList![index].type == PetsType.INDOOR
              ? AppColor.indoor.val
              : widget.petList![index].type == PetsType.OUTDOOR
                  ? AppColor.outdoor.val
                  : AppColor.both.val,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              item.name,
              style: const TextStyle(fontSize: 13),
            ),
            InkWell(
              borderRadius: BorderRadius.circular(50),
              onTap: () {
                setState(() {
                  if (widget.isFromLangauge) {
                    selectedLanguageItems.remove(item);
                  } else {
                    selectedPetItems.remove(item);
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
}
