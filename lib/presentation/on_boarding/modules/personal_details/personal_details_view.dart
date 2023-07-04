import 'package:admin_580_tech/presentation/on_boarding/modules/personal_details/widgets/address_selection_widget.dart';
import 'package:admin_580_tech/presentation/on_boarding/modules/personal_details/widgets/profile_picture_widget.dart';
import 'package:admin_580_tech/presentation/on_boarding/widgets/upload_document_widget.dart';
import 'package:admin_580_tech/presentation/widget/custom_form.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/bloc/form_validation/form_validation_bloc.dart';
import '../../../../application/bloc/onboarding/onboarding_bloc.dart';
import '../../../../core/enum.dart';
import '../../../../core/responsive.dart';
import '../../../../core/text_styles.dart';
import '../../../widget/common_date_picker_widget.dart';
import '../../../widget/common_next_or_cancel_buttons.dart';
import '../../../widget/custom_container.dart';
import '../../../widget/custom_sizedbox.dart';
import '../../../widget/custom_text.dart';
import '../../../widget/custom_text_field.dart';
import '../../../widget/dropdown/state_drop_down.dart';
import '../../widgets/common_padding_widget.dart';
import '../../widgets/file_preview_widget.dart';
import '../../widgets/gender_drop_down.dart';
import '../../widgets/image_preview_widget.dart';
import 'models/gender_list_response.dart';
import 'widgets/document_details_view.dart';

class PersonalDetailsView extends StatefulWidget {
  const PersonalDetailsView(
      {Key? key, required this.onboardingBloc, required this.pageController})
      : super(key: key);
  final OnboardingBloc onboardingBloc;
  final PageController pageController;

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
  List<PlatformFile> bytesList = [];
  bool listUpdated = false;

