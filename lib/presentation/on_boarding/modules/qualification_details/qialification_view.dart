import 'package:admin_580_tech/application/bloc/form_validation/form_validation_bloc.dart';
import 'package:admin_580_tech/application/bloc/onboarding/onboarding_bloc.dart';
import 'package:admin_580_tech/presentation/on_boarding/modules/qualification_details/models/qualification_and_test_result_request_model.dart';
import 'package:admin_580_tech/presentation/on_boarding/modules/qualification_details/widgets/hha_formatter.dart';
import 'package:admin_580_tech/presentation/on_boarding/modules/qualification_details/widgets/item_row_widget.dart';
import 'package:admin_580_tech/presentation/widget/custom_form.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/custom_snackbar.dart';
import '../../../../core/enum.dart';
import '../../../../core/time_utils.dart';
import '../../../../infrastructure/api_service_s3.dart';
import '../../../../infrastructure/on_boarding/on_boarding_repository.dart';
import '../../../../infrastructure/shared_preference/shared_preff_util.dart';
import '../../../widget/common_next_or_cancel_buttons.dart';
import '../../../widget/custom_container.dart';
import '../../../widget/custom_sizedbox.dart';
import '../../widgets/common_padding_widget.dart';
import '../../widgets/on_boarding_title_divider_widget.dart';

class QualificationView extends StatefulWidget {
  const QualificationView(
      {Key? key,
      required this.state,
      required this.onboardingBloc,
      required this.pageController})
      : super(key: key);
  final OnboardingBloc onboardingBloc;
  final OnboardingState state;
  final PageController pageController;

  @override
  State<QualificationView> createState() => _QualificationViewState();
}

class _QualificationViewState extends State<QualificationView> {
  final TextEditingController hhaController = TextEditingController();

  final TextEditingController blsController = TextEditingController();

  final TextEditingController tbPpdController = TextEditingController();

  final TextEditingController covidController = TextEditingController();

  final TextEditingController hhaDateController = TextEditingController();

  final TextEditingController blsDateController = TextEditingController();

  final TextEditingController tbPpdDateController = TextEditingController();

  final TextEditingController covidDateController = TextEditingController();

  final AutovalidateMode _validateMode = AutovalidateMode.disabled;
  final _formKey = GlobalKey<FormState>();
  final FormValidationBloc _validationBloc = FormValidationBloc();
  SharedPreffUtil sharedPreffUtil = SharedPreffUtil();
  final GlobalKey<ScrollableState> _scrollableKey =
      GlobalKey<ScrollableState>();

  bool hhaListUpdated = false;
  bool blsListUpdated = false;
  bool tbListUpdated = false;
  bool covidListUpdated = false;

  PlatformFile? hhaFile;
  PlatformFile? blsFile;
  PlatformFile? tbFile;
  PlatformFile? covidFile;

