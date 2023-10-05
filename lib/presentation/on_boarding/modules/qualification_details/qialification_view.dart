import 'package:admin_580_tech/application/bloc/form_validation/form_validation_bloc.dart';
import 'package:admin_580_tech/application/bloc/onboarding/onboarding_bloc.dart';
import 'package:admin_580_tech/presentation/on_boarding/modules/qualification_details/models/qualification_and_test_result_request_model.dart';
import 'package:admin_580_tech/presentation/on_boarding/modules/qualification_details/widgets/item_row_widget.dart';
import 'package:admin_580_tech/presentation/widget/custom_form.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
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

  List<PlatformFile> hhaBytesList = [];
  List<PlatformFile> blsBytesList = [];
  List<PlatformFile> tbBytesList = [];
  List<PlatformFile> covidBytesList = [];
  bool hhaListUpdated = false;
  bool blsListUpdated = false;
  bool tbListUpdated = false;
  bool covidListUpdated = false;

  @override
  void dispose() {
    hhaController.dispose();
    blsController.dispose();
    tbPpdController.dispose();
    covidController.dispose();
    hhaDateController.dispose();
    blsDateController.dispose();
    tbPpdDateController.dispose();
    covidDateController.dispose();
    super.dispose();
  }

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
                      whichDocument: 1,
                      documentList: hhaBytesList,
                      onboardingBloc: widget.onboardingBloc,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return AppString.emptyHHANo.val;
                        }
                        return null;
                      },
                      onRegisterTap: () {},
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
                        FilePickerResult? result =
                            await FilePicker.platform.pickFiles(
                          type: FileType.custom,
                          allowedExtensions: [
                            'jpg',
                            'png',
                            'jpeg',
                            'pdf',
                            'doc'
                          ],
                        );
                        if (result != null) {
                          for (PlatformFile file in result.files) {
                            hhaBytesList.add(file);
                            hhaListUpdated = !hhaListUpdated;
                            // Break the loop after adding 2 items
                            if (hhaBytesList.length == 2) {
                              break;
                            }
                          }

                          widget.onboardingBloc.add(
                            OnboardingEvent.hhaDocumentUpload(
                                hhaBytesList, hhaListUpdated),
                          );
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
                      whichDocument: 2,
                      documentList: blsBytesList,
                      onboardingBloc: widget.onboardingBloc,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return AppString.emptyBLSNo.val;
                        }
                        return null;
                      },
                      onRegisterTap: () {},
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
                        FilePickerResult? result =
                            await FilePicker.platform.pickFiles(
                          type: FileType.custom,
                          allowedExtensions: [
                            'jpg',
                            'png',
                            'jpeg',
                            'pdf',
                            'doc'
                          ],
                        );
                        if (result != null) {
                          for (PlatformFile file in result.files) {
                            blsBytesList.add(file);
                            blsListUpdated = !blsListUpdated;
                            // Break the loop after adding 2 items
                            if (blsBytesList.length == 2) {
                              break;
                            }
                          }

                          widget.onboardingBloc.add(
                            OnboardingEvent.blsDocumentUpload(
                                blsBytesList, blsListUpdated),
                          );
                        } else {
                          // User canceled the picker
                        }
                      },
                      onChanged: (val) {
                        widget.onboardingBloc
                            .add(OnboardingEvent.radioBLS(val ?? 0));
                      },
                    ),
                    CustomSizedBox(height: DBL.twenty.val),
                    ItemRowWidget(
                      whichDocument: 3,
                      documentList: tbBytesList,
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
                        FilePickerResult? result =
                            await FilePicker.platform.pickFiles(
                          type: FileType.custom,
                          allowedExtensions: [
                            'jpg',
                            'png',
                            'jpeg',
                            'pdf',
                            'doc'
                          ],
                        );
                        if (result != null) {
                          for (PlatformFile file in result.files) {
                            tbBytesList.add(file);
                            tbListUpdated = !tbListUpdated;

                            // Break the loop after adding 2 items
                            if (tbBytesList.length == 2) {
                              break;
                            }
                          }

                          widget.onboardingBloc.add(
                            OnboardingEvent.tbDocumentUpload(
                                tbBytesList, tbListUpdated),
                          );
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
                      whichDocument: 4,
                      documentList: covidBytesList,
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
                        FilePickerResult? result =
                            await FilePicker.platform.pickFiles(
                          type: FileType.custom,
                          allowedExtensions: [
                            'jpg',
                            'png',
                            'jpeg',
                            'pdf',
                            'doc'
                          ],
                        );
                        if (result != null) {
                          for (PlatformFile file in result.files) {
                            covidBytesList.add(file);
                            covidListUpdated = !covidListUpdated;
                            // Break the loop after adding 2 items
                            if (covidBytesList.length == 2) {
                              break;
                            }
                          }

                          widget.onboardingBloc.add(
                            OnboardingEvent.covidDocumentUpload(
                                covidBytesList, covidListUpdated),
                          );
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
                          isLoading: widget.onboardingBloc.state.isLoading,
                          rightButtonName: AppString.next.val,
                          leftButtonName: AppString.back.val,
                          onLeftButtonPressed: () {
                            widget.onboardingBloc.nextButtonClicked = false;
                            widget.pageController.jumpToPage(
                                widget.pageController.page!.toInt() - 1);
                          },
                          onRightButtonPressed: () async {
                            widget.onboardingBloc.nextButtonClicked = true;
                            if (hhaBytesList.isNotEmpty) {
                              for (int i = 0; i < hhaBytesList.length; i++) {
                                widget.onboardingBloc.uploadedHhaDocList.add(
                                    await uploadDocumentsToAwsS3(
                                        AppString.documents.val,
                                        SharedPreffUtil().getCareGiverUserId,
                                        hhaBytesList[i]));
                              }
                              hhaBytesList.clear();
                            }
                            if (blsBytesList.isNotEmpty) {
                              for (int i = 0; i < blsBytesList.length; i++) {
                                widget.onboardingBloc.uploadedBlsDocList.add(
                                    await uploadDocumentsToAwsS3(
                                        AppString.documents.val,
                                        SharedPreffUtil().getCareGiverUserId,
                                        blsBytesList[i]));
                              }
                              blsBytesList.clear();
                            }
                            if (tbBytesList.isNotEmpty) {
                              for (int i = 0; i < tbBytesList.length; i++) {
                                widget.onboardingBloc.uploadedTbDocList.add(
                                    await uploadDocumentsToAwsS3(
                                        AppString.documents.val,
                                        SharedPreffUtil().getCareGiverUserId,
                                        tbBytesList[i]));
                              }
                              tbBytesList.clear();
                            }
                            if (covidBytesList.isNotEmpty) {
                              for (int i = 0; i < covidBytesList.length; i++) {
                                widget.onboardingBloc.uploadedCovidDocList.add(
                                    await uploadDocumentsToAwsS3(
                                        AppString.documents.val,
                                        SharedPreffUtil().getCareGiverUserId,
                                        covidBytesList[i]));
                              }
                              covidBytesList.clear();
                            }
                            checkInputData();
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

  checkInputData() {
    if (_validateMode != AutovalidateMode.always) {
      _validationBloc.add(const FormValidationEvent.submit());
    }
    final userId = SharedPreffUtil().getCareGiverUserId;

    if (_formKey.currentState!.validate()) {
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
