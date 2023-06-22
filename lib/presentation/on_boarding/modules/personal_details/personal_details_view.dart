import 'package:admin_580_tech/core/utility.dart';
import 'package:admin_580_tech/presentation/on_boarding/modules/personal_details/widgets/address_selection_widget.dart';
import 'package:admin_580_tech/presentation/on_boarding/modules/personal_details/widgets/profile_picture_widget.dart';
import 'package:admin_580_tech/presentation/on_boarding/widgets/upload_document_widget.dart';
import 'package:admin_580_tech/presentation/widget/custom_form.dart';
import 'package:flutter/material.dart';

import '../../../../application/bloc/onboarding/onboarding_bloc.dart';
import '../../../../core/enum.dart';
import '../../../../core/responsive.dart';
import '../../../../core/text_styles.dart';
import '../../../caregiver_detail/widgets/svg_text.dart';
import '../../../widget/common_date_picker_widget.dart';
import '../../../widget/common_next_or_cancel_buttons.dart';
import '../../../widget/custom_button.dart';
import '../../../widget/custom_container.dart';
import '../../../widget/custom_sizedbox.dart';
import '../../../widget/custom_text.dart';
import '../../../widget/custom_text_field.dart';
import '../../../widget/dropdown/state_drop_down.dart';
import '../../widgets/common_padding_widget.dart';
import '../../widgets/gender_drop_down.dart';
import 'widgets/document_details_view.dart';

class PersonalDetailsView extends StatefulWidget {
  PersonalDetailsView(
      {Key? key, required this.onboardingBloc, required this.pageController})
      : super(key: key);
  OnboardingBloc onboardingBloc;
  PageController pageController;

  @override
  State<PersonalDetailsView> createState() => _PersonalDetailsViewState();
}

class _PersonalDetailsViewState extends State<PersonalDetailsView> {
  TextEditingController addressLineController = TextEditingController();
  TextEditingController streetController = TextEditingController();
  TextEditingController zipController = TextEditingController();
  TextEditingController socialSecurityNumberController =
      TextEditingController();
  final TextEditingController _dateController = TextEditingController();

  final FocusNode _dateFocusNode = FocusNode();
  String selectedDate = "";
  String selectedGender = "";
  String selectedState = "";
  String selectedCity = "";
  bool nextClicked = false;

  AutovalidateMode _validateMode = AutovalidateMode.disabled;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: CommonPaddingWidget(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSizedBox(height: DBL.ten.val),
            CustomText(
              AppString.personalDetails.val,
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
            CustomSizedBox(height: DBL.twenty.val),
            Responsive.isLargeWeb(context) || Responsive.isWeb(context)
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _profilePicWidget(),
                      CustomSizedBox(width: DBL.twenty.val),
                      _personalDetailsWidget(
                          addressLineController,
                          streetController,
                          zipController,
                          socialSecurityNumberController,
                          context,
                          _dateFocusNode,
                          _dateController)
                    ],
                  )
                : Column(
                    crossAxisAlignment: Responsive.isWeb(context)
                        ? CrossAxisAlignment.start
                        : CrossAxisAlignment.center,
                    children: [
                      _profilePicWidget(),
                      CustomSizedBox(height: DBL.twentyFive.val),
                      _personalDetailsWidget(
                          addressLineController,
                          streetController,
                          zipController,
                          socialSecurityNumberController,
                          context,
                          _dateFocusNode,
                          _dateController)
                    ],
                  ),

