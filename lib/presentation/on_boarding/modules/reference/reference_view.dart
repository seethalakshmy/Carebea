import 'package:admin_580_tech/application/bloc/onboarding/onboarding_bloc.dart';
import 'package:admin_580_tech/presentation/caregiver_creation/widgets/details_text_field_with_label.dart';
import 'package:admin_580_tech/presentation/on_boarding/modules/reference/widgets/referenceList.dart';
import 'package:admin_580_tech/presentation/on_boarding/widgets/common_padding_widget.dart';
import 'package:admin_580_tech/presentation/widget/custom_container.dart';
import 'package:admin_580_tech/presentation/widget/svg_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/bloc/form_validation/form_validation_bloc.dart';
import '../../../../core/enum.dart';
import '../../../../core/responsive.dart';
import '../../../../core/text_styles.dart';
import '../../../../infrastructure/on_boarding/on_boarding_repository.dart';
import '../../../../infrastructure/shared_preference/shared_preff_util.dart';
import '../../../widget/common_next_or_cancel_buttons.dart';
import '../../../widget/custom_button.dart';
import '../../../widget/custom_form.dart';
import '../../../widget/custom_listview_builder.dart';
import '../../../widget/custom_sizedbox.dart';
import '../../../widget/custom_text.dart';
import '../../../widget/dropdown/city_drop_down.dart';
import '../../../widget/dropdown/relation_drop_down.dart';
import '../../../widget/dropdown/state_drop_down.dart';

class ReferenceView extends StatefulWidget {
  const ReferenceView(
      {Key? key, required this.onboardingBloc, required this.pageController})
      : super(key: key);
  final OnboardingBloc onboardingBloc;
  final PageController pageController;

  @override
  State<ReferenceView> createState() => _ReferenceViewState();
}

class _ReferenceViewState extends State<ReferenceView> {
  final FocusNode nameFocusNode = FocusNode();
  final FocusNode phoneFocusNode = FocusNode();
  final FocusNode streetFocusNode = FocusNode();
  final FocusNode addressFocusNode = FocusNode();
  final FocusNode zipFocusNode = FocusNode();

  bool nextClicked = false;

