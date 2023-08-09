import 'package:admin_580_tech/application/bloc/onboarding/onboarding_bloc.dart';
import 'package:admin_580_tech/presentation/caregiver_creation/widgets/details_text_field_with_label.dart';
import 'package:admin_580_tech/presentation/on_boarding/modules/reference/widgets/referenceList.dart';
import 'package:admin_580_tech/presentation/on_boarding/widgets/common_padding_widget.dart';
import 'package:admin_580_tech/presentation/widget/custom_container.dart';
import 'package:admin_580_tech/presentation/widget/svg_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/bloc/form_validation/form_validation_bloc.dart';
import '../../../../core/custom_snackbar.dart';
import '../../../../core/enum.dart';
import '../../../../core/responsive.dart';
import '../../../../core/text_styles.dart';
import '../../../../infrastructure/on_boarding/on_boarding_repository.dart';
import '../../../../infrastructure/shared_preference/shared_preff_util.dart';
import '../../../widget/common_next_or_cancel_buttons.dart';
import '../../../widget/custom_button.dart';
import '../../../widget/custom_form.dart';
import '../../../widget/custom_listview_builder.dart';
import '../../../widget/custom_shimmer.dart';
import '../../../widget/custom_sizedbox.dart';
import '../../../widget/custom_text.dart';
import '../../../widget/dropdown/city_drop_down.dart';
import '../../../widget/dropdown/relation_drop_down.dart';
import '../../../widget/dropdown/state_drop_down.dart';
import '../personal_details/widgets/mobile_number_formatter.dart';
import '../personal_details/widgets/zip_code_formatter.dart';

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
  final stateSearchController = TextEditingController();
  final citySearchController = TextEditingController();

  @override
  void initState() {
    widget.onboardingBloc.add(const OnboardingEvent.relationList());
    widget.onboardingBloc.add(const OnboardingEvent.stateList(
        stateSearchQuery: "", wantLoading: true));
    super.initState();
  }

  @override
  void dispose() {
    widget.onboardingBloc.nameController.dispose();
    citySearchController.dispose();
    stateSearchController.dispose();
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
        child: BlocConsumer<OnboardingBloc, OnboardingState>(
          listener: (context, listenerState) {
            return listenerState.referenceOption.fold(() {}, (some) {
              some.fold((l) {
                CSnackBar.showError(context, msg: l.error);
              }, (r) {
                if (widget.onboardingBloc.nextButtonClicked) {
                  widget.pageController
                      .jumpToPage(widget.pageController.page!.toInt() + 1);
                }
              });
            });
          },
          bloc: widget.onboardingBloc,
          builder: (context, state) {
            return CommonPaddingWidget(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _topArea(context),
                Flexible(
                  child: state.referenceList.isNotEmpty
                      ? CustomListViewBuilder(
                          itemCount: state.referenceList.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              decoration: const BoxDecoration(
                                border: Border(
                                    left: BorderSide(
                                        width: 10, color: Colors.blueAccent)),
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      InkWell(
                                        child: Icon(Icons.delete),
                                        onTap: () {
                                          widget.onboardingBloc.add(
                                              OnboardingEvent.deleteReference(
                                                  index: index));
                                        },
                                      ),
                                      InkWell(
                                        child: Icon(Icons.edit),
                                        onTap: () {
                                          widget.onboardingBloc.add(
                                              OnboardingEvent.editReference(
                                                  index: index,
                                                  reference: state
                                                      .referenceList[index]));
                                          showDialog(
                                              context: context,
                                              builder: (context) {
                                                return addReferenceDialog(
                                                    context,
                                                    index: index);
                                              });
                                        },
                                      )
                                    ],
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 40, vertical: 40),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          ReferenceListContent(
                                              title: 'Name',
                                              subTitle: state
                                                      .referenceList[index]
                                                      .name ??
                                                  ''),
                                          ReferenceListContent(
                                              title: 'Phone No',
                                              subTitle: state
                                                      .referenceList[index]
                                                      .phone ??
                                                  ''),
                                          ReferenceListContent(
                                              title: 'Relationship',
                                              subTitle: state
                                                      .referenceList[index]
                                                      .relationship ??
                                                  ''),
                                          ReferenceListContent(
                                              title: 'Address',
                                              subTitle: state
                                                      .referenceList[index]
                                                      .address ??
                                                  ''),
                                          ReferenceListContent(
                                              title: 'Street',
                                              subTitle: state
                                                      .referenceList[index]
                                                      .street ??
                                                  ''),
                                          ReferenceListContent(
                                              title: 'State',
                                              subTitle: state
                                                      .referenceList[index]
                                                      .stateName ??
                                                  ''),
                                          ReferenceListContent(
                                              title: 'City',
                                              subTitle: state
                                                      .referenceList[index]
                                                      .cityName ??
                                                  ''),
                                          ReferenceListContent(
                                              title: 'Zip',
                                              subTitle: state
                                                      .referenceList[index]
                                                      .zip ??
                                                  ''),
                                        ],
                                      )),
                                  const CustomSizedBox(height: 10),
                                  const Divider(thickness: 2)
                                ],
                              ),
                            );
                          },
                        )
                      : const CustomSizedBox(),
                ),
                CustomSizedBox(height: DBL.twenty.val),
                _moreReferenceWidget(),
                BlocBuilder<FormValidationBloc, FormValidationState>(
                  bloc: formValidationBloc,
                  builder: (context, state) {
                    return CommonNextOrCancelButtons(
                      isLoading: false,
                      leftButtonName: AppString.back.val,
                      rightButtonName: AppString.next.val,
                      onLeftButtonPressed: () {
                        widget.onboardingBloc.nextButtonClicked = false;
                        widget.pageController.jumpToPage(
                            widget.pageController.page!.toInt() - 1);
                      },
                      onRightButtonPressed: () {
                        widget.onboardingBloc.nextButtonClicked = true;
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
          errorText: widget.onboardingBloc.selectedRelation.isEmpty
              ? AppString.emptyRelationship.val
              : '',
          items: widget.onboardingBloc.relationList,
          onChange: (id, name) {
            widget.onboardingBloc.selectedRelation = name;
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
          onboardingBloc: widget.onboardingBloc,
          onSearchChanged: (val) {
            widget.onboardingBloc.statePage = 1;
            widget.onboardingBloc.add(OnboardingEvent.stateList(
                stateSearchQuery: val, wantLoading: false));
          },
          searchController: stateSearchController,
          errorText: widget.onboardingBloc.state.nextClicked
              ? widget.onboardingBloc.selectedState.isEmpty
                  ? AppString.emptyState.val
                  : ""
              : "",
          items: widget.onboardingBloc.stateList,
          onChange: (value) {
            widget.onboardingBloc.selectedState = value.toString();
            widget.onboardingBloc.add(const OnboardingEvent.cityList(
                searchQuery: "", wantLoading: true));
            widget.onboardingBloc.selectedCityName = "";
          },
          selectedValue: widget.onboardingBloc.selectedStateName,
        ),
      ],
    );
  }

  _cityWidget(OnboardingState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        state.isInitialLoading
            ? CustomShimmerWidget.rectangular(
                height: DBL.twenty.val, width: DBL.hundred.val)
            : _labelWidget(AppString.city.val),
        CustomSizedBox(height: DBL.twelve.val),
        state.isCityApiCalling || state.isInitialLoading
            ? CustomShimmerWidget.rectangular(
                height: DBL.fifty.val, width: DBL.twoEighty.val)
            : CityDropDown(
                onboardingBloc: widget.onboardingBloc,
                searchController: citySearchController,
                onSearchChanged: (val) {
                  widget.onboardingBloc.cityPage = 1;
                  widget.onboardingBloc.add(OnboardingEvent.cityList(
                      searchQuery: val, wantLoading: false));
                },
                errorText: widget.onboardingBloc.state.nextClicked
                    ? widget.onboardingBloc.selectedCity.isEmpty
                        ? AppString.emptyCity.val
                        : ""
                    : "",
                items: widget.onboardingBloc.cityList,
                onChange: (value) {
                  widget.onboardingBloc.selectedCity = value;
                },
                selectedValue: widget.onboardingBloc.selectedCityName,
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

  _moreReferenceWidget() {
    return InkWell(
      onTap: () {
        widget.onboardingBloc.clearData();
        showDialog(
            context: context,
            builder: (context) {
              return addReferenceDialog(context);
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

  Padding addReferenceDialog(BuildContext context, {int? index}) {
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
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0, top: 20.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: CustomContainer(
                          height: 20,
                          width: 20,
                          child: SVGText(
                            path: IMG.iconClose.val,
                            name: '',
                            height: 20,
                            width: 20,
                          )),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Responsive.isMobile(context) ? 24 : 48,
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
                            controller: widget.onboardingBloc.nameController,
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
                            suffixIcon: const CustomContainer(width: 0)),
                      ),
                      CustomSizedBox(
                        width: DBL.twoEighty.val,
                        child: DetailsTextFieldWithLabel(
                            inputFormatter: [
                              FilteringTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(10),
                              MobileNumberFormatter(),
                            ],
                            isMandatory: false,
                            controller: widget.onboardingBloc.phoneController,
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
                            suffixIcon: CustomContainer(width: DBL.zero.val)),
                      ),
                      _relationWidget(),
                      CustomSizedBox(
                        width: DBL.twoEighty.val,
                        child: DetailsTextFieldWithLabel(
                            isMandatory: false,
                            controller: widget.onboardingBloc.streetController,
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
                            suffixIcon: const CustomContainer(width: 0)),
                      ),
                      // _addressWidget(),
                      CustomSizedBox(
                        width: DBL.twoEighty.val,
                        child: DetailsTextFieldWithLabel(
                            isMandatory: false,
                            controller: widget.onboardingBloc.addressController,
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
                            suffixIcon: const CustomContainer(width: 0)),
                      ),
                      _cityWidget(widget.onboardingBloc.state),
                      _stateWidget(),
                      CustomSizedBox(
                        width: DBL.twoEighty.val,
                        child: DetailsTextFieldWithLabel(
                            inputFormatter: [
                              FilteringTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(9),
                              ZipCodeFormatter(),
                            ],
                            isMandatory: false,
                            controller: widget.onboardingBloc.zipController,
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
                            suffixIcon: const CustomContainer(width: 0)),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50.0, bottom: 20.0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: CustomButton(
                    height: 45,
                    minWidth: 120,
                    text: AppString.save.val,
                    icon: const CustomSizedBox(),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        if (index != null) {
                          widget.onboardingBloc.add(
                              OnboardingEvent.updateReference(index: index));
                        } else {
                          widget.onboardingBloc
                              .add(const OnboardingEvent.addReference());
                        }
                        Navigator.pop(context);
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
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
    widget.onboardingBloc.add(
        OnboardingEvent.submitReference(userId: SharedPreffUtil().getUserId));
    // setState(() {
    //   widget.pageController
    //       .jumpToPage(widget.pageController.page!.toInt() + 1);
    // });
    // }
  }
}
