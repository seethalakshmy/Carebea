import 'package:admin_580_tech/core/custom_snackbar.dart';
import 'package:admin_580_tech/infrastructure/on_boarding/on_boarding_repository.dart';
import 'package:admin_580_tech/presentation/on_boarding/modules/personal_details/widgets/address_selection_widget.dart';
import 'package:admin_580_tech/presentation/on_boarding/modules/personal_details/widgets/profile_picture_widget.dart';
import 'package:admin_580_tech/presentation/on_boarding/modules/personal_details/widgets/social_security_number_formatter.dart';
import 'package:admin_580_tech/presentation/on_boarding/modules/personal_details/widgets/zip_code_formatter.dart';
import 'package:admin_580_tech/presentation/on_boarding/widgets/upload_document_widget.dart';
import 'package:admin_580_tech/presentation/widget/custom_form.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/bloc/form_validation/form_validation_bloc.dart';
import '../../../../application/bloc/onboarding/onboarding_bloc.dart';
import '../../../../core/enum.dart';
import '../../../../core/responsive.dart';
import '../../../../core/text_styles.dart';
import '../../../../infrastructure/api_service_s3.dart';
import '../../../../infrastructure/shared_preference/shared_preff_util.dart';
import '../../../widget/common_date_picker_widget.dart';
import '../../../widget/common_next_or_cancel_buttons.dart';
import '../../../widget/custom_container.dart';
import '../../../widget/custom_shimmer.dart';
import '../../../widget/custom_sizedbox.dart';
import '../../../widget/custom_text.dart';
import '../../../widget/custom_text_field.dart';
import '../../../widget/dropdown/city_drop_down.dart';
import '../../../widget/dropdown/state_drop_down.dart';
import '../../widgets/common_padding_widget.dart';
import '../../widgets/file_preview_widget.dart';
import '../../widgets/gender_drop_down.dart';
import '../../widgets/image_preview_widget.dart';
import '../../widgets/on_boarding_title_divider_widget.dart';
import 'widgets/document_details_view.dart';