            /*NextAndPreviousButton(
                isLoading: controller.isLoading.value,
                nextButtonText: Get.parameters['is_from_profile'] != null
                    ? LocaleKeys.save.tr
                    : LocaleKeys.next.tr,
                isHasPreviousButton:
                    Get.parameters['is_from_profile'] != null ? true : false,
                onNext: () {

                  }
                }),*/
          ],
        ),
      ),
    );
  }

  _personalDetailsWidget(
      TextEditingController addressLineController,
      TextEditingController streetController,
      TextEditingController zipController,
      TextEditingController socialSecurityNumberController,
      BuildContext context,
      FocusNode _dateFocusNode,
      TextEditingController _dateController) {
    return CustomContainer(
      height: Responsive.isLargeWeb(context)
          ? 750
          : Responsive.isWeb(context)
              ? 650
              : 550,
      alignment:
          Responsive.isWeb(context) ? Alignment.centerLeft : Alignment.center,
      width: Responsive.isLargeWeb(context)
          ? MediaQuery.of(context).size.width * 0.6
          : Responsive.isWeb(context)
              ? MediaQuery.of(context).size.width * 0.52
              : MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: CForm(
          formKey: _formKey,
          autoValidateMode: _validateMode,
          child: Wrap(
            alignment:
                Responsive.isLargeWeb(context) || Responsive.isWeb(context)
                    ? WrapAlignment.start
                    : WrapAlignment.center,
            spacing: 20,
            children: [
              _dateWidget(),
              _genderWidget(),
              _addressLineWidget(),
              _locationWidget(),
              _streetWidget(),
              _stateWidget(),
              _cityWidget(),
              _zipWidget(),
              _socialSecurityNoWidget(),
              DocumentDetailsView(
                onboardingBloc: widget.onboardingBloc,
                nextClicked: nextClicked,
              ),
              _uploadDocumentWidget(),
              _nextPrevButtonWidget(),
              CustomSizedBox(height: DBL.thirtyFive.val),
            ],
          ),
        ),
      ),
    );
  }

  _profilePicWidget() {
    return Column(
      children: [
        ProfilePictureWidget(
          size: Responsive.isWeb(context) ? 180 : 140,
        ),
        CustomSizedBox(height: DBL.six.val),
        Center(
          child: CustomText(
            AppString.uploadYourProfilePhoto.val,
            style: TS().gRoboto(
                fontSize: FS.font14.val,
                fontWeight: FW.w400.val,
                color: AppColor.darkGrey.val),
          ),
        ),
      ],
    );
  }

  _dateWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CommonDatePickerWidget(
            dateController: _dateController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return AppString.emptyDOB.val;
              }
              return null;
            },
            label: AppString.dateOfBirth.val),
        CustomSizedBox(height: DBL.twenty.val),
      ],
    );
  }

  _genderWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _labelWidget(AppString.gender.val),
        CustomSizedBox(height: DBL.twelve.val),
        GenderDropDown(
          onChange: (value) {},
          items: [],
          errorText: nextClicked
              ? selectedGender == ""
                  ? AppString.emptyGender.val
                  : ""
              : "",
          selectedValue: selectedGender,
        ),
      ],
    );
  }

  _addressLineWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _labelWidget(AppString.address.val),
        CustomSizedBox(height: DBL.twelve.val),
        CustomContainer(
          width: DBL.twoEighty.val,
          child: CTextField(
            hintText: AppString.address.val,
            controller: addressLineController,
            hintStyle: TS().gRoboto(
                fontWeight: FW.w400.val,
                color: AppColor.label.val,
                fontSize: FS.font16.val),
            validator: (val) {
              if (val == null || val.isEmpty) {
                return AppString.emptyAddress.val;
              }
              return null;
            },
            onTap: () {},
          ),
        ),
        CustomSizedBox(height: DBL.twenty.val),
      ],
    );
  }

  _locationWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _labelWidget(AppString.location.val),
        CustomSizedBox(
          height: DBL.twelve.val,
        ),
        CustomContainer(
          width: DBL.twoEighty.val,
          height: DBL.fifty.val,
          child: AddressSelectionWidget(
            onAddressSelect: (address, lat, lng) {
              /*controller.latitude = lat;
                    controller.longitude = lng;
                    controller.location(address);*/
            },
            address: "",
          ),
        ),
        CustomSizedBox(height: DBL.twenty.val),
      ],
    );
  }

  _streetWidget() {
    return CustomSizedBox(
      width: DBL.twoEighty.val,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _labelWidget(AppString.street.val),
          CustomSizedBox(height: DBL.twelve.val),
          CTextField(
            controller: streetController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return AppString.emptyStreet.val;
              }
              return null;
            },
            onChanged: (value) {},
            onTap: () {},
          ),
          CustomSizedBox(height: DBL.twenty.val),
        ],
      ),
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
              ? selectedState == ""
                  ? AppString.emptyState.val
                  : ""
              : "",
          stateName: "",
          items: [],
          onChange: (value) {},
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
              ? selectedCity == ""
                  ? AppString.emptyCity.val
                  : ""
              : "",
          stateName: "",
          items: [],
          onChange: (value) {},
          selectedValue: "",
        ),
      ],
    );
  }

  _zipWidget() {
    return CustomSizedBox(
      width: DBL.twoEighty.val,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _labelWidget(AppString.zip.val),
          CustomSizedBox(height: DBL.twelve.val),
          CTextField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return AppString.emptyZip.val;
              }
              return null;
            },
            controller: zipController,
            onChanged: (value) {},
            onTap: () {},
          ),
          CustomSizedBox(height: DBL.twenty.val),
        ],
      ),
    );
  }

  _socialSecurityNoWidget() {
    return CustomSizedBox(
      width: DBL.twoEighty.val,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _labelWidget(AppString.socialSecurityNumber.val),
          CustomSizedBox(height: DBL.twelve.val),
          CTextField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return AppString.emptySSN.val;
              }
              return null;
            },
            controller: socialSecurityNumberController,
            onChanged: (value) {},
            onTap: () {},
          ),
          CustomSizedBox(height: DBL.twenty.val),
        ],
      ),
    );
  }

  _uploadDocumentWidget() {
    return UploadDocumentWidget(
      onTap: () {},
    );
  }

  _nextPrevButtonWidget() {
    return CommonNextOrCancelButtons(leftButtonName: AppString.back.val,rightButtonName: AppString.next.val,onLeftButtonPressed: () {
      // context.router.navigate(const CareGiversRoute());
    },onRightButtonPressed: () {
      //checkInputData();
      setState(() {
        nextClicked = true;
        widget.pageController
            .jumpToPage(widget.pageController.page!.toInt() + 1);
      });
    },);
  }

  _labelWidget(String label) {
    return CustomText(label,
        style: TS().gRoboto(
            fontWeight: FW.w400.val,
            color: AppColor.label.val,
            fontSize: FS.font16.val));
  }

  _datePicker() {
    return InkWell(
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () async {
        String date = await Utility.selectDate(context);
        setState(() {
          _dateController.text = date;
        });
      },
      child: IgnorePointer(
        child: CustomSizedBox(
          width: DBL.twoEighty.val,
          child: CTextField(
            hintText: AppString.ddmmyyyy.val,
            hintStyle: TS().gRoboto(
                fontWeight: FW.w400.val,
                color: AppColor.label.val,
                fontSize: FS.font16.val),
            focusNode: _dateFocusNode,
            controller: _dateController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return AppString.emptyDOB.val;
              }
              return null;
            },
            onTap: () {},
            onChanged: (val) {},
            textInputAction: TextInputAction.next,
            keyBoardType: TextInputType.text,
            suffixIcon: CustomContainer(
              alignment: Alignment.center,
              width: 30,
              height: 30,
              child: SVGText(
                path: IMG.calender.val,
                name: "",
              ),
            ),
          ),
        ),
      ),
    );
  }

  checkInputData() {
    if (_validateMode != AutovalidateMode.always) {
      widget.onboardingBloc.add(const OnboardingEvent.submit());
    }
    if (_formKey.currentState!.validate()) {
      setState(() {
        // context.router.navigate(const OnboardingRoute());
      });
    }
  }
}

String _formatSSN(String ssn) {
  ssn = ssn.replaceAll(RegExp(r'[^0-9]'), ''); // Remove non-numeric characters
  if (ssn.length > 3) {
    ssn = ssn.substring(0, 3) + '-' + ssn.substring(3);
  }
  if (ssn.length > 6) {
    ssn = ssn.substring(0, 6) + '-' + ssn.substring(6);
  }
  return ssn;
}

String _formatZip(String zip) {
  zip = zip.replaceAll(RegExp(r'[^0-9]'), ''); // Remove non-numeric characters
  if (zip.length > 5) {
    zip = zip.substring(0, 5) + '-' + zip.substring(5);
  }
  return zip;
}
