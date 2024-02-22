import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pdf_render/pdf_render_widgets.dart';

import '../../../../application/bloc/form_validation/form_validation_bloc.dart';
import '../../../../application/bloc/get_cities_bloc/get_cities_bloc.dart';
import '../../../../application/bloc/get_states_bloc/get_states_bloc.dart';
import '../../../../application/bloc/onboarding/onboarding_bloc.dart';
import '../../../../core/custom_snackbar.dart';
import '../../../../core/enum.dart';
import '../../../../core/responsive.dart';
import '../../../../core/text_styles.dart';
import '../../../../core/time_utils.dart';
import '../../../../infrastructure/api_service_s3.dart';
import '../../../../infrastructure/on_boarding/on_boarding_repository.dart';
import '../../../../infrastructure/shared_preference/shared_preff_util.dart';
import '../../../caregiver_creation/caregiver_creation_page.dart';
import '../../../routes/app_router.gr.dart';
import '../../../widget/commonImageview.dart';
import '../../../widget/common_date_picker_widget.dart';
import '../../../widget/common_next_or_cancel_buttons.dart';
import '../../../widget/custom_alert_dialog_widget.dart';
import '../../../widget/custom_container.dart';
import '../../../widget/custom_form.dart';
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
import '../../widgets/upload_document_widget.dart';
import 'models/city_list_response.dart';
import 'widgets/address_selection_widget.dart';
import 'widgets/document_details_view.dart';
import 'widgets/profile_picture_widget.dart';
import 'widgets/social_security_number_formatter.dart';
import 'widgets/zip_code_formatter.dart';

class PersonalDetailsView extends StatefulWidget {
  const PersonalDetailsView(
      {Key? key,
      required this.onboardingBloc,
      required this.pageController,
      required this.isFromSignUp})
      : super(key: key);
  final OnboardingBloc onboardingBloc;
  final PageController pageController;
  final bool isFromSignUp;

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
  final pdfController = PdfViewerController();
  final GlobalKey<ScrollableState> _scrollableKey =
      GlobalKey<ScrollableState>();
  final FocusNode _dateFocusNode = FocusNode();
  String selectedDate = "";
  String selectedGender = "";
  String selectedGenderName = "";
  String selectedState = "";
  String selectedCity = "";
  String selectedDocument = "";
  String selectedLocation = "";
  num selectedLatitude = 0;
  num selectedLongitude = 0;
  List<PlatformFile> bytesList = [];
  List<String> docPathList = [];
  bool listUpdated = false;