class PersonalDetailsView extends StatefulWidget {
  PersonalDetailsView(
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
  final TextEditingController dobController = TextEditingController();
  final TextEditingController documentNumberController =
      TextEditingController();
  final TextEditingController expiryDateController = TextEditingController();
  final TextEditingController citySearchController = TextEditingController();
  final TextEditingController stateSearchController = TextEditingController();
  PlatformFile? file;
  SharedPreffUtil sharedPreffUtil = SharedPreffUtil();

  final FocusNode _dateFocusNode = FocusNode();
  String selectedDate = "";
  String selectedGender = "";
  String selectedGenderName = "";
  String selectedState = "";
  String selectedCity = "";
  String selectedDocument = "";
  List<PlatformFile> bytesList = [];
  List<String> docPathList = [];
  bool listUpdated = false;

  AutovalidateMode _validateMode = AutovalidateMode.disabled;
  FormValidationBloc formValidationBloc = FormValidationBloc();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    print('inside page ${SharedPreffUtil().getIsFromWebsite}');
    widget.onboardingBloc.add(const OnboardingEvent.commonData());
    widget.onboardingBloc.add(const OnboardingEvent.stateList(
        stateSearchQuery: "", wantLoading: true));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final isLargeWeb = MediaQuery.of(context).size.width > 1350 &&
        MediaQuery.of(context).size.width < 1800;
    final isWeb = MediaQuery.of(context).size.width >= 1100 &&
        MediaQuery.of(context).size.width <= 1350;
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => FormValidationBloc()),
        BlocProvider(
            create: (context) => OnboardingBloc(OnBoardingRepository()))
      ],
      child: BlocConsumer<OnboardingBloc, OnboardingState>(
        buildWhen: (previous, current) => previous != current,
        listener: (context, listenerState) {
          return listenerState.personalDetailsOption.fold(() {}, (some) {
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
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  OnBoardingTitleDividerWidget(
                      title: AppString.personalDetails.val),
                  Responsive.isWeb(context)
                      ? Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _profilePicWidget(state),
                            CustomSizedBox(width: DBL.twenty.val),
                            _personalDetailsWidget(
                                state,
                                addressLineController,
                                streetController,
                                zipController,
                                socialSecurityNumberController,
                                context,
                                _dateFocusNode,
                                dobController,
                                isLargeWeb,
                                isWeb),
                          ],
                        )
                      : Column(
                          crossAxisAlignment: Responsive.isWeb(context)
                              ? CrossAxisAlignment.start
                              : CrossAxisAlignment.center,
                          children: [
                            _profilePicWidget(state),
                            CustomSizedBox(height: DBL.twentyFive.val),
                            _personalDetailsWidget(
                                state,
                                addressLineController,
                                streetController,
                                zipController,
                                socialSecurityNumberController,
                                context,
                                _dateFocusNode,
                                dobController,
                                isLargeWeb,
                                isWeb),
                          ],
                        ),
                  _nextPrevButtonWidget(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  _personalDetailsWidget(
      OnboardingState state,
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
          child: Wrap(
            alignment: Responsive.isWeb(context)
                ? WrapAlignment.start
                : WrapAlignment.center,
            spacing: 20,
            runSpacing: state.isInitialLoading ? DBL.twenty.val : DBL.zero.val,
            children: [
              _dateWidget(state),
              _genderWidget(state),
              _addressLineWidget(state),
              _locationWidget(state),
              _streetWidget(state),
              _stateWidget(state),
              _cityWidget(state),
              _zipWidget(state),
              _socialSecurityNoWidget(state),
              state.isInitialLoading
                  ? const CustomSizedBox()
                  : DocumentDetailsView(
                      onChanged: (value) {
                        selectedDocument = value;
                      },
                      selectedDocumentType: selectedDocument,
                      dateController: expiryDateController,
                      documentNumberController: documentNumberController,
                      onboardingBloc: widget.onboardingBloc,
                      nextClicked: widget.onboardingBloc.state.nextClicked,
                      pageController: widget.pageController,
                    ),
              state.securityDocumentList.length > 1
                  ? CustomContainer(height: DBL.twenty.val)
                  : state.isInitialLoading
                      ? const CustomSizedBox()
                      : _uploadDocumentWidget(),
              state.securityDocumentList.isNotEmpty
                  ? _previewShowingWidget(state)
                  : const CustomContainer(),
            ],
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

  _profilePicWidget(OnboardingState state) {
    return Column(
      children: [
        widget.onboardingBloc.state.isInitialLoading
            ? const CustomShimmerWidget.circular(height: 150, width: 150)
            : ProfilePictureWidget(
                onboardingBloc: widget.onboardingBloc,
                size: Responsive.isWeb(context) ? 180 : 140,
              ),
        CustomSizedBox(height: DBL.six.val),
        state.isInitialLoading
            ? CustomShimmerWidget.rectangular(
                height: DBL.twenty.val, width: DBL.twoHundred.val)
            : Center(
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

  _dateWidget(OnboardingState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        state.isInitialLoading
            ? CustomContainer(
                padding: EdgeInsets.only(bottom: DBL.twelve.val),
                child: CustomShimmerWidget.rectangular(
                    height: DBL.twenty.val, width: DBL.hundred.val),
              )
            : const CustomSizedBox(),
        state.isInitialLoading
            ? CustomShimmerWidget.rectangular(
                height: DBL.fifty.val, width: DBL.twoEighty.val)
            : CommonDatePickerWidget(
                initialDate: DateTime(DateTime.now().year - 18),
                lastDate: DateTime(DateTime.now().year - 18),
                firstDate: DateTime(1950),
                dateController: dobController,
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

  _genderWidget(OnboardingState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        state.isInitialLoading
            ? CustomShimmerWidget.rectangular(
                height: DBL.twenty.val, width: DBL.hundred.val)
            : _labelWidget(AppString.gender.val),
        CustomSizedBox(height: DBL.twelve.val),
        state.isInitialLoading
            ? CustomContainer(
                padding: EdgeInsets.only(bottom: DBL.fifteen.val),
                child: CustomShimmerWidget.rectangular(
                    height: DBL.fifty.val, width: DBL.twoEighty.val),
              )
            : GenderDropDown(
                onboardingBloc: widget.onboardingBloc,
                selectedValue: widget.onboardingBloc.selectedGenderName,
                onChange: (value) {
                  selectedGender = value.toString();
                  state.copyWith(selectedGenderId: value);
                },
                items: widget.onboardingBloc.genderList,
                errorText: widget.onboardingBloc.state.nextClicked &&
                        selectedGender.isEmpty
                    ? AppString.emptyGender.val
                    : "",
              ),
      ],
    );
  }

  _addressLineWidget(OnboardingState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        state.isInitialLoading
            ? CustomShimmerWidget.rectangular(
                height: DBL.twenty.val, width: DBL.hundred.val)
            : _labelWidget(AppString.address.val),
        CustomSizedBox(height: DBL.twelve.val),
        state.isInitialLoading
            ? CustomShimmerWidget.rectangular(
                height: DBL.fifty.val, width: DBL.twoEighty.val)
            : CustomContainer(
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

  _locationWidget(OnboardingState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        state.isInitialLoading
            ? CustomShimmerWidget.rectangular(
                height: DBL.twenty.val, width: DBL.hundred.val)
            : _labelWidget(AppString.location.val),
        CustomSizedBox(
          height: DBL.twelve.val,
        ),
        state.isInitialLoading
            ? CustomShimmerWidget.rectangular(
                height: DBL.fifty.val, width: DBL.twoEighty.val)
            : CustomContainer(
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

  _streetWidget(OnboardingState state) {
    return CustomSizedBox(
      width: DBL.twoEighty.val,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          state.isInitialLoading
              ? CustomShimmerWidget.rectangular(
                  height: DBL.twenty.val, width: DBL.hundred.val)
              : _labelWidget(AppString.street.val),
          CustomSizedBox(height: DBL.twelve.val),
          state.isInitialLoading
              ? CustomShimmerWidget.rectangular(
                  height: DBL.fifty.val, width: DBL.twoEighty.val)
              : CTextField(
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

  _stateWidget(OnboardingState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        state.isInitialLoading
            ? CustomShimmerWidget.rectangular(
                height: DBL.twenty.val, width: DBL.hundred.val)
            : _labelWidget(AppString.state.val),
        CustomSizedBox(height: DBL.twelve.val),
        state.isInitialLoading
            ? CustomShimmerWidget.rectangular(
                height: DBL.fifty.val, width: DBL.twoEighty.val)
            : StateDropDown(
                onboardingBloc: widget.onboardingBloc,
                onSearchChanged: (val) {
                  widget.onboardingBloc.statePage = 1;
                  widget.onboardingBloc.add(OnboardingEvent.stateList(
                      stateSearchQuery: val, wantLoading: false));
                },
                searchController: stateSearchController,
                errorText: widget.onboardingBloc.state.nextClicked
                    ? selectedState.isEmpty
                        ? AppString.emptyState.val
                        : ""
                    : "",
                items: widget.onboardingBloc.stateList,
                onChange: (value) {
                  selectedState = value.toString();
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
                    ? selectedCity.isEmpty
                        ? AppString.emptyCity.val
                        : ""
                    : "",
                items: widget.onboardingBloc.cityList,
                onChange: (value) {
                  selectedCity = value;
                },
                selectedValue: widget.onboardingBloc.selectedCityName,
              ),
      ],
    );
  }

  _zipWidget(OnboardingState state) {
    return CustomSizedBox(
      width: DBL.twoEighty.val,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          state.isInitialLoading
              ? CustomShimmerWidget.rectangular(
                  height: DBL.twenty.val, width: DBL.hundred.val)
              : _labelWidget(AppString.zip.val),
          CustomSizedBox(height: DBL.twelve.val),
          state.isInitialLoading
              ? CustomShimmerWidget.rectangular(
                  height: DBL.fifty.val, width: DBL.twoEighty.val)
              : CTextField(
                  maxLength: 10,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return AppString.emptyZip.val;
                    } else if (value.length < 10) {
                      return AppString.invalidZip.val;
                    }
                    return null;
                  },
                  inputFormatter: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(9),
                    ZipCodeFormatter(),
                  ],
                  controller: zipController,
                  onChanged: (value) {},
                  onTap: () {},
                ),
          CustomSizedBox(height: DBL.twenty.val),
        ],
      ),
    );
  }

  _socialSecurityNoWidget(OnboardingState state) {
    return CustomSizedBox(
      width: DBL.twoEighty.val,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          state.isInitialLoading
              ? CustomShimmerWidget.rectangular(
                  height: DBL.twenty.val, width: DBL.hundred.val)
              : _labelWidget(AppString.socialSecurityNumber.val),
          CustomSizedBox(height: DBL.twelve.val),
          state.isInitialLoading
              ? CustomShimmerWidget.rectangular(
                  height: DBL.fifty.val, width: DBL.twoEighty.val)
              : CTextField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return AppString.emptySSN.val;
                    } else if (value.length < 10) {
                      return AppString.invalidSSN.val;
                    }
                    return null;
                  },
                  inputFormatter: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(9),
                    SocialSecurityNumberFormatter(),
                  ],
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
          withData: true,
        );
        if (result != null) {
          file = result.files.single;
          for (PlatformFile file in result.files) {
            bytesList.add(file);
            listUpdated = !listUpdated;
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
          isLoading: widget.onboardingBloc.state.isLoading,
          leftButtonName: AppString.back.val,
          rightButtonName: AppString.next.val,
          onLeftButtonPressed: () {
            // context.router.navigate(const CaregiverCreationRoute());
            widget.pageController
                .jumpToPage(widget.pageController.page!.toInt() - 1);
          },
          onRightButtonPressed: () async {
            widget.onboardingBloc.nextButtonClicked = true;
            if (selectedGender.isEmpty &&
                selectedState.isEmpty &&
                selectedDocument.isEmpty &&
                selectedCity.isEmpty) {
              widget.onboardingBloc.emit(
                  widget.onboardingBloc.state.copyWith(nextClicked: true));
            } else {
              widget.onboardingBloc.emit(
                  widget.onboardingBloc.state.copyWith(nextClicked: false));
            }
            if (widget.onboardingBloc.state.pickedProfilePic!.name.isEmpty) {
              CSnackBar.showError(context, msg: AppString.emptyProfilePic.val);
            }
            if (widget.onboardingBloc.state.pickedProfilePic!.size > 0) {
              await uploadProfilePicToAwsS3(AppString.profilePicture.val,
                  SharedPreffUtil().getCareGiverUserId);
            }
            if (bytesList.isNotEmpty) {
              for (int i = 0; i < bytesList.length; i++) {
                await uploadDocumentsToAwsS3(AppString.documents.val,
                    SharedPreffUtil().getCareGiverUserId, bytesList[i]);
              }
            }
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
    final userId = SharedPreffUtil().getCareGiverUserId;

    if (_formKey.currentState!.validate() &&
        widget.onboardingBloc.profileUrl.isNotEmpty) {
      widget.onboardingBloc.add(OnboardingEvent.personalDetails(
          userId: sharedPreffUtil.getIsFromWebsite == true
              ? sharedPreffUtil.getAdminId
              : userId,
          dob: dobController.text.trim(),
          genderId: int.parse(selectedGender),
          street: streetController.text.trim(),
          cityId: selectedCity,
          stateId: widget.onboardingBloc.stateId,
          latitude: 80.0,
          longitude: 80.0,
          zip: zipController.text.trim(),
          address: addressLineController.text.trim(),
          socialSecurityNo: socialSecurityNumberController.text.trim(),
          documentId: selectedDocument,
          documentNo: documentNumberController.text.trim(),
          expiryDate: expiryDateController.text.trim(),
          documentList: widget.onboardingBloc.uploadedDocumentList,
          profilePic: widget.onboardingBloc.profileUrl));
    }
  }

  Future<void> uploadProfilePicToAwsS3(String folderName, String userId) async {
    widget.onboardingBloc.profileUrl = await ApiServiceS3().uploadImage(
        pickedFile: widget.onboardingBloc.state.pickedProfilePic!.bytes!,
        format:
            widget.onboardingBloc.state.pickedProfilePic!.name.split('.').last,
        folderName: folderName,
        userId: userId,
        context: context);
  }

  Future<void> uploadDocumentsToAwsS3(
      String folderName, String userId, PlatformFile pickedItem) async {
    widget.onboardingBloc.uploadedDocumentList.add(await ApiServiceS3()
        .uploadImage(
            pickedFile: pickedItem.bytes!,
            format: pickedItem.name.split('.').last,
            folderName: folderName,
            userId: userId,
            context: context));
  }
}