  AutovalidateMode _validateMode = AutovalidateMode.disabled;
  FormValidationBloc formValidationBloc = FormValidationBloc();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final isLargeWeb = MediaQuery.of(context).size.width > 1350 &&
        MediaQuery.of(context).size.width < 1800;
    final isWeb = MediaQuery.of(context).size.width >= 1100 &&
        MediaQuery.of(context).size.width <= 1350;
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => FormValidationBloc()),
        BlocProvider(create: (context) => OnboardingBloc())
      ],
      child: CommonPaddingWidget(
        child: SingleChildScrollView(
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
              Responsive.isWeb(context)
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
                            _dateController,
                            isLargeWeb,
                            isWeb),
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
                            _dateController,
                            isLargeWeb,
                            isWeb),
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
              _nextPrevButtonWidget(),
            ],
          ),
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
      FocusNode dateFocusNode,
      TextEditingController dateController,
      bool isLargeWeb,
      bool isWeb) {
    return CustomContainer(
      height: isLargeWeb
          ? 750
          : Responsive.isWeb(context)
              ? 650
              : 550,
      alignment:
          Responsive.isWeb(context) ? Alignment.centerLeft : Alignment.center,
      width: isLargeWeb
          ? MediaQuery.of(context).size.width * 0.6
          : isWeb
              ? MediaQuery.of(context).size.width * 0.52
              : MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: CForm(
          formKey: _formKey,
          autoValidateMode: _validateMode,
          child: BlocBuilder<OnboardingBloc, OnboardingState>(
            bloc: widget.onboardingBloc,
            builder: (context, state) {
              return Wrap(
                alignment: Responsive.isWeb(context)
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
                    pageController: widget.pageController,
                  ),
                  state.securityDocumentList.length > 1
                      ? CustomContainer(height: DBL.twenty.val)
                      : _uploadDocumentWidget(),
                  state.securityDocumentList.isNotEmpty
                      ? _previewShowingWidget(state)
                      : const CustomContainer(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  _removeSelectedFiles(int index, OnboardingState state) {
    bytesList.removeAt(index);

    widget.onboardingBloc.add(
        OnboardingEvent.securityDocumentUpload(bytesList, state.listUpdated));
  }

  _previewShowingWidget(OnboardingState state) {
    return CustomContainer(
      height: DBL.hundred.val,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: state.securityDocumentList.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(DBL.ten.val),
              child: state.securityDocumentList[index].name.endsWith(".png") ||
                      state.securityDocumentList[index].name.endsWith(".jpg")
                  ? ImagePreviewWidget(
                      bytes: state.securityDocumentList[index].bytes!,
                      onRemoveTap: () {
                        _removeSelectedFiles(index, state);
                      },
                    )
                  : FilePreviewWidget(
                      fileName: state.securityDocumentList[index].name,
                      onRemoveTap: () {
                        _removeSelectedFiles(index, state);
                      },
                    ),
            );
          }),
    );
  }

  _profilePicWidget() {
    return Column(
      children: [
        ProfilePictureWidget(
          onboardingBloc: widget.onboardingBloc,
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
          onChange: (value) {
            selectedGender = value.toString();
          },
          items: [
            Gender(id: 0, name: "Male"),
            Gender(id: 1, name: "Female"),
            Gender(id: 2, name: "Others")
          ],
          errorText: nextClicked && selectedGender.isEmpty
              ? AppString.emptyGender.val
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
              ? selectedState.isEmpty
                  ? AppString.emptyState.val
                  : ""
              : "",
          stateName: "",
          items: const ["Kerala", "Karnataka", "Tamil Nadu"],
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
          items: const ["Kannur", "Wayanad", "Ernakulam"],
          onChange: (value) {
            selectedCity = value;
          },
          selectedValue: selectedCity,
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
      onTap: () async {
        FilePickerResult? result = await FilePicker.platform.pickFiles(
          type: FileType.custom,
          allowedExtensions: ['jpg', 'png', 'pdf', 'doc'],
        );
        if (result != null) {
          for (PlatformFile file in result.files) {
            bytesList.add(file);
            listUpdated = !listUpdated;
            // Break the loop after adding 2 items
            if (bytesList.length == 2) {
              break;
            }
          }

          widget.onboardingBloc.add(
            OnboardingEvent.securityDocumentUpload(bytesList, listUpdated),
          );
        } else {
          // User canceled the picker
        }
      },
    );
  }

  _nextPrevButtonWidget() {
    return BlocBuilder<FormValidationBloc, FormValidationState>(
      bloc: formValidationBloc,
      builder: (context, state) {
        return CommonNextOrCancelButtons(
          leftButtonName: AppString.back.val,
          rightButtonName: AppString.next.val,
          onLeftButtonPressed: () {
            // context.router.navigate(const CareGiversRoute());
          },
          onRightButtonPressed: () {
            setState(() {
              nextClicked = true;
            });
            checkInputData();
          },
        );
      },
    );
  }

  _labelWidget(String label) {
    return CustomText(label,
        style: TS().gRoboto(
            fontWeight: FW.w400.val,
            color: AppColor.label.val,
            fontSize: FS.font16.val));
  }

  checkInputData() {
    if (_validateMode != AutovalidateMode.always) {
      formValidationBloc.add(const FormValidationEvent.submit());
      formValidationBloc.add(const FormValidationEvent.dropDown("true"));
    }
    if (_formKey.currentState!.validate()) {
      widget.pageController.jumpToPage(widget.pageController.page!.toInt() + 1);
    }
  }

  String _formatSSN(String ssn) {
    ssn =
        ssn.replaceAll(RegExp(r'[^0-9]'), ''); // Remove non-numeric characters
    if (ssn.length > 3) {
      ssn = '${ssn.substring(0, 3)}-${ssn.substring(3)}';
    }
    if (ssn.length > 6) {
      ssn = '${ssn.substring(0, 6)}-${ssn.substring(6)}';
    }
    return ssn;
  }

  String _formatZip(String zip) {
    zip =
        zip.replaceAll(RegExp(r'[^0-9]'), ''); // Remove non-numeric characters
    if (zip.length > 5) {
      zip = '${zip.substring(0, 5)}-${zip.substring(5)}';
    }
    return zip;
  }
}
