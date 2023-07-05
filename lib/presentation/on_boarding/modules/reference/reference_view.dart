import 'package:admin_580_tech/application/bloc/onboarding/onboarding_bloc.dart';
import 'package:admin_580_tech/presentation/caregiver_creation/widgets/details_text_field_with_label.dart';
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
import '../../../widget/common_next_or_cancel_buttons.dart';
import '../../../widget/custom_form.dart';
import '../../../widget/custom_sizedbox.dart';
import '../../../widget/custom_text.dart';
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
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController streetController = TextEditingController();
  final TextEditingController zipController = TextEditingController();

  final FocusNode nameFocusNode = FocusNode();
  final FocusNode phoneFocusNode = FocusNode();
  final FocusNode streetFocusNode = FocusNode();
  final FocusNode zipFocusNode = FocusNode();

  bool nextClicked = false;
  String selectedState = "";
  String selectedCity = "";
  String selectedRelation = "";
  String selectedAddress = "";
  final FormValidationBloc formValidationBloc = FormValidationBloc();
  AutovalidateMode _validateMode = AutovalidateMode.disabled;
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    nameController.dispose();
    phoneController.dispose();
    streetController.dispose();
    zipController.dispose();

    nameFocusNode.dispose();
    phoneFocusNode.dispose();
    streetFocusNode.dispose();
    zipFocusNode.dispose();
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
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        CForm(
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
                                    controller: nameController,
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
                                    controller: phoneController,
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
                              _addressWidget(),
                              CustomSizedBox(
                                width: DBL.twoEighty.val,
                                child: DetailsTextFieldWithLabel(
                                    isMandatory: false,
                                    controller: streetController,
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
                              _cityWidget(),
                              _stateWidget(),
                              CustomSizedBox(
                                width: DBL.twoEighty.val,
                                child: DetailsTextFieldWithLabel(
                                    isMandatory: false,
                                    controller: zipController,
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
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                CustomSizedBox(height: DBL.twenty.val),
                _moreReferenceWidget(() {
                  /*onTap Function*/
                }),
                BlocBuilder<FormValidationBloc, FormValidationState>(
                  bloc: formValidationBloc,
                  builder: (context, state) {
                    return CommonNextOrCancelButtons(
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
        StateDropDown(
          errorText: nextClicked
              ? selectedRelation.isEmpty
                  ? AppString.emptyRelationship.val
                  : ""
              : "",
          stateName: "",
          items: ["Relation 1", "Relation 2", "Relation 3"],
          onChange: (value) {
            selectedRelation = value;
          },
          selectedValue: selectedRelation,
        ),
      ],
    );
  }

  _addressWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _labelWidget(AppString.address.val),
        CustomSizedBox(height: DBL.twelve.val),
        StateDropDown(
          errorText: nextClicked
              ? selectedAddress.isEmpty
                  ? AppString.emptyAddress.val
                  : ""
              : "",
          stateName: "",
          items: ["Address 1", "Address 2", "Address 3"],
          onChange: (value) {
            selectedAddress = value;
          },
          selectedValue: selectedAddress,
        ),
      ],
    );
  }

  _stateWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _labelWidget(AppString.state.val),
        CustomSizedBox(height: DBL.twelve.val),
        StateDropDown(
          errorText: nextClicked
              ? selectedState.isEmpty
                  ? AppString.emptyState.val
                  : ""
              : "",
          stateName: "",
          items: ["Kerala", "Karnataka", "Tamil Nadu"],
          onChange: (value) {
            selectedState = value;
          },
          selectedValue: selectedState,
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
        StateDropDown(
          errorText: nextClicked
              ? selectedCity.isEmpty
                  ? AppString.emptyCity.val
                  : ""
              : "",
          stateName: "",
          items: ["Kannur", "Wayanad", "Ernakulam"],
          onChange: (value) {
            selectedCity = value;
          },
          selectedValue: selectedCity,
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
      onTap: onTap,
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
    if (_formKey.currentState!.validate()) {
      setState(() {
        widget.pageController
            .jumpToPage(widget.pageController.page!.toInt() + 1);
      });
    }
  }
}