  final FormValidationBloc formValidationBloc = FormValidationBloc();
  AutovalidateMode _validateMode = AutovalidateMode.disabled;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    widget.onboardingBloc.add(OnboardingEvent.relationList());
    super.initState();
  }

  @override
  void dispose() {
    widget.onboardingBloc.nameController.dispose();
    // phoneController.dispose();
    // streetController.dispose();
    // zipController.dispose();
    // addressController.dispose();

    nameFocusNode.dispose();
    phoneFocusNode.dispose();
    streetFocusNode.dispose();
    zipFocusNode.dispose();
    addressFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => FormValidationBloc()),
          BlocProvider(
              create: (context) => OnboardingBloc(OnBoardingRepository())),
        ],
        child: BlocBuilder<OnboardingBloc, OnboardingState>(
          bloc: widget.onboardingBloc,
          builder: (context, onBoardingState) {
            return CommonPaddingWidget(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _topArea(context),
                Flexible(
                  child: CustomContainer(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Container(
                        height: 100,
                        color: Colors.red,
                        child: CustomListViewBuilder(
                          itemCount: widget.onboardingBloc.reference.length,
                          itemBuilder: (BuildContext context, int index) {
                            Container(
                              decoration: BoxDecoration(
                                border: const Border(
                                    left: BorderSide(
                                        width: 10, color: Colors.blueAccent)),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 10),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    ReferenceListContent(
                                        title: 'Name',
                                        subTitle: widget.onboardingBloc
                                                .reference[index].name ??
                                            ""),
                                    ReferenceListContent(
                                        title: "City",
                                        subTitle: widget.onboardingBloc
                                                .reference[index].city ??
                                            ''),
                                    // ReferenceListContent(
                                    //     title: LocaleKeys.frequency.tr,
                                    //     subTitle: item.frequency ?? ""),
                                    // ReferenceListContent(
                                    //     title: LocaleKeys.expiration_date.tr,
                                    //     subTitle: item.expiry ?? ""),
                                    // ReferenceListContent(
                                    //     title: LocaleKeys.prescribing_doctor.tr,
                                    //     subTitle: item.prescribingDoctor ?? ""),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      )),
                ),
                CustomSizedBox(height: DBL.twenty.val),
                _moreReferenceWidget(() {
                  /*onTap Function*/
                }),
                BlocBuilder<FormValidationBloc, FormValidationState>(
                  bloc: formValidationBloc,
                  builder: (context, state) {
                    return CommonNextOrCancelButtons(
                      isLoading: false,
                      leftButtonName: AppString.back.val,
                      rightButtonName: AppString.next.val,
                      onLeftButtonPressed: () {
                        widget.pageController.jumpToPage(
                            widget.pageController.page!.toInt() - 1);
                      },
                      onRightButtonPressed: () {
                        checkInputData();
                      },
                    );
                  },
                )
              ],
            ));
          },
        ));
  }

  _topArea(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomSizedBox(height: DBL.ten.val),
        CustomText(
          AppString.reference.val,
          softWrap: true,
          style: TS().gRoboto(
              fontSize: Responsive.isWeb(context)
                  ? DBL.nineteen.val
                  : DBL.sixteen.val,
              fontWeight: FW.w500.val,
              color: AppColor.primaryColor.val),
          textAlign: TextAlign.start,
        ),
        CustomSizedBox(height: DBL.fifteen.val),
        CustomContainer(
          width: MediaQuery.of(context).size.width * 0.8,
          height: DBL.one.val,
          color: AppColor.lightGrey.val,
        ),
        CustomSizedBox(height: DBL.ten.val),
      ],
    );
  }

  _relationWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _labelWidget(AppString.relationship.val),
        CustomSizedBox(height: DBL.twelve.val),
        RelationDropDown(
          errorText: nextClicked
              ? widget.onboardingBloc.selectedRelation.isEmpty
                  ? AppString.emptyRelationship.val
                  : ""
              : "",
          items: widget.onboardingBloc.relationList,
          onChange: (id, name) {
            widget.onboardingBloc.selectedRelation = name.toString();
            print(" value in onchanged : ${name}");
            widget.onboardingBloc.relationId = id;
            widget.onboardingBloc.add(const OnboardingEvent.relationList());
            print("relation ${widget.onboardingBloc.relationId}");
          },
          selectedValue: widget.onboardingBloc.selectedRelation,
        ),
      ],
    );
  }

  _stateWidget() {
    print('statelist ${widget.onboardingBloc.stateList}');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _labelWidget(AppString.state.val),
        CustomSizedBox(height: DBL.twelve.val),
        StateDropDown(
          onSearchChanged: (val) {
            widget.onboardingBloc.add(const OnboardingEvent.stateList());
            widget.onboardingBloc.stateSearchKey = val;
          },
          searchController: widget.onboardingBloc.stateSearchController,
          errorText: nextClicked
              ? widget.onboardingBloc.selectedState.isEmpty
                  ? AppString.emptyState.val
                  : ""
              : "",
          items: widget.onboardingBloc.stateList,
          onChange: (id, name) {
            widget.onboardingBloc.selectedState = name.toString();
            print("state value in onchanged : $name");
            widget.onboardingBloc.stateId = id;
            widget.onboardingBloc.add(const OnboardingEvent.cityList());
          },
          selectedValue: widget.onboardingBloc.selectedState,
        ),
      ],
    );
  }

  _cityWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _labelWidget(AppString.city.val),
        CustomSizedBox(height: DBL.twelve.val),
        CityDropDown(
          searchController: widget.onboardingBloc.citySearchController,
          onSearchChanged: (val) {
            widget.onboardingBloc.add(const OnboardingEvent.cityList());
            widget.onboardingBloc.citySearchKey = val;
          },
          errorText: nextClicked
              ? widget.onboardingBloc.selectedCity.isEmpty
                  ? AppString.emptyCity.val
                  : ""
              : "",
          items: widget.onboardingBloc.cityList,
          onChange: (id, name) {
            widget.onboardingBloc.selectedCity = name.toString();
            widget.onboardingBloc.selectedCityId = id;
            print("city value in onchanged : $name");
          },
          selectedValue: widget.onboardingBloc.selectedCity,
        ),
      ],
    );
  }

  _labelWidget(String label) {
    return CustomText(label,
        style: TS().gRoboto(
            fontWeight: FW.w400.val,
            color: AppColor.label.val,
            fontSize: FS.font16.val));
  }

  _moreReferenceWidget(Function() onTap) {
    return InkWell(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) {
              return Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Responsive.isMobile(context) ? 24 : 100,
                    vertical: Responsive.isMobile(context) ? 24 : 100),
                child: Material(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: SizedBox(
                                  height: 64,
                                  width: 64,
                                  child: SVGText(
                                      path: IMG.iconClose.val, name: '')),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  Responsive.isMobile(context) ? 24 : 48,
                              vertical: Responsive.isMobile(context) ? 24 : 48),
                          child: CForm(
                            formKey: _formKey,
                            autoValidateMode: _validateMode,
                            child: Wrap(
                              spacing: DBL.twenty.val,
                              runSpacing: DBL.twenty.val,
                              alignment: WrapAlignment.start,
                              children: [
                                CustomSizedBox(
                                  width: DBL.twoEighty.val,
                                  child: DetailsTextFieldWithLabel(
                                      isMandatory: false,
                                      controller:
                                          widget.onboardingBloc.nameController,
                                      textInputAction: TextInputAction.next,
                                      textInputType: TextInputType.name,
                                      focusNode: nameFocusNode,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return AppString.emptyName.val;
                                        }
                                        return null;
                                      },
                                      labelName: AppString.name.val,
                                      suffixIcon:
                                          const CustomContainer(width: 0)),
                                ),
                                CustomSizedBox(
                                  width: DBL.twoEighty.val,
                                  child: DetailsTextFieldWithLabel(
                                      isMandatory: false,
                                      controller:
                                          widget.onboardingBloc.phoneController,
                                      textInputAction: TextInputAction.next,
                                      textInputType: TextInputType.name,
                                      focusNode: phoneFocusNode,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return AppString.emptyPhone.val;
                                        }
                                        return null;
                                      },
                                      labelName: AppString.phoneNumber.val,
                                      suffixIcon:
                                          CustomContainer(width: DBL.zero.val)),
                                ),
                                _relationWidget(),
                                CustomSizedBox(
                                  width: DBL.twoEighty.val,
                                  child: DetailsTextFieldWithLabel(
                                      isMandatory: false,
                                      controller: widget
                                          .onboardingBloc.streetController,
                                      textInputAction: TextInputAction.next,
                                      textInputType: TextInputType.name,
                                      focusNode: streetFocusNode,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return AppString.emptyStreet.val;
                                        }
                                        return null;
                                      },
                                      labelName: AppString.street.val,
                                      suffixIcon:
                                          const CustomContainer(width: 0)),
                                ),
                                // _addressWidget(),
                                CustomSizedBox(
                                  width: DBL.twoEighty.val,
                                  child: DetailsTextFieldWithLabel(
                                      isMandatory: false,
                                      controller: widget
                                          .onboardingBloc.addressController,
                                      textInputAction: TextInputAction.next,
                                      textInputType: TextInputType.name,
                                      focusNode: addressFocusNode,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return AppString.emptyAddress.val;
                                        }
                                        return null;
                                      },
                                      labelName: AppString.address.val,
                                      suffixIcon:
                                          const CustomContainer(width: 0)),
                                ),
                                _cityWidget(),
                                _stateWidget(),
                                CustomSizedBox(
                                  width: DBL.twoEighty.val,
                                  child: DetailsTextFieldWithLabel(
                                      isMandatory: false,
                                      controller:
                                          widget.onboardingBloc.zipController,
                                      textInputAction: TextInputAction.next,
                                      textInputType: TextInputType.name,
                                      focusNode: zipFocusNode,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return AppString.emptyZip.val;
                                        }
                                        return null;
                                      },
                                      labelName: AppString.zip.val,
                                      suffixIcon:
                                          const CustomContainer(width: 0)),
                                ),
                                CustomButton(
                                  text: 'Save',
                                  icon: SizedBox(),
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      widget.onboardingBloc
                                          .addToReferenceList();
                                      Navigator.pop(context);
                                    }
                                  },
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            });
      },
      child: CustomContainer(
        alignment: Alignment.centerLeft,
        height: DBL.fifty.val,
        width: DBL.oneSixty.val,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                CustomContainer(
                  width: DBL.twenty.val,
                  height: DBL.twenty.val,
                  child: SVGText(
                    path: IMG.roundAdd.val,
                    name: "",
                    width: DBL.twenty.val,
                    height: DBL.twenty.val,
                  ),
                ),
                CustomText(
                  AppString.addMoreReference.val,
                  style: TS().gRoboto(
                      fontSize: FS.font14.val,
                      fontWeight: FW.w500.val,
                      color: AppColor.primaryColor.val),
                )
              ],
            ),
            CustomContainer(
              width: DBL.oneFifty.val,
              height: DBL.one.val,
              color: AppColor.primaryColor.val,
            )
          ],
        ),
      ),
    );
  }

  checkInputData() {
    if (_validateMode != AutovalidateMode.always) {
      setState(() {
        nextClicked = true;
      });
      formValidationBloc.add(const FormValidationEvent.submit());
    }
    // if (_formKey.currentState!.validate()) {
    print('hello');
    widget.onboardingBloc.add(OnboardingEvent.submitReference(
        userId: SharedPreffUtil().getUserId,
        referenceList:
            widget.onboardingBloc.reference.map((e) => e.toJson()).toList()));
    // setState(() {
    //   widget.pageController
    //       .jumpToPage(widget.pageController.page!.toInt() + 1);
    // });
    // }
  }
}