  final AutovalidateMode _validateMode = AutovalidateMode.disabled;
  FormValidationBloc formValidationBloc = FormValidationBloc();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    widget.onboardingBloc.add(const OnboardingEvent.commonData());
    widget.onboardingBloc.add(const OnboardingEvent.stateList(
        stateSearchQuery: "", wantLoading: true));
    super.initState();
  }

  @override
  void dispose() {
    pdfController.dispose();
    super.dispose();
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
      child: MultiBlocListener(
        listeners: [
          BlocListener<GetStatesBloc, GetStatesState>(
            listener: (context, state) {
              state.when(
                  initial: () {},
                  loading: (_) {},
                  failed: (_) {},
                  success: (data) {
                    bool stateExists = false;

                    for (var element in data) {
                      log("elementName ${element.name} == ${widget.onboardingBloc.selectedStateName} =${element.name?.trim().toLowerCase() == widget.onboardingBloc.selectedStateName.trim().toLowerCase()}");
                      if (element.name?.trim().toLowerCase() ==
                              widget.onboardingBloc.selectedStateName
                                  .trim()
                                  .toLowerCase() &&
                          element.id != null) {
                        stateExists = true;
                        widget.onboardingBloc.stateId = element.id!;
                      }
                    }
                    if (stateExists) {
                      context.read<GetCitiesBloc>().add(GetCitiesEvent.fetch(
                          stateId: widget.onboardingBloc.stateId,
                          page: "1",
                          searchKey: widget.onboardingBloc.selectedCity
                              .toLowerCase()));
                      widget.onboardingBloc.add(OnboardingEvent.cityList(
                          searchQuery:
                              widget.onboardingBloc.selectedCity.toLowerCase(),
                          wantLoading: true));
                    }
                  });
            },
          ),
          BlocListener<GetCitiesBloc, GetCitiesState>(
            listener: (context, state) {
              state.when(
                  initial: () {},
                  loading: () {},
                  failed: (error) {},
                  success: (data) {
                    bool stateExists = false;
                    List<City> data1 = data.data ?? [];
                    for (var element in data1) {
                      if (element.cityName?.trim().toLowerCase() ==
                              widget.onboardingBloc.selectedCityName
                                  .trim()
                                  .toLowerCase() &&
                          element.id != null) {
                        stateExists = true;
                        widget.onboardingBloc.selectedCityId = element.id!;
                        widget.onboardingBloc.selectedCity =
                            widget.onboardingBloc.selectedCityName;
                        selectedCity = element.id!;
                      }
                    }
                  });
            },
          ),
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
                key: _scrollableKey,
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
    );
  }

  _removeSelectedFiles(int index, OnboardingState state) {
    bytesList.removeAt(index);
    listUpdated = !listUpdated;
    widget.onboardingBloc
        .add(OnboardingEvent.securityDocumentUpload(bytesList, listUpdated));
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
                  ? InkWell(
                      onTap: () {
                        showGeneralDialog(
                          barrierDismissible: true,
                          barrierLabel: "",
                          context: context,
                          pageBuilder: (BuildContext buildContext,
                              Animation animation,
                              Animation secondaryAnimation) {
                            return CustomAlertDialogWidget(
                                showHeading: false,
                                width: 700,
                                heading: "",
                                child: CommonImageView(
                                  bytes:
                                      state.securityDocumentList[index].bytes!,
                                ));
                          },
                        );
                      },
                      child: ImagePreviewWidget(
                        bytes: state.securityDocumentList[index].bytes!,
                        onRemoveTap: () {
                          _removeSelectedFiles(index, state);
                        },
                      ),
                    )
                  : InkWell(
                      onTap: () {
                        showGeneralDialog(
                          barrierLabel: "",
                          barrierDismissible: true,
                          context: context,
                          pageBuilder: (BuildContext buildContext,
                              Animation animation,
                              Animation secondaryAnimation) {
                            return CustomAlertDialogWidget(
                                width: 800,
                                height: 550,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                heading: AppString.verificationProcess.val,
                                child: CustomSizedBox(
                                  width: 780,
                                  height: 540,
                                  child: PdfViewer.openData(
                                    state.securityDocumentList[index].bytes!,
                                    viewerController: pdfController,
                                    onError: (err) => print(err),
                                    params: const PdfViewerParams(
                                        minScale: 0.2,
                                        scrollDirection: Axis.vertical,
                                        padding: 10),
                                  ),
                                ));
                          },
                        );
                      },
                      child: FilePreviewWidget(
                        fileName: state.securityDocumentList[index].name,
                        onRemoveTap: () {
                          _removeSelectedFiles(index, state);
                        },
                      ),
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
                  AppString.uploadProfilePhoto.val,
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
                lastDate: DateTime(DateTime.now().year - 18,
                    DateTime.now().month, DateTime.now().day),
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
    debugPrint("gender lis t ${widget.onboardingBloc.genderList}");
    return Column(
      mainAxisSize: MainAxisSize.min,
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
                selectedValue: selectedGender.isEmpty
                    ? AppString.selectGender.val
                    : widget.onboardingBloc.selectedGenderName,
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
            : _labelWidget(AppString.addressLine1.val),
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
                  maxLength: 50,
                  validator: (val) {
                    if (val?.trim() == null || val!.trim().isEmpty) {
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
                // height: DBL.fifty.val,
                child: AddressSelectionWidget(
                  onAddressSelect: (selectedAddress) {
                    streetController.text = selectedAddress.streetNumber ?? "";
                    zipController.text = selectedAddress.zipCode ?? "";
                    citySearchController.text = selectedAddress.locality ?? "";
                    widget.onboardingBloc.selectedCityName =
                        citySearchController.text;
                    widget.onboardingBloc.selectedCity =
                        citySearchController.text;
                    stateSearchController.text =
                        selectedAddress.stateName ?? "";
                    widget.onboardingBloc.selectedStateName =
                        selectedAddress.stateName ?? "";
                    selectedLatitude = selectedAddress.latitude ?? 0;
                    selectedLongitude = selectedAddress.longitude ?? 0;
                    selectedLocation = selectedAddress.locationTag ?? '';
                    debugPrint('location $selectedLocation');

                    widget.onboardingBloc.add(const OnboardingEvent.stateList(
                        stateSearchQuery: "", wantLoading: true));
                    widget.onboardingBloc.add(const OnboardingEvent.cityList(
                        searchQuery: "", wantLoading: true));
                    BlocProvider.of<GetStatesBloc>(context).add(
                        GetStatesEvent.fetch(
                            previousData: [],
                            page: "1",
                            searchKey:
                                "${selectedAddress.stateName?.trim().toLowerCase()}"));
                  },
                  address: selectedLocation,
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
              : _labelWidget(AppString.addressLine2.val),
          CustomSizedBox(height: DBL.twelve.val),
          state.isInitialLoading
              ? CustomShimmerWidget.rectangular(
                  height: DBL.fifty.val, width: DBL.twoEighty.val)
              : CTextField(
                  maxLength: 50,
                  controller: streetController,
                  validator: (val) {
                    if (val?.trim() == null || val!.trim().isEmpty) {
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
            : BlocBuilder<GetStatesBloc, GetStatesState>(
                builder: (context, state) {
                  debugPrint('testing $state');
                  return state.when(initial: () {
                    return StateDropDown(
                      onboardingBloc: widget.onboardingBloc,
                      onSearchChanged: (val) {
                        widget.onboardingBloc.statePage = 1;
                        // widget.onboardingBloc.add(OnboardingEvent.stateList(
                        //     stateSearchQuery: val.toString().toLowerCase(),
                        //     wantLoading: false));
                        BlocProvider.of<GetStatesBloc>(context).add(
                            GetStatesEvent.fetch(
                                previousData: [],
                                page: "1",
                                searchKey: "${val?.trim().toLowerCase()}"));
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
                        // widget.onboardingBloc.add(OnboardingEvent.cityList(
                        //     searchQuery: widget.onboardingBloc.selectedCity,
                        //     wantLoading: true));
                        BlocProvider.of<GetStatesBloc>(context).add(
                            GetStatesEvent.fetch(
                                previousData: [],
                                page: "1",
                                searchKey: "${value?.trim().toLowerCase()}"));
                        // widget.onboardingBloc.selectedCityName = "";
                      },
                      selectedValue: widget.onboardingBloc.selectedStateName,
                    );
                  }, loading: (data) {
                    // return CustomShimmerWidget.rectangular(
                    //     height: DBL.fifty.val, width: DBL.twoEighty.val);
                    return StateDropDown(
                      onboardingBloc: widget.onboardingBloc,
                      onSearchChanged: (val) {
                        widget.onboardingBloc.statePage = 1;
                        BlocProvider.of<GetStatesBloc>(context).add(
                            GetStatesEvent.fetch(
                                previousData: data,
                                page: "1",
                                searchKey: "${val?.trim().toLowerCase()}"));
                        // widget.onboardingBloc.add(OnboardingEvent.stateList(
                        //     stateSearchQuery: val.toString().toLowerCase(),
                        //     wantLoading: false));
                        // BlocProvider.of<GetStatesBloc>(context).add(
                        //     GetStatesEvent.fetch(
                        //         page: "1",
                        //         searchKey: "${val?.trim().toLowerCase()}"));
                      },
                      searchController: stateSearchController,
                      errorText: widget.onboardingBloc.state.nextClicked
                          ? selectedState.isEmpty
                              ? AppString.emptyState.val
                              : ""
                          : "",
                      items: data,
                      onChange: (value) {
                        selectedState = value.toString();
                        widget.onboardingBloc.add(OnboardingEvent.cityList(
                            searchQuery: widget.onboardingBloc.selectedCity,
                            wantLoading: true));
                        // widget.onboardingBloc.selectedCityName = "";
                      },
                      selectedValue: widget.onboardingBloc.selectedStateName,
                    );
                  }, failed: (error) {
                    return StateDropDown(
                      onboardingBloc: widget.onboardingBloc,
                      onSearchChanged: (val) {
                        widget.onboardingBloc.statePage = 1;
                        BlocProvider.of<GetStatesBloc>(context).add(
                            GetStatesEvent.fetch(
                                previousData: [],
                                page: "1",
                                searchKey: "${val?.trim().toLowerCase()}"));
                        // widget.onboardingBloc.add(OnboardingEvent.stateList(
                        //     stateSearchQuery: val.toString().toLowerCase(),
                        //     wantLoading: false));
                        // BlocProvider.of<GetStatesBloc>(context).add(
                        //     GetStatesEvent.fetch(
                        //         page: "1",
                        //         searchKey: "${val?.trim().toLowerCase()}"));
                      },
                      searchController: stateSearchController,
                      errorText: error,
                      items: widget.onboardingBloc.stateList,
                      onChange: (value) {
                        selectedState = value.toString();
                        widget.onboardingBloc.add(OnboardingEvent.cityList(
                            searchQuery: widget.onboardingBloc.selectedCity,
                            wantLoading: true));
                        // widget.onboardingBloc.selectedCityName = "";
                      },
                      selectedValue: widget.onboardingBloc.selectedStateName,
                    );
                  }, success: (data) {
                    return StateDropDown(
                      onboardingBloc: widget.onboardingBloc,
                      onSearchChanged: (val) {
                        widget.onboardingBloc.statePage = 1;
                        BlocProvider.of<GetStatesBloc>(context).add(
                            GetStatesEvent.fetch(
                                previousData: data,
                                page: "1",
                                searchKey: "${val?.trim().toLowerCase()}"));
                        // widget.onboardingBloc.add(OnboardingEvent.stateList(
                        //     stateSearchQuery: val.toString().toLowerCase(),
                        //     wantLoading: false));
                        // BlocProvider.of<GetStatesBloc>(context).add(
                        //     GetStatesEvent.fetch(
                        //         page: "1",
                        //         searchKey: "${val?.trim().toLowerCase()}"));
                      },
                      searchController: stateSearchController,
                      errorText: widget.onboardingBloc.state.nextClicked
                          ? selectedState.isEmpty
                              ? AppString.emptyState.val
                              : ""
                          : "",
                      items: data,
                      onChange: (value) {
                        selectedState = value.toString();
                        widget.onboardingBloc.add(OnboardingEvent.cityList(
                            searchQuery: widget.onboardingBloc.selectedCity,
                            wantLoading: true));
                        // widget.onboardingBloc.selectedCityName = "";
                      },
                      selectedValue: widget.onboardingBloc.selectedStateName,
                    );
                  });
                },
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
            // : CustomSizedBox(
            //     width: DBL.twoEighty.val,
            //     child: CTextField(
            //       controller: citySearchController,
            //       validator: (value) {
            //         if (value == null || value.isEmpty || value.trim() == "") {
            //           return AppString.emptyState.val;
            //         } else {
            //           return null;
            //         }
            //       },
            //       isReadOnly: true,
            //       onChanged: (val) {
            //         selectedState = val.toString();
            //       },
            //     ),
            //   ),
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
                selectedValue: selectedCity.isEmpty
                    ? AppString.selectCity.val
                    : widget.onboardingBloc.selectedCityName,
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
                    } else if (value.length != 10 && value.length != 5) {
                      return AppString.invalidZip.val;
                    }
                    return null;
                  },
                  inputFormatter: [
                    FilteringTextInputFormatter.deny(
                      RegExp(r'^0+'), //users can't type 0 at 1st position
                    ),
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
                    } else if (value.length < 11) {
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
          allowedExtensions: ['jpg', 'png', 'pdf', 'jpeg'],
          withData: true,
        );
        if (result != null) {
          listUpdated = !listUpdated;
          file = result.files.single;
          int? sizeInBytes = file?.size;
          double sizeInMb = sizeInBytes! / (1024 * 1024);
          debugPrint("size $sizeInMb");
          if (file?.extension == 'jpg' ||
              file?.extension == 'png' ||
              file?.extension == 'jpeg' ||
              file?.extension == 'JPG' ||
              file?.extension == 'PNG' ||
              file?.extension == 'JPEG' ||
              file?.extension == 'pdf' ||
              file?.extension == 'PDF') {
            if (sizeInMb < 20) {
              // This file is Longer the

              for (PlatformFile file in result.files) {
                bytesList.add(file);
                if (bytesList.length == 2) {
                  break;
                }
              }
              widget.onboardingBloc.add(
                OnboardingEvent.securityDocumentUpload(bytesList, listUpdated),
              );
            } else {
              CSnackBar.showError(context, msg: AppString.fileSizeError.val);
            }
          } else {
            CSnackBar.showError(context, msg: AppString.fileTypeNotSupport.val);
          }
        }
      },
      isSignature: false,
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
            widget.isFromSignUp
                ? context.router.navigate(const SignUpRoute())
                : Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CaregiverCreationPage(),
                    ),
                  ).then((_) {
                    addressLineController.text =
                        addressLineController.text.trim();
                    documentNumberController.text =
                        documentNumberController.text.trim();
// Here you will get callback after coming back from NextPage()
// Do your code here
                  });
            // : context.router.navigate(const CaregiverCreationRoute());
            // widget.pageController
            //     .jumpToPage(widget.pageController.page!.toInt() - 1);
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
              CSnackBar.showError(context,
                  msg: AppString.pleaseSelectProfilePicture.val);
            }

            if (widget.onboardingBloc.state.pickedProfilePic!.size > 0) {
              widget.onboardingBloc
                  .emit(widget.onboardingBloc.state.copyWith(isLoading: true));
              await uploadProfilePicToAwsS3(AppString.profilePicture.val,
                  SharedPreffUtil().getCareGiverUserId);
              widget.onboardingBloc
                  .emit(widget.onboardingBloc.state.copyWith(isLoading: false));
            }

            if (bytesList.isEmpty) {
              CSnackBar.showError(context, msg: AppString.emptyDocument.val);
            }

            if (bytesList.length <= 1) {
              for (int i = 0; i < bytesList.length; i++) {
                widget.onboardingBloc.emit(
                    widget.onboardingBloc.state.copyWith(isLoading: true));
                await uploadDocumentsToAwsS3(AppString.documents.val,
                    SharedPreffUtil().getCareGiverUserId, bytesList[i]);
                widget.onboardingBloc.emit(
                    widget.onboardingBloc.state.copyWith(isLoading: false));
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
    debugPrint("inside test");
    debugPrint("inside test ${widget.onboardingBloc.profileUrl}");
    debugPrint("inside test ${_formKey.currentState!.validate()}");

    // addressLineController.text = addressLineController.text.trim();
    // documentNumberController.text = documentNumberController.text.trim();
    // streetController.text = streetController.text.trim();
    if (_validateMode != AutovalidateMode.always) {
      debugPrint("bvsgdvsd");
      formValidationBloc.add(const FormValidationEvent.submit());
      formValidationBloc.add(const FormValidationEvent.dropDown("true"));
    }
    final userId = SharedPreffUtil().getCareGiverUserId;
    if (_formKey.currentState!.validate() &&
        widget.onboardingBloc.profileUrl.isNotEmpty) {
      debugPrint("inside true");

      final expiryDate = expiryDateController.text;
      final dob = dobController.text;

      final expiryDateInDDMMYY = TimeUtils.dateInMMDDYYYYToDDMMYYY(expiryDate);
      final dobInDDMMYY = TimeUtils.dateInMMDDYYYYToDDMMYYY(dob);

      widget.onboardingBloc.add(OnboardingEvent.personalDetails(
          userId: sharedPreffUtil.getIsFromWebsite == true
              ? sharedPreffUtil.getAdminId
              : userId,
          dob: dobInDDMMYY,
          genderId: int.parse(selectedGender),
          street: streetController.text.trim(),
          cityId: selectedCity,
          stateId: widget.onboardingBloc.stateId,
          latitude: selectedLatitude.toDouble(),
          longitude: selectedLongitude.toDouble(),
          zip: zipController.text.trim(),
          address: addressLineController.text.trim(),
          socialSecurityNo: socialSecurityNumberController.text.trim(),
          documentId: selectedDocument,
          documentNo: documentNumberController.text.trim(),
          expiryDate: expiryDateInDDMMYY,
          documentList: [widget.onboardingBloc.uploadedDocumentList.first],
          profilePic: widget.onboardingBloc.profileUrl,
          locationTag: selectedLocation));
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

// import 'dart:developer';
//
// import 'package:auto_route/auto_route.dart';
// import 'package:file_picker/file_picker.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:pdf_render/pdf_render_widgets.dart';
//
// import '../../../../application/bloc/form_validation/form_validation_bloc.dart';
// import '../../../../application/bloc/get_cities_bloc/get_cities_bloc.dart';
// import '../../../../application/bloc/get_states_bloc/get_states_bloc.dart';
// import '../../../../application/bloc/onboarding/onboarding_bloc.dart';
// import '../../../../core/custom_snackbar.dart';
// import '../../../../core/enum.dart';
// import '../../../../core/responsive.dart';
// import '../../../../core/text_styles.dart';
// import '../../../../core/time_utils.dart';
// import '../../../../infrastructure/api_service_s3.dart';
// import '../../../../infrastructure/on_boarding/on_boarding_repository.dart';
// import '../../../../infrastructure/shared_preference/shared_preff_util.dart';
// import '../../../caregiver_creation/caregiver_creation_page.dart';
// import '../../../routes/app_router.gr.dart';
// import '../../../widget/commonImageview.dart';
// import '../../../widget/common_date_picker_widget.dart';
// import '../../../widget/common_next_or_cancel_buttons.dart';
// import '../../../widget/custom_alert_dialog_widget.dart';
// import '../../../widget/custom_container.dart';
// import '../../../widget/custom_form.dart';
// import '../../../widget/custom_shimmer.dart';
// import '../../../widget/custom_sizedbox.dart';
// import '../../../widget/custom_text.dart';
// import '../../../widget/custom_text_field.dart';
// import '../../../widget/dropdown/city_drop_down.dart';
// import '../../../widget/dropdown/state_drop_down.dart';
// import '../../widgets/common_padding_widget.dart';
// import '../../widgets/file_preview_widget.dart';
// import '../../widgets/gender_drop_down.dart';
// import '../../widgets/image_preview_widget.dart';
// import '../../widgets/on_boarding_title_divider_widget.dart';
// import '../../widgets/upload_document_widget.dart';
// import 'models/city_list_response.dart';
// import 'widgets/address_selection_widget.dart';
// import 'widgets/document_details_view.dart';
// import 'widgets/profile_picture_widget.dart';
// import 'widgets/social_security_number_formatter.dart';
// import 'widgets/zip_code_formatter.dart';
//
// class PersonalDetailsView extends StatefulWidget {
//   const PersonalDetailsView(
//       {Key? key,
//       required this.onboardingBloc,
//       required this.pageController,
//       required this.isFromSignUp})
//       : super(key: key);
//   final OnboardingBloc onboardingBloc;
//   final PageController pageController;
//   final bool isFromSignUp;
//
//   @override
//   State<PersonalDetailsView> createState() => _PersonalDetailsViewState();
// }
//
// class _PersonalDetailsViewState extends State<PersonalDetailsView> {
//   PlatformFile? file;
//   SharedPreffUtil sharedPreffUtil = SharedPreffUtil();
//   final pdfController = PdfViewerController();
//   final GlobalKey<ScrollableState> _scrollableKey =
//       GlobalKey<ScrollableState>();
//   final FocusNode _dateFocusNode = FocusNode();
//   String selectedDate = "";
//   String selectedGender = "";
//   String selectedGenderName = "";
//   String selectedState = "";
//   String selectedCity = "";
//   String selectedDocument = "";
//   String selectedLocation = "";
//   num selectedLatitude = 0;
//   num selectedLongitude = 0;
//   List<PlatformFile> bytesList = [];
//   List<String> docPathList = [];
//   bool listUpdated = false;
//
//   final AutovalidateMode _validateMode = AutovalidateMode.disabled;
//   FormValidationBloc formValidationBloc = FormValidationBloc();
//   final _formKey = GlobalKey<FormState>();
//
//   @override
//   void initState() {
//     widget.onboardingBloc.add(OnboardingEvent.fetchPersonalDetails(
//         userId: "65d6f0e30adbd41b91872eda"));
//     widget.onboardingBloc.socialSecurityNumberController.text = widget
//             .onboardingBloc
//             .getPersonalDetailsResponse
//             ?.data
//             ?.socialSecurityNumber ??
//         "";
//     debugPrint(
//         "datchecka  ${widget.onboardingBloc.socialSecurityNumberController.text ?? ""}");
//     widget.onboardingBloc.add(const OnboardingEvent.commonData());
//     widget.onboardingBloc.add(const OnboardingEvent.stateList(
//         stateSearchQuery: "", wantLoading: true));
//     super.initState();
//   }
//
//   @override
//   void dispose() {
//     pdfController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final isLargeWeb = MediaQuery.of(context).size.width > 1350 &&
//         MediaQuery.of(context).size.width < 1800;
//     final isWeb = MediaQuery.of(context).size.width >= 1100 &&
//         MediaQuery.of(context).size.width <= 1350;
//     return MultiBlocProvider(
//       providers: [
//         BlocProvider(create: (context) => FormValidationBloc()),
//         // BlocProvider(
//         //     create: (context) => OnboardingBloc(OnBoardingRepository()))
//       ],
//       child: MultiBlocListener(
//         listeners: [
//           BlocListener<GetStatesBloc, GetStatesState>(
//             listener: (context, state) {
//               state.when(
//                   initial: () {},
//                   loading: (_) {},
//                   failed: (_) {},
//                   success: (data) {
//                     bool stateExists = false;
//
//                     for (var element in data) {
//                       log("elementName ${element.name} == ${widget.onboardingBloc.selectedStateName} =${element.name?.trim().toLowerCase() == widget.onboardingBloc.selectedStateName.trim().toLowerCase()}");
//                       if (element.name?.trim().toLowerCase() ==
//                               widget.onboardingBloc.selectedStateName
//                                   .trim()
//                                   .toLowerCase() &&
//                           element.id != null) {
//                         stateExists = true;
//                         widget.onboardingBloc.stateId = element.id!;
//                       }
//                     }
//                     if (stateExists) {
//                       context.read<GetCitiesBloc>().add(GetCitiesEvent.fetch(
//                           stateId: widget.onboardingBloc.stateId,
//                           page: "1",
//                           searchKey: widget.onboardingBloc.selectedCity
//                               .toLowerCase()));
//                       widget.onboardingBloc.add(OnboardingEvent.cityList(
//                           searchQuery:
//                               widget.onboardingBloc.selectedCity.toLowerCase(),
//                           wantLoading: true));
//                     }
//                   });
//             },
//           ),
//           BlocListener<GetCitiesBloc, GetCitiesState>(
//             listener: (context, state) {
//               state.when(
//                   initial: () {},
//                   loading: () {},
//                   failed: (error) {},
//                   success: (data) {
//                     bool stateExists = false;
//                     List<City> data1 = data.data ?? [];
//                     for (var element in data1) {
//                       if (element.cityName?.trim().toLowerCase() ==
//                               widget.onboardingBloc.selectedCityName
//                                   .trim()
//                                   .toLowerCase() &&
//                           element.id != null) {
//                         stateExists = true;
//                         widget.onboardingBloc.selectedCityId = element.id!;
//                         widget.onboardingBloc.selectedCity =
//                             widget.onboardingBloc.selectedCityName;
//                         selectedCity = element.id!;
//                       }
//                     }
//                   });
//             },
//           ),
//         ],
//         child: BlocConsumer<OnboardingBloc, OnboardingState>(
//           buildWhen: (previous, current) => previous != current,
//           listener: (context, listenerState) {
//             return listenerState.personalDetailsOption.fold(() {}, (some) {
//               some.fold((l) {
//                 CSnackBar.showError(context, msg: l.error);
//               }, (r) {
//                 if (widget.onboardingBloc.nextButtonClicked) {
//                   widget.pageController
//                       .jumpToPage(widget.pageController.page!.toInt() + 1);
//                 }
//               });
//             });
//           },
//           bloc: widget.onboardingBloc,
//           builder: (context, state) {
//             return CommonPaddingWidget(
//               child: SingleChildScrollView(
//                 key: _scrollableKey,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     OnBoardingTitleDividerWidget(
//                         title: AppString.personalDetails.val),
//                     Responsive.isWeb(context)
//                         ? Row(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               _profilePicWidget(state),
//                               CustomSizedBox(width: DBL.twenty.val),
//                               _personalDetailsWidget(
//                                   state,
//                                   widget.onboardingBloc.addressLineController,
//                                   widget
//                                       .onboardingBloc.personalStreetController,
//                                   widget.onboardingBloc.personalZipController,
//                                   widget.onboardingBloc
//                                       .socialSecurityNumberController,
//                                   context,
//                                   _dateFocusNode,
//                                   widget.onboardingBloc.dobController,
//                                   isLargeWeb,
//                                   isWeb),
//                             ],
//                           )
//                         : Column(
//                             crossAxisAlignment: Responsive.isWeb(context)
//                                 ? CrossAxisAlignment.start
//                                 : CrossAxisAlignment.center,
//                             children: [
//                               _profilePicWidget(state),
//                               CustomSizedBox(height: DBL.twentyFive.val),
//                               _personalDetailsWidget(
//                                   state,
//                                   widget.onboardingBloc.addressLineController,
//                                   widget
//                                       .onboardingBloc.personalStreetController,
//                                   widget.onboardingBloc.personalZipController,
//                                   widget.onboardingBloc
//                                       .socialSecurityNumberController,
//                                   context,
//                                   _dateFocusNode,
//                                   widget.onboardingBloc.dobController,
//                                   isLargeWeb,
//                                   isWeb),
//                             ],
//                           ),
//                     _nextPrevButtonWidget(),
//                   ],
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
//
//   _personalDetailsWidget(
//       OnboardingState state,
//       TextEditingController addressLineController,
//       TextEditingController streetController,
//       TextEditingController zipController,
//       TextEditingController socialSecurityNumberController,
//       BuildContext context,
//       FocusNode dateFocusNode,
//       TextEditingController dateController,
//       bool isLargeWeb,
//       bool isWeb) {
//     return CustomContainer(
//       height: isLargeWeb
//           ? 750
//           : Responsive.isWeb(context)
//               ? 650
//               : 550,
//       alignment:
//           Responsive.isWeb(context) ? Alignment.centerLeft : Alignment.center,
//       width: isLargeWeb
//           ? MediaQuery.of(context).size.width * 0.6
//           : isWeb
//               ? MediaQuery.of(context).size.width * 0.52
//               : MediaQuery.of(context).size.width,
//       child: CForm(
//         formKey: _formKey,
//         autoValidateMode: _validateMode,
//         child: Wrap(
//           alignment: Responsive.isWeb(context)
//               ? WrapAlignment.start
//               : WrapAlignment.center,
//           spacing: 20,
//           runSpacing: state.isInitialLoading ? DBL.twenty.val : DBL.zero.val,
//           children: [
//             _dateWidget(state),
//             _genderWidget(state),
//             _addressLineWidget(state),
//             _locationWidget(state),
//             _streetWidget(state),
//             _stateWidget(state),
//             _cityWidget(state),
//             _zipWidget(state),
//             _socialSecurityNoWidget(state),
//             state.isInitialLoading
//                 ? const CustomSizedBox()
//                 : DocumentDetailsView(
//                     onChanged: (value) {
//                       selectedDocument = value;
//                     },
//                     selectedDocumentType: selectedDocument,
//                     dateController: widget.onboardingBloc.expiryDateController,
//                     documentNumberController:
//                         widget.onboardingBloc.documentNumberController,
//                     onboardingBloc: widget.onboardingBloc,
//                     nextClicked: widget.onboardingBloc.state.nextClicked,
//                     pageController: widget.pageController,
//                   ),
//             state.securityDocumentList.length > 1
//                 ? CustomContainer(height: DBL.twenty.val)
//                 : state.isInitialLoading
//                     ? const CustomSizedBox()
//                     : _uploadDocumentWidget(),
//             state.securityDocumentList.isNotEmpty
//                 ? _previewShowingWidget(state)
//                 : const CustomContainer(),
//           ],
//         ),
//       ),
//     );
//   }
//
//   _removeSelectedFiles(int index, OnboardingState state) {
//     bytesList.removeAt(index);
//     listUpdated = !listUpdated;
//     widget.onboardingBloc
//         .add(OnboardingEvent.securityDocumentUpload(bytesList, listUpdated));
//   }
//
//   _previewShowingWidget(OnboardingState state) {
//     return CustomContainer(
//       height: DBL.hundred.val,
//       child: ListView.builder(
//           scrollDirection: Axis.horizontal,
//           itemCount: state.securityDocumentList.length,
//           shrinkWrap: true,
//           itemBuilder: (context, index) {
//             return Container(
//               margin: EdgeInsets.all(DBL.ten.val),
//               child: state.securityDocumentList[index].name.endsWith(".png") ||
//                       state.securityDocumentList[index].name.endsWith(".jpg")
//                   ? InkWell(
//                       onTap: () {
//                         showGeneralDialog(
//                           barrierDismissible: true,
//                           barrierLabel: "",
//                           context: context,
//                           pageBuilder: (BuildContext buildContext,
//                               Animation animation,
//                               Animation secondaryAnimation) {
//                             return CustomAlertDialogWidget(
//                                 showHeading: false,
//                                 width: 700,
//                                 heading: "",
//                                 child: CommonImageView(
//                                   bytes:
//                                       state.securityDocumentList[index].bytes!,
//                                 ));
//                           },
//                         );
//                       },
//                       child: ImagePreviewWidget(
//                         bytes: state.securityDocumentList[index].bytes!,
//                         onRemoveTap: () {
//                           _removeSelectedFiles(index, state);
//                         },
//                       ),
//                     )
//                   : InkWell(
//                       onTap: () {
//                         showGeneralDialog(
//                           barrierLabel: "",
//                           barrierDismissible: true,
//                           context: context,
//                           pageBuilder: (BuildContext buildContext,
//                               Animation animation,
//                               Animation secondaryAnimation) {
//                             return CustomAlertDialogWidget(
//                                 width: 800,
//                                 height: 550,
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 heading: AppString.verificationProcess.val,
//                                 child: CustomSizedBox(
//                                   width: 780,
//                                   height: 540,
//                                   child: PdfViewer.openData(
//                                     state.securityDocumentList[index].bytes!,
//                                     viewerController: pdfController,
//                                     onError: (err) => print(err),
//                                     params: const PdfViewerParams(
//                                         minScale: 0.2,
//                                         scrollDirection: Axis.vertical,
//                                         padding: 10),
//                                   ),
//                                 ));
//                           },
//                         );
//                       },
//                       child: FilePreviewWidget(
//                         fileName: state.securityDocumentList[index].name,
//                         onRemoveTap: () {
//                           _removeSelectedFiles(index, state);
//                         },
//                       ),
//                     ),
//             );
//           }),
//     );
//   }
//
//   _profilePicWidget(OnboardingState state) {
//     return Column(
//       children: [
//         widget.onboardingBloc.state.isInitialLoading
//             ? const CustomShimmerWidget.circular(height: 150, width: 150)
//             : ProfilePictureWidget(
//                 onboardingBloc: widget.onboardingBloc,
//                 size: Responsive.isWeb(context) ? 180 : 140,
//               ),
//         CustomSizedBox(height: DBL.six.val),
//         state.isInitialLoading
//             ? CustomShimmerWidget.rectangular(
//                 height: DBL.twenty.val, width: DBL.twoHundred.val)
//             : Center(
//                 child: CustomText(
//                   AppString.uploadProfilePhoto.val,
//                   style: TS().gRoboto(
//                       fontSize: FS.font14.val,
//                       fontWeight: FW.w400.val,
//                       color: AppColor.darkGrey.val),
//                 ),
//               ),
//       ],
//     );
//   }
//
//   _dateWidget(OnboardingState state) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         state.isInitialLoading
//             ? CustomContainer(
//                 padding: EdgeInsets.only(bottom: DBL.twelve.val),
//                 child: CustomShimmerWidget.rectangular(
//                     height: DBL.twenty.val, width: DBL.hundred.val),
//               )
//             : const CustomSizedBox(),
//         state.isInitialLoading
//             ? CustomShimmerWidget.rectangular(
//                 height: DBL.fifty.val, width: DBL.twoEighty.val)
//             : CommonDatePickerWidget(
//                 initialDate: DateTime(DateTime.now().year - 18),
//                 lastDate: DateTime(DateTime.now().year - 18,
//                     DateTime.now().month, DateTime.now().day),
//                 firstDate: DateTime(1950),
//                 dateController: widget.onboardingBloc.dobController,
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return AppString.emptyDOB.val;
//                   }
//                   return null;
//                 },
//                 label: AppString.dateOfBirth.val),
//         CustomSizedBox(height: DBL.twenty.val),
//       ],
//     );
//   }
//
//   _genderWidget(OnboardingState state) {
//     debugPrint("gender lis t ${widget.onboardingBloc.genderList}");
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         state.isInitialLoading
//             ? CustomShimmerWidget.rectangular(
//                 height: DBL.twenty.val, width: DBL.hundred.val)
//             : _labelWidget(AppString.gender.val),
//         CustomSizedBox(height: DBL.twelve.val),
//         state.isInitialLoading
//             ? CustomContainer(
//                 padding: EdgeInsets.only(bottom: DBL.fifteen.val),
//                 child: CustomShimmerWidget.rectangular(
//                     height: DBL.fifty.val, width: DBL.twoEighty.val),
//               )
//             : GenderDropDown(
//                 onboardingBloc: widget.onboardingBloc,
//                 selectedValue: selectedGender.isEmpty
//                     ? AppString.selectGender.val
//                     : widget.onboardingBloc.selectedGenderName,
//                 onChange: (value) {
//                   selectedGender = value.toString();
//                   state.copyWith(selectedGenderId: value);
//                 },
//                 items: widget.onboardingBloc.genderList,
//                 errorText: widget.onboardingBloc.state.nextClicked &&
//                         selectedGender.isEmpty
//                     ? AppString.emptyGender.val
//                     : "",
//               ),
//       ],
//     );
//   }
//
//   _addressLineWidget(OnboardingState state) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         state.isInitialLoading
//             ? CustomShimmerWidget.rectangular(
//                 height: DBL.twenty.val, width: DBL.hundred.val)
//             : _labelWidget(AppString.addressLine1.val),
//         CustomSizedBox(height: DBL.twelve.val),
//         state.isInitialLoading
//             ? CustomShimmerWidget.rectangular(
//                 height: DBL.fifty.val, width: DBL.twoEighty.val)
//             : CustomContainer(
//                 width: DBL.twoEighty.val,
//                 child: CTextField(
//                   hintText: AppString.address.val,
//                   controller: widget.onboardingBloc.addressLineController,
//                   hintStyle: TS().gRoboto(
//                       fontWeight: FW.w400.val,
//                       color: AppColor.label.val,
//                       fontSize: FS.font16.val),
//                   maxLength: 50,
//                   validator: (val) {
//                     if (val?.trim() == null || val!.trim().isEmpty) {
//                       return AppString.emptyAddress.val;
//                     }
//                     return null;
//                   },
//                   onTap: () {},
//                 ),
//               ),
//         CustomSizedBox(height: DBL.twenty.val),
//       ],
//     );
//   }
//
//   _locationWidget(OnboardingState state) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         state.isInitialLoading
//             ? CustomShimmerWidget.rectangular(
//                 height: DBL.twenty.val, width: DBL.hundred.val)
//             : _labelWidget(AppString.location.val),
//         CustomSizedBox(
//           height: DBL.twelve.val,
//         ),
//         state.isInitialLoading
//             ? CustomShimmerWidget.rectangular(
//                 height: DBL.fifty.val, width: DBL.twoEighty.val)
//             : CustomContainer(
//                 width: DBL.twoEighty.val,
//                 // height: DBL.fifty.val,
//                 child: AddressSelectionWidget(
//                   onAddressSelect: (selectedAddress) {
//                     widget.onboardingBloc.personalStreetController.text =
//                         selectedAddress?.streetNumber ?? "";
//                     widget.onboardingBloc.personalZipController.text =
//                         selectedAddress.zipCode ?? "";
//                     widget.onboardingBloc.personalCitySearchController.text =
//                         selectedAddress.locality ?? "";
//                     widget.onboardingBloc.selectedCityName =
//                         widget.onboardingBloc.personalCitySearchController.text;
//                     widget.onboardingBloc.selectedCity =
//                         widget.onboardingBloc.personalCitySearchController.text;
//                     widget.onboardingBloc.personalStateSearchController.text =
//                         selectedAddress.stateName ?? "";
//                     widget.onboardingBloc.selectedStateName =
//                         selectedAddress.stateName ?? "";
//                     selectedLatitude = selectedAddress.latitude ?? 0;
//                     selectedLongitude = selectedAddress.longitude ?? 0;
//                     selectedLocation = selectedAddress.locationTag ?? '';
//                     debugPrint('location $selectedLocation');
//
//                     widget.onboardingBloc.add(const OnboardingEvent.stateList(
//                         stateSearchQuery: "", wantLoading: true));
//                     widget.onboardingBloc.add(const OnboardingEvent.cityList(
//                         searchQuery: "", wantLoading: true));
//                     BlocProvider.of<GetStatesBloc>(context).add(
//                         GetStatesEvent.fetch(
//                             previousData: [],
//                             page: "1",
//                             searchKey:
//                                 "${selectedAddress.stateName?.trim().toLowerCase()}"));
//                   },
//                   address: selectedLocation,
//                 ),
//               ),
//         CustomSizedBox(height: DBL.twenty.val),
//       ],
//     );
//   }
//
//   _streetWidget(OnboardingState state) {
//     return CustomSizedBox(
//       width: DBL.twoEighty.val,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           state.isInitialLoading
//               ? CustomShimmerWidget.rectangular(
//                   height: DBL.twenty.val, width: DBL.hundred.val)
//               : _labelWidget(AppString.addressLine2.val),
//           CustomSizedBox(height: DBL.twelve.val),
//           state.isInitialLoading
//               ? CustomShimmerWidget.rectangular(
//                   height: DBL.fifty.val, width: DBL.twoEighty.val)
//               : CTextField(
//                   maxLength: 50,
//                   controller: widget.onboardingBloc.personalStreetController,
//                   validator: (val) {
//                     if (val?.trim() == null || val!.trim().isEmpty) {
//                       return AppString.emptyStreet.val;
//                     }
//                     return null;
//                   },
//                   onChanged: (value) {},
//                   onTap: () {},
//                 ),
//           CustomSizedBox(height: DBL.twenty.val),
//         ],
//       ),
//     );
//   }
//
//   _stateWidget(OnboardingState state) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         state.isInitialLoading
//             ? CustomShimmerWidget.rectangular(
//                 height: DBL.twenty.val, width: DBL.hundred.val)
//             : _labelWidget(AppString.state.val),
//         CustomSizedBox(height: DBL.twelve.val),
//         state.isInitialLoading
//             ? CustomShimmerWidget.rectangular(
//                 height: DBL.fifty.val, width: DBL.twoEighty.val)
//             : BlocBuilder<GetStatesBloc, GetStatesState>(
//                 builder: (context, state) {
//                   debugPrint('testing $state');
//                   return state.when(initial: () {
//                     return StateDropDown(
//                       onboardingBloc: widget.onboardingBloc,
//                       onSearchChanged: (val) {
//                         widget.onboardingBloc.statePage = 1;
//                         // widget.onboardingBloc.add(OnboardingEvent.stateList(
//                         //     stateSearchQuery: val.toString().toLowerCase(),
//                         //     wantLoading: false));
//                         BlocProvider.of<GetStatesBloc>(context).add(
//                             GetStatesEvent.fetch(
//                                 previousData: [],
//                                 page: "1",
//                                 searchKey: "${val?.trim().toLowerCase()}"));
//                       },
//                       searchController:
//                           widget.onboardingBloc.personalStateSearchController,
//                       errorText: widget.onboardingBloc.state.nextClicked
//                           ? selectedState.isEmpty
//                               ? AppString.emptyState.val
//                               : ""
//                           : "",
//                       items: widget.onboardingBloc.stateList,
//                       onChange: (value) {
//                         selectedState = value.toString();
//                         // widget.onboardingBloc.add(OnboardingEvent.cityList(
//                         //     searchQuery: widget.onboardingBloc.selectedCity,
//                         //     wantLoading: true));
//                         BlocProvider.of<GetStatesBloc>(context).add(
//                             GetStatesEvent.fetch(
//                                 previousData: [],
//                                 page: "1",
//                                 searchKey: "${value?.trim().toLowerCase()}"));
//                         // widget.onboardingBloc.selectedCityName = "";
//                       },
//                       selectedValue: widget.onboardingBloc.selectedStateName,
//                     );
//                   }, loading: (data) {
//                     // return CustomShimmerWidget.rectangular(
//                     //     height: DBL.fifty.val, width: DBL.twoEighty.val);
//                     return StateDropDown(
//                       onboardingBloc: widget.onboardingBloc,
//                       onSearchChanged: (val) {
//                         widget.onboardingBloc.statePage = 1;
//                         BlocProvider.of<GetStatesBloc>(context).add(
//                             GetStatesEvent.fetch(
//                                 previousData: data,
//                                 page: "1",
//                                 searchKey: "${val?.trim().toLowerCase()}"));
//                         // widget.onboardingBloc.add(OnboardingEvent.stateList(
//                         //     stateSearchQuery: val.toString().toLowerCase(),
//                         //     wantLoading: false));
//                         // BlocProvider.of<GetStatesBloc>(context).add(
//                         //     GetStatesEvent.fetch(
//                         //         page: "1",
//                         //         searchKey: "${val?.trim().toLowerCase()}"));
//                       },
//                       searchController:
//                           widget.onboardingBloc.personalStateSearchController,
//                       errorText: widget.onboardingBloc.state.nextClicked
//                           ? selectedState.isEmpty
//                               ? AppString.emptyState.val
//                               : ""
//                           : "",
//                       items: data,
//                       onChange: (value) {
//                         selectedState = value.toString();
//                         widget.onboardingBloc.add(OnboardingEvent.cityList(
//                             searchQuery: widget.onboardingBloc.selectedCity,
//                             wantLoading: true));
//                         // widget.onboardingBloc.selectedCityName = "";
//                       },
//                       selectedValue: widget.onboardingBloc.selectedStateName,
//                     );
//                   }, failed: (error) {
//                     return StateDropDown(
//                       onboardingBloc: widget.onboardingBloc,
//                       onSearchChanged: (val) {
//                         widget.onboardingBloc.statePage = 1;
//                         BlocProvider.of<GetStatesBloc>(context).add(
//                             GetStatesEvent.fetch(
//                                 previousData: [],
//                                 page: "1",
//                                 searchKey: "${val?.trim().toLowerCase()}"));
//                         // widget.onboardingBloc.add(OnboardingEvent.stateList(
//                         //     stateSearchQuery: val.toString().toLowerCase(),
//                         //     wantLoading: false));
//                         // BlocProvider.of<GetStatesBloc>(context).add(
//                         //     GetStatesEvent.fetch(
//                         //         page: "1",
//                         //         searchKey: "${val?.trim().toLowerCase()}"));
//                       },
//                       searchController:
//                           widget.onboardingBloc.personalStateSearchController,
//                       errorText: error,
//                       items: widget.onboardingBloc.stateList,
//                       onChange: (value) {
//                         selectedState = value.toString();
//                         widget.onboardingBloc.add(OnboardingEvent.cityList(
//                             searchQuery: widget.onboardingBloc.selectedCity,
//                             wantLoading: true));
//                         // widget.onboardingBloc.selectedCityName = "";
//                       },
//                       selectedValue: widget.onboardingBloc.selectedStateName,
//                     );
//                   }, success: (data) {
//                     return StateDropDown(
//                       onboardingBloc: widget.onboardingBloc,
//                       onSearchChanged: (val) {
//                         widget.onboardingBloc.statePage = 1;
//                         BlocProvider.of<GetStatesBloc>(context).add(
//                             GetStatesEvent.fetch(
//                                 previousData: data,
//                                 page: "1",
//                                 searchKey: "${val?.trim().toLowerCase()}"));
//                         // widget.onboardingBloc.add(OnboardingEvent.stateList(
//                         //     stateSearchQuery: val.toString().toLowerCase(),
//                         //     wantLoading: false));
//                         // BlocProvider.of<GetStatesBloc>(context).add(
//                         //     GetStatesEvent.fetch(
//                         //         page: "1",
//                         //         searchKey: "${val?.trim().toLowerCase()}"));
//                       },
//                       searchController:
//                           widget.onboardingBloc.personalStateSearchController,
//                       errorText: widget.onboardingBloc.state.nextClicked
//                           ? selectedState.isEmpty
//                               ? AppString.emptyState.val
//                               : ""
//                           : "",
//                       items: data,
//                       onChange: (value) {
//                         selectedState = value.toString();
//                         widget.onboardingBloc.add(OnboardingEvent.cityList(
//                             searchQuery: widget.onboardingBloc.selectedCity,
//                             wantLoading: true));
//                         // widget.onboardingBloc.selectedCityName = "";
//                       },
//                       selectedValue: widget.onboardingBloc.selectedStateName,
//                     );
//                   });
//                 },
//               ),
//       ],
//     );
//   }
//
//   _cityWidget(OnboardingState state) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         state.isInitialLoading
//             ? CustomShimmerWidget.rectangular(
//                 height: DBL.twenty.val, width: DBL.hundred.val)
//             : _labelWidget(AppString.city.val),
//         CustomSizedBox(height: DBL.twelve.val),
//         state.isCityApiCalling || state.isInitialLoading
//             ? CustomShimmerWidget.rectangular(
//                 height: DBL.fifty.val, width: DBL.twoEighty.val)
//             // : CustomSizedBox(
//             //     width: DBL.twoEighty.val,
//             //     child: CTextField(
//             //       controller: citySearchController,
//             //       validator: (value) {
//             //         if (value == null || value.isEmpty || value.trim() == "") {
//             //           return AppString.emptyState.val;
//             //         } else {
//             //           return null;
//             //         }
//             //       },
//             //       isReadOnly: true,
//             //       onChanged: (val) {
//             //         selectedState = val.toString();
//             //       },
//             //     ),
//             //   ),
//             : CityDropDown(
//                 onboardingBloc: widget.onboardingBloc,
//                 searchController:
//                     widget.onboardingBloc.personalCitySearchController,
//                 onSearchChanged: (val) {
//                   widget.onboardingBloc.cityPage = 1;
//                   widget.onboardingBloc.add(OnboardingEvent.cityList(
//                       searchQuery: val, wantLoading: false));
//                 },
//                 errorText: widget.onboardingBloc.state.nextClicked
//                     ? selectedCity.isEmpty
//                         ? AppString.emptyCity.val
//                         : ""
//                     : "",
//                 items: widget.onboardingBloc.cityList,
//                 onChange: (value) {
//                   selectedCity = value;
//                 },
//                 selectedValue: selectedCity.isEmpty
//                     ? AppString.selectCity.val
//                     : widget.onboardingBloc.selectedCityName,
//               ),
//       ],
//     );
//   }
//
//   _zipWidget(OnboardingState state) {
//     return CustomSizedBox(
//       width: DBL.twoEighty.val,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           state.isInitialLoading
//               ? CustomShimmerWidget.rectangular(
//                   height: DBL.twenty.val, width: DBL.hundred.val)
//               : _labelWidget(AppString.zip.val),
//           CustomSizedBox(height: DBL.twelve.val),
//           state.isInitialLoading
//               ? CustomShimmerWidget.rectangular(
//                   height: DBL.fifty.val, width: DBL.twoEighty.val)
//               : CTextField(
//                   maxLength: 10,
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return AppString.emptyZip.val;
//                     } else if (value.length != 10 && value.length != 5) {
//                       return AppString.invalidZip.val;
//                     }
//                     return null;
//                   },
//                   inputFormatter: [
//                     FilteringTextInputFormatter.deny(
//                       RegExp(r'^0+'), //users can't type 0 at 1st position
//                     ),
//                     FilteringTextInputFormatter.digitsOnly,
//                     LengthLimitingTextInputFormatter(9),
//                     ZipCodeFormatter(),
//                   ],
//                   controller: widget.onboardingBloc.personalZipController,
//                   onChanged: (value) {},
//                   onTap: () {},
//                 ),
//           CustomSizedBox(height: DBL.twenty.val),
//         ],
//       ),
//     );
//   }
//
//   _socialSecurityNoWidget(OnboardingState state) {
//     return CustomSizedBox(
//       width: DBL.twoEighty.val,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           state.isInitialLoading
//               ? CustomShimmerWidget.rectangular(
//                   height: DBL.twenty.val, width: DBL.hundred.val)
//               : _labelWidget(AppString.socialSecurityNumber.val),
//           CustomSizedBox(height: DBL.twelve.val),
//           state.isInitialLoading
//               ? CustomShimmerWidget.rectangular(
//                   height: DBL.fifty.val, width: DBL.twoEighty.val)
//               : CTextField(
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return AppString.emptySSN.val;
//                     } else if (value.length < 11) {
//                       return AppString.invalidSSN.val;
//                     }
//                     return null;
//                   },
//                   inputFormatter: [
//                     FilteringTextInputFormatter.digitsOnly,
//                     LengthLimitingTextInputFormatter(9),
//                     SocialSecurityNumberFormatter(),
//                   ],
//                   controller:
//                       widget.onboardingBloc.socialSecurityNumberController,
//                   onChanged: (value) {},
//                   onTap: () {},
//                 ),
//           CustomSizedBox(height: DBL.twenty.val),
//         ],
//       ),
//     );
//   }
//
//   _uploadDocumentWidget() {
//     return UploadDocumentWidget(
//       onTap: () async {
//         FilePickerResult? result = await FilePicker.platform.pickFiles(
//           type: FileType.custom,
//           allowedExtensions: ['jpg', 'png', 'pdf', 'jpeg'],
//           withData: true,
//         );
//         if (result != null) {
//           listUpdated = !listUpdated;
//           file = result.files.single;
//           int? sizeInBytes = file?.size;
//           double sizeInMb = sizeInBytes! / (1024 * 1024);
//           debugPrint("size $sizeInMb");
//           if (file?.extension == 'jpg' ||
//               file?.extension == 'png' ||
//               file?.extension == 'jpeg' ||
//               file?.extension == 'JPG' ||
//               file?.extension == 'PNG' ||
//               file?.extension == 'JPEG' ||
//               file?.extension == 'pdf' ||
//               file?.extension == 'PDF') {
//             if (sizeInMb < 20) {
//               // This file is Longer the
//
//               for (PlatformFile file in result.files) {
//                 bytesList.add(file);
//                 if (bytesList.length == 2) {
//                   break;
//                 }
//               }
//               widget.onboardingBloc.add(
//                 OnboardingEvent.securityDocumentUpload(bytesList, listUpdated),
//               );
//             } else {
//               CSnackBar.showError(context, msg: AppString.fileSizeError.val);
//             }
//           } else {
//             CSnackBar.showError(context, msg: AppString.fileTypeNotSupport.val);
//           }
//         }
//       },
//       isSignature: false,
//     );
//   }
//
//   _nextPrevButtonWidget() {
//     return BlocBuilder<FormValidationBloc, FormValidationState>(
//       bloc: formValidationBloc,
//       builder: (context, state) {
//         return CommonNextOrCancelButtons(
//           isLoading: widget.onboardingBloc.state.isLoading,
//           leftButtonName: AppString.back.val,
//           rightButtonName: AppString.next.val,
//           onLeftButtonPressed: () {
//             widget.isFromSignUp
//                 ? context.router.navigate(const SignUpRoute())
//                 : Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => CaregiverCreationPage(),
//                     ),
//                   ).then((_) {
//                     widget.onboardingBloc.addressLineController.text =
//                         widget.onboardingBloc.addressLineController.text.trim();
//                     widget.onboardingBloc.documentNumberController.text = widget
//                         .onboardingBloc.documentNumberController.text
//                         .trim();
// // Here you will get callback after coming back from NextPage()
// // Do your code here
//                   });
//             // : context.router.navigate(const CaregiverCreationRoute());
//             // widget.pageController
//             //     .jumpToPage(widget.pageController.page!.toInt() - 1);
//           },
//           onRightButtonPressed: () async {
//             widget.onboardingBloc.nextButtonClicked = true;
//
//             if (selectedGender.isEmpty &&
//                 selectedState.isEmpty &&
//                 selectedDocument.isEmpty &&
//                 selectedCity.isEmpty) {
//               widget.onboardingBloc.emit(
//                   widget.onboardingBloc.state.copyWith(nextClicked: true));
//             } else {
//               widget.onboardingBloc.emit(
//                   widget.onboardingBloc.state.copyWith(nextClicked: false));
//             }
//             if (widget.onboardingBloc.state.pickedProfilePic!.name.isEmpty) {
//               CSnackBar.showError(context,
//                   msg: AppString.pleaseSelectProfilePicture.val);
//             }
//
//             if (widget.onboardingBloc.state.pickedProfilePic!.size > 0) {
//               widget.onboardingBloc
//                   .emit(widget.onboardingBloc.state.copyWith(isLoading: true));
//               await uploadProfilePicToAwsS3(AppString.profilePicture.val,
//                   SharedPreffUtil().getCareGiverUserId);
//               widget.onboardingBloc
//                   .emit(widget.onboardingBloc.state.copyWith(isLoading: false));
//             }
//
//             if (bytesList.isEmpty) {
//               CSnackBar.showError(context, msg: AppString.emptyDocument.val);
//             }
//
//             if (bytesList.length <= 1) {
//               for (int i = 0; i < bytesList.length; i++) {
//                 widget.onboardingBloc.emit(
//                     widget.onboardingBloc.state.copyWith(isLoading: true));
//                 await uploadDocumentsToAwsS3(AppString.documents.val,
//                     SharedPreffUtil().getCareGiverUserId, bytesList[i]);
//                 widget.onboardingBloc.emit(
//                     widget.onboardingBloc.state.copyWith(isLoading: false));
//               }
//             }
//             checkInputData();
//           },
//         );
//       },
//     );
//   }
//
//   _labelWidget(String label) {
//     return CustomText(label,
//         style: TS().gRoboto(
//             fontWeight: FW.w400.val,
//             color: AppColor.label.val,
//             fontSize: FS.font16.val));
//   }
//
//   checkInputData() {
//     debugPrint("inside test");
//     debugPrint("inside test ${widget.onboardingBloc.profileUrl}");
//     debugPrint("inside test ${_formKey.currentState!.validate()}");
//
//     // addressLineController.text = addressLineController.text.trim();
//     // documentNumberController.text = documentNumberController.text.trim();
//     // streetController.text = streetController.text.trim();
//     if (_validateMode != AutovalidateMode.always) {
//       debugPrint("bvsgdvsd");
//       formValidationBloc.add(const FormValidationEvent.submit());
//       formValidationBloc.add(const FormValidationEvent.dropDown("true"));
//     }
//     final userId = SharedPreffUtil().getCareGiverUserId;
//     if (_formKey.currentState!.validate() &&
//         widget.onboardingBloc.profileUrl.isNotEmpty) {
//       debugPrint("inside true");
//
//       final expiryDate = widget.onboardingBloc.expiryDateController.text;
//       final dob = widget.onboardingBloc.dobController.text;
//
//       final expiryDateInDDMMYY = TimeUtils.dateInMMDDYYYYToDDMMYYY(expiryDate);
//       final dobInDDMMYY = TimeUtils.dateInMMDDYYYYToDDMMYYY(dob);
//
//       widget.onboardingBloc.add(OnboardingEvent.personalDetails(
//           userId: sharedPreffUtil.getIsFromWebsite == true
//               ? sharedPreffUtil.getAdminId
//               : userId,
//           dob: dobInDDMMYY,
//           genderId: int.parse(selectedGender),
//           street: widget.onboardingBloc.personalStreetController.text.trim(),
//           cityId: selectedCity,
//           stateId: widget.onboardingBloc.stateId,
//           latitude: selectedLatitude.toDouble(),
//           longitude: selectedLongitude.toDouble(),
//           zip: widget.onboardingBloc.personalZipController.text.trim(),
//           address: widget.onboardingBloc.addressLineController.text.trim(),
//           socialSecurityNo:
//               widget.onboardingBloc.socialSecurityNumberController.text.trim(),
//           documentId: selectedDocument,
//           documentNo:
//               widget.onboardingBloc.documentNumberController.text.trim(),
//           expiryDate: expiryDateInDDMMYY,
//           documentList: [widget.onboardingBloc.uploadedDocumentList.first],
//           profilePic: widget.onboardingBloc.profileUrl,
//           locationTag: selectedLocation));
//     }
//   }
//
//   Future<void> uploadProfilePicToAwsS3(String folderName, String userId) async {
//     widget.onboardingBloc.profileUrl = await ApiServiceS3().uploadImage(
//         pickedFile: widget.onboardingBloc.state.pickedProfilePic!.bytes!,
//         format:
//             widget.onboardingBloc.state.pickedProfilePic!.name.split('.').last,
//         folderName: folderName,
//         userId: userId,
//         context: context);
//   }
//
//   Future<void> uploadDocumentsToAwsS3(
//       String folderName, String userId, PlatformFile pickedItem) async {
//     widget.onboardingBloc.uploadedDocumentList.add(await ApiServiceS3()
//         .uploadImage(
//             pickedFile: pickedItem.bytes!,
//             format: pickedItem.name.split('.').last,
//             folderName: folderName,
//             userId: userId,
//             context: context));
//   }
// }