  // @override
  // void dispose() {
  //   hhaController.dispose();
  //   blsController.dispose();
  //   tbPpdController.dispose();
  //   covidController.dispose();
  //   hhaDateController.dispose();
  //   blsDateController.dispose();
  //   tbPpdDateController.dispose();
  //   covidDateController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => FormValidationBloc()),
        BlocProvider(
            create: (context) => OnboardingBloc(OnBoardingRepository()))
      ],
      child: BlocConsumer<OnboardingBloc, OnboardingState>(
        listenWhen: (previous, current) => previous != current,
        listener: (context, listenerState) {
          return listenerState.qualificationDetailsOption.fold(() {}, (some) {
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
        builder: (context, onboardingState) {
          return CommonPaddingWidget(
            child: SingleChildScrollView(
              key: _scrollableKey,
              child: CustomContainer(
                  child: CForm(
                formKey: _formKey,
                autoValidateMode: _validateMode,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    OnBoardingTitleDividerWidget(
                        title: AppString.qualificationAndTestResult.val),
                    ItemRowWidget(
                      listUpdated: hhaListUpdated,
                      inputFormatter: [
                        FilteringTextInputFormatter.allow(RegExp("[0-9]")),
                        HHAFormatter(),
                        LengthLimitingTextInputFormatter(7),
                      ],
                      whichDocument: 1,
                      documentList: widget.onboardingBloc.hhaBytesList,
                      onboardingBloc: widget.onboardingBloc,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return AppString.emptyHHANo.val;
                        }
                        return null;
                      },
                      onRegisterTap: () {
                        widget.onboardingBloc.launchURL(
                            url: AppString.hhaUrl.val, context: context);
                      },
                      selectedValue: onboardingState.isHHASelected,
                      state: onboardingState,
                      question: AppString.doYouHaveHHAReg.val,
                      radioGroup: onboardingState.isHHASelected,
                      textLabel: AppString.enterHHANumber.val,
                      textController: hhaController,
                      datePickerLabel: AppString.expiryDate.val,
                      dateController: hhaDateController,
                      datePickerValidation: AppString.emptyExpiry.val,
                      onUpoladTap: () async {
                        FilePickerResult? hhaResult =
                            await FilePicker.platform.pickFiles(
                          type: FileType.custom,
                          allowedExtensions: [
                            'jpg',
                            'png',
                            'jpeg',
                            'pdf',
                          ],
                          withData: true,
                        );
                        if (hhaResult != null) {
                          hhaListUpdated = !onboardingState.listUpdated;
                          hhaFile = hhaResult.files.single;

                          int? sizeInBytes = hhaFile?.size;
                          double sizeInMb = sizeInBytes! / (1024 * 1024);
                          debugPrint("size $sizeInMb");
                          if (hhaFile?.extension == 'jpg' ||
                              hhaFile?.extension == 'png' ||
                              hhaFile?.extension == 'jpeg' ||
                              hhaFile?.extension == 'JPG' ||
                              hhaFile?.extension == 'PNG' ||
                              hhaFile?.extension == 'JPEG' ||
                              hhaFile?.extension == 'pdf' ||
                              hhaFile?.extension == 'PDF') {
                            if (sizeInMb < 20) {
                              for (PlatformFile file in hhaResult.files) {
                                widget.onboardingBloc.hhaBytesList.add(file);
                                if (widget.onboardingBloc.hhaBytesList.length ==
                                    2) {
                                  break;
                                }
                              }

                              widget.onboardingBloc.add(
                                OnboardingEvent.hhaDocumentUpload(
                                    widget.onboardingBloc.hhaBytesList,
                                    hhaListUpdated),
                              );
                            } else {
                              CSnackBar.showError(context,
                                  msg: AppString.fileSizeError.val);
                            }
                          } else {
                            CSnackBar.showError(context,
                                msg: AppString.fileTypeNotSupport.val);
                          }
                        } else {
                          // User canceled the picker
                        }
                      },
                      onChanged: (val) {
                        widget.onboardingBloc
                            .add(OnboardingEvent.radioHHA(val ?? 0));
                      },
                    ),
                    CustomSizedBox(height: DBL.twenty.val),
                    ItemRowWidget(
                      listUpdated: blsListUpdated,
                      inputFormatter: [
                        LengthLimitingTextInputFormatter(30),
                        FilteringTextInputFormatter.allow(
                            RegExp(r'^[a-zA-Z0-9\-]+$'))
                      ],
                      whichDocument: 2,
                      documentList: widget.onboardingBloc.blsBytesList,
                      onboardingBloc: widget.onboardingBloc,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return AppString.emptyBLSNo.val;
                        }
                        return null;
                      },
                      onRegisterTap: () {
                        widget.onboardingBloc.launchURL(
                            url: AppString.blsUrl.val, context: context);
                      },
                      selectedValue: onboardingState.isBLSSelected,
                      state: onboardingState,
                      question: AppString.doYouHaveBLSCertification.val,
                      radioGroup: onboardingState.isBLSSelected,
                      textLabel: AppString.enterCertificationNumber.val,
                      textController: blsController,
                      datePickerLabel: AppString.expiryDate.val,
                      dateController: blsDateController,
                      datePickerValidation: AppString.emptyExpiry.val,
                      onUpoladTap: () async {
                        FilePickerResult? blsResult =
                            await FilePicker.platform.pickFiles(
                          type: FileType.custom,
                          allowedExtensions: [
                            'jpg',
                            'png',
                            'jpeg',
                            'pdf',
                          ],
                        );

                        if (blsResult != null) {
                          blsListUpdated = !onboardingState.listUpdated;
                          blsFile = blsResult.files.single;

                          int? sizeInBytes = blsFile?.size;
                          double sizeInMb = sizeInBytes! / (1024 * 1024);
                          debugPrint("size $sizeInMb");
                          if (blsFile?.extension == 'jpg' ||
                              blsFile?.extension == 'png' ||
                              blsFile?.extension == 'jpeg' ||
                              blsFile?.extension == 'JPG' ||
                              blsFile?.extension == 'PNG' ||
                              blsFile?.extension == 'JPEG' ||
                              blsFile?.extension == 'pdf' ||
                              blsFile?.extension == 'PDF') {
                            if (sizeInMb < 20) {
                              for (PlatformFile file in blsResult.files) {
                                widget.onboardingBloc.blsBytesList.add(file);
                                if (widget.onboardingBloc.blsBytesList.length ==
                                    2) {
                                  break;
                                }
                              }
                              widget.onboardingBloc.add(
                                OnboardingEvent.blsDocumentUpload(
                                    widget.onboardingBloc.blsBytesList,
                                    blsListUpdated),
                              );
                            } else {
                              CSnackBar.showError(context,
                                  msg: AppString.fileSizeError.val);
                            }
                          } else {
                            CSnackBar.showError(context,
                                msg: AppString.fileTypeNotSupport.val);
                          }
                        } else {}
                      },
                      onChanged: (val) {
                        widget.onboardingBloc
                            .add(OnboardingEvent.radioBLS(val ?? 0));
                      },
                    ),
                    CustomSizedBox(height: DBL.twenty.val),
                    ItemRowWidget(
                      listUpdated: tbListUpdated,
                      whichDocument: 3,
                      documentList: widget.onboardingBloc.tbBytesList,
                      onboardingBloc: widget.onboardingBloc,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return AppString.emptyTBNo.val;
                        }
                        return null;
                      },
                      onRegisterTap: () {},
                      selectedValue: onboardingState.isTBSelected,
                      state: onboardingState,
                      question: AppString.TBPPDTest.val,
                      radioGroup: onboardingState.isTBSelected,
                      textLabel: AppString.result.val,
                      textController: tbPpdController,
                      datePickerLabel: AppString.date.val,
                      dateController: tbPpdDateController,
                      datePickerValidation: AppString.emptyDate.val,
                      onUpoladTap: () async {
                        FilePickerResult? tbResult =
                            await FilePicker.platform.pickFiles(
                          type: FileType.custom,
                          allowedExtensions: [
                            'jpg',
                            'png',
                            'jpeg',
                            'pdf',
                          ],
                        );
                        if (tbResult != null) {
                          tbListUpdated = !onboardingState.listUpdated;
                          tbFile = tbResult.files.single;

                          int? sizeInBytes = tbFile?.size;
                          double sizeInMb = sizeInBytes! / (1024 * 1024);
                          if (tbFile?.extension == 'jpg' ||
                              tbFile?.extension == 'png' ||
                              tbFile?.extension == 'jpeg' ||
                              tbFile?.extension == 'JPG' ||
                              tbFile?.extension == 'PNG' ||
                              tbFile?.extension == 'JPEG' ||
                              tbFile?.extension == 'pdf' ||
                              tbFile?.extension == 'PDF') {
                            if (sizeInMb < 20) {
                              for (PlatformFile file in tbResult.files) {
                                widget.onboardingBloc.tbBytesList.add(file);
                                if (widget.onboardingBloc.tbBytesList.length ==
                                    2) {
                                  break;
                                }
                              }

                              widget.onboardingBloc.add(
                                OnboardingEvent.tbDocumentUpload(
                                    widget.onboardingBloc.tbBytesList,
                                    tbListUpdated),
                              );
                            } else {
                              CSnackBar.showError(context,
                                  msg: AppString.fileSizeError.val);
                            }
                          } else {
                            CSnackBar.showError(context,
                                msg: AppString.fileTypeNotSupport.val);
                          }
                        } else {
                          // User canceled the picker
                        }
                      },
                      onChanged: (val) {
                        widget.onboardingBloc
                            .add(OnboardingEvent.radioTB(val ?? 0));
                      },
                    ),
                    CustomSizedBox(height: DBL.twenty.val),
                    ItemRowWidget(
                      listUpdated: covidListUpdated,
                      whichDocument: 4,
                      documentList: widget.onboardingBloc.covidBytesList,
                      onboardingBloc: widget.onboardingBloc,
                      validator: (val) {
                        return null;
                      },
                      onRegisterTap: () {},
                      selectedValue: onboardingState.isCovidSelected,
                      state: onboardingState,
                      question: AppString.covid19Vaccination.val,
                      radioGroup: onboardingState.isCovidSelected,
                      textLabel: "",
                      textController: covidController,
                      datePickerLabel: AppString.date.val,
                      dateController: covidDateController,
                      datePickerValidation: AppString.emptyDate.val,
                      onUpoladTap: () async {
                        FilePickerResult? covidResult =
                            await FilePicker.platform.pickFiles(
                          type: FileType.custom,
                          allowedExtensions: [
                            'jpg',
                            'png',
                            'jpeg',
                            'pdf',
                          ],
                        );
                        if (covidResult != null) {
                          covidListUpdated = !onboardingState.listUpdated;
                          covidFile = covidResult.files.single;

                          int? sizeInBytes = tbFile?.size;
                          double sizeInMb = sizeInBytes! / (1024 * 1024);
                          if (tbFile?.extension == 'jpg' ||
                              tbFile?.extension == 'png' ||
                              tbFile?.extension == 'jpeg' ||
                              tbFile?.extension == 'JPG' ||
                              tbFile?.extension == 'PNG' ||
                              tbFile?.extension == 'JPEG' ||
                              tbFile?.extension == 'pdf' ||
                              tbFile?.extension == 'PDF') {
                            if (sizeInMb < 20) {
                              for (PlatformFile file in covidResult.files) {
                                widget.onboardingBloc.covidBytesList.add(file);
                                if (widget
                                        .onboardingBloc.covidBytesList.length ==
                                    2) {
                                  break;
                                }
                              }

                              widget.onboardingBloc.add(
                                OnboardingEvent.covidDocumentUpload(
                                    widget.onboardingBloc.covidBytesList,
                                    covidListUpdated),
                              );
                            } else {
                              CSnackBar.showError(context,
                                  msg: AppString.fileSizeError.val);
                            }
                          } else {
                            CSnackBar.showError(context,
                                msg: AppString.fileTypeNotSupport.val);
                          }
                        } else {
                          // User canceled the picker
                        }
                      },
                      onChanged: (val) {
                        widget.onboardingBloc
                            .add(OnboardingEvent.radioCovid(val ?? 0));
                      },
                    ),
                    BlocBuilder<FormValidationBloc, FormValidationState>(
                      bloc: _validationBloc,
                      builder: (context, validationState) {
                        return CommonNextOrCancelButtons(
                          showLeftButton: true,
                          isLoading: widget.onboardingBloc.state.isLoading,
                          rightButtonName: AppString.next.val,
                          leftButtonName: AppString.back.val,
                          onLeftButtonPressed: () {
                            widget.onboardingBloc.nextButtonClicked = false;
                            widget.pageController.jumpToPage(
                                widget.pageController.page!.toInt() - 1);
                          },
                          onRightButtonPressed: () async {
                            if ((onboardingState.isCovidSelected == 0 &&
                                    widget.onboardingBloc.state
                                        .covidDocumentList.isEmpty) ||
                                (onboardingState.isTBSelected == 0 &&
                                    widget.onboardingBloc.state.tbDocumentList
                                        .isEmpty) ||
                                (onboardingState.isBLSSelected == 0 &&
                                    widget.onboardingBloc.state.blsDocumentList
                                        .isEmpty) ||
                                (onboardingState.isHHASelected == 0 &&
                                    widget.onboardingBloc.state.hhaDocumentList
                                        .isEmpty)) {
                              _validationBloc
                                  .add(const FormValidationEvent.submit());

                              CSnackBar.showError(context,
                                  msg: AppString.emptyDocument.val);
                            } else {
                              checkInputData(onboardingState);
                            }
                            widget.onboardingBloc.nextButtonClicked = true;
                            if (widget.onboardingBloc.hhaBytesList.isNotEmpty) {
                              for (int i = 0;
                                  i < widget.onboardingBloc.hhaBytesList.length;
                                  i++) {
                                widget.onboardingBloc.emit(widget
                                    .onboardingBloc.state
                                    .copyWith(isLoading: true));
                                widget.onboardingBloc.uploadedHhaDocList.add(
                                    await uploadDocumentsToAwsS3(
                                        AppString.documents.val,
                                        SharedPreffUtil().getCareGiverUserId,
                                        widget.onboardingBloc.hhaBytesList[i]));
                                widget.onboardingBloc.emit(widget
                                    .onboardingBloc.state
                                    .copyWith(isLoading: false));
                              }
                              widget.onboardingBloc.hhaBytesList.clear();
                            }
                            if (widget.onboardingBloc.blsBytesList.isNotEmpty) {
                              for (int i = 0;
                                  i < widget.onboardingBloc.blsBytesList.length;
                                  i++) {
                                widget.onboardingBloc.emit(widget
                                    .onboardingBloc.state
                                    .copyWith(isLoading: true));
                                widget.onboardingBloc.uploadedBlsDocList.add(
                                    await uploadDocumentsToAwsS3(
                                        AppString.documents.val,
                                        SharedPreffUtil().getCareGiverUserId,
                                        widget.onboardingBloc.blsBytesList[i]));
                                widget.onboardingBloc.emit(widget
                                    .onboardingBloc.state
                                    .copyWith(isLoading: false));
                              }
                              widget.onboardingBloc.blsBytesList.clear();
                            }
                            if (widget.onboardingBloc.tbBytesList.isNotEmpty) {
                              for (int i = 0;
                                  i < widget.onboardingBloc.tbBytesList.length;
                                  i++) {
                                widget.onboardingBloc.emit(widget
                                    .onboardingBloc.state
                                    .copyWith(isLoading: true));
                                widget.onboardingBloc.uploadedTbDocList.add(
                                    await uploadDocumentsToAwsS3(
                                        AppString.documents.val,
                                        SharedPreffUtil().getCareGiverUserId,
                                        widget.onboardingBloc.tbBytesList[i]));
                                widget.onboardingBloc.emit(widget
                                    .onboardingBloc.state
                                    .copyWith(isLoading: false));
                              }
                              widget.onboardingBloc.tbBytesList.clear();
                            }
                            if (widget
                                .onboardingBloc.covidBytesList.isNotEmpty) {
                              for (int i = 0;
                                  i <
                                      widget
                                          .onboardingBloc.covidBytesList.length;
                                  i++) {
                                widget.onboardingBloc.emit(widget
                                    .onboardingBloc.state
                                    .copyWith(isLoading: true));
                                widget.onboardingBloc.uploadedCovidDocList.add(
                                    await uploadDocumentsToAwsS3(
                                        AppString.documents.val,
                                        SharedPreffUtil().getCareGiverUserId,
                                        widget
                                            .onboardingBloc.covidBytesList[i]));
                                widget.onboardingBloc.emit(widget
                                    .onboardingBloc.state
                                    .copyWith(isLoading: false));
                              }
                              widget.onboardingBloc.covidBytesList.clear();
                            }
                          },
                        );
                      },
                    ),
                  ],
                ),
              )),
            ),
          );
        },
      ),
    );
  }

  checkInputData(OnboardingState onboardingState) {
    if (_validateMode != AutovalidateMode.always) {
      _validationBloc.add(const FormValidationEvent.submit());
    }
    final userId = SharedPreffUtil().getCareGiverUserId;
    debugPrint(
        'upload ${widget.onboardingBloc.covidBytesList.isEmpty} ${widget.onboardingBloc.uploadedCovidDocList} ${widget.onboardingBloc.state.covidDocumentList}');
    debugPrint('${onboardingState.isCovidSelected}');

    if (_formKey.currentState!.validate() &&
            (onboardingState.isCovidSelected == 0 &&
                widget.onboardingBloc.uploadedCovidDocList.isNotEmpty) ||
        (onboardingState.isTBSelected == 0 &&
            widget.onboardingBloc.uploadedTbDocList.isNotEmpty) ||
        (onboardingState.isBLSSelected == 0 &&
            widget.onboardingBloc.uploadedBlsDocList.isNotEmpty) ||
        (onboardingState.isHHASelected == 0 &&
            widget.onboardingBloc.uploadedHhaDocList.isNotEmpty) ||
        true) {
      debugPrint(
          'status ${onboardingState.isCovidSelected}+ ${onboardingState.isHHASelected}+ ${onboardingState.isTBSelected} + ${onboardingState.isBLSSelected}');
      debugPrint('data check ${widget.onboardingBloc.covidBytesList}');
      debugPrint('data check ${widget.onboardingBloc.state.hhaDocumentList}');
      widget.onboardingBloc.add(
        OnboardingEvent.qualificationDetails(
            userId: sharedPreffUtil.getIsFromWebsite == true
                ? sharedPreffUtil.getAdminId
                : userId,
            haveHhaRegistration:
                widget.onboardingBloc.state.isHHASelected == 0 ? true : false,
            hhaDetails: widget.onboardingBloc.state.isHHASelected == 0
                ? HhaDetails(
                    document: widget.onboardingBloc.uploadedHhaDocList,
                    expiryDate: TimeUtils.dateInMMDDYYYYToDDMMYYY(
                        hhaDateController.text.trim()),
                    hhaNumber: hhaController.text.trim())
                : HhaDetails(hhaNumber: "", expiryDate: "", document: []),
            haveBlsCertificate:
                widget.onboardingBloc.state.isBLSSelected == 0 ? true : false,
            blsDetails: widget.onboardingBloc.state.isBLSSelected == 0
                ? BlsOrFirstAidCertificateDetails(
                    document: widget.onboardingBloc.uploadedBlsDocList,
                    certificationNumber: blsController.text.trim(),
                    expiryDate: TimeUtils.dateInMMDDYYYYToDDMMYYY(
                        blsDateController.text.trim()))
                : BlsOrFirstAidCertificateDetails(
                    document: [], certificationNumber: "", expiryDate: ""),
            haveTbTest:
                widget.onboardingBloc.state.isTBSelected == 0 ? true : false,
            tbDetails: widget.onboardingBloc.state.isTBSelected == 0
                ? TbOrPpdTestDetails(
                    document: widget.onboardingBloc.uploadedTbDocList,
                    result: tbPpdController.text.trim(),
                    date:
                        TimeUtils.dateInMMDDYYYYToDDMMYYY(tbPpdDateController.text.trim()))
                : TbOrPpdTestDetails(document: [], result: "", date: ""),
            haveCovidVaccination: widget.onboardingBloc.state.isCovidSelected == 0 ? true : false,
            covidDetails: widget.onboardingBloc.state.isCovidSelected == 0 ? CovidVaccinationDetails(document: widget.onboardingBloc.uploadedCovidDocList, date: TimeUtils.dateInMMDDYYYYToDDMMYYY(covidDateController.text.trim())) : CovidVaccinationDetails(document: [], date: "")),
      );
    }
  }

  Future<String> uploadDocumentsToAwsS3(
      String folderName, String userId, PlatformFile pickedItem) async {
    return await ApiServiceS3().uploadImage(
        pickedFile: pickedItem.bytes!,
        format: pickedItem.name.split('.').last,
        folderName: folderName,
        userId: userId,
        context: context);
  }
}
