import 'package:admin_580_tech/presentation/caregiver_detail/widgets/svg_text.dart';
import 'package:admin_580_tech/presentation/on_boarding/modules/qualification_details/widgets/yes_no_radio_button_widget.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pdf_render/pdf_render_widgets.dart';

import '../../../../../application/bloc/onboarding/onboarding_bloc.dart';
import '../../../../../core/enum.dart';
import '../../../../../core/text_styles.dart';
import '../../../../widget/commonImageview.dart';
import '../../../../widget/common_date_picker_widget.dart';
import '../../../../widget/custom_alert_dialog_widget.dart';
import '../../../../widget/custom_container.dart';
import '../../../../widget/custom_sizedbox.dart';
import '../../../../widget/custom_text.dart';
import '../../../../widget/custom_text_field.dart';
import '../../../widgets/file_preview_widget.dart';
import '../../../widgets/image_preview_widget.dart';
import '../../../widgets/upload_document_widget.dart';

class ItemRowWidget extends StatelessWidget {
  ItemRowWidget(
      {Key? key,
      required this.radioGroup,
      required this.textController,
      required this.question,
      required this.dateController,
      required this.datePickerLabel,
      required this.onUpoladTap,
      required this.onRegisterTap,
      required this.datePickerValidation,
      required this.textLabel,
      required this.onChanged,
      required this.state,
      required this.onboardingBloc,
      required this.selectedValue,
      required this.validator,
      required this.documentList,
      required this.whichDocument,
      required this.listUpdated,
      this.inputFormatter})
      : super(key: key);
  final String question;
  final int radioGroup;
  final int selectedValue;
  final String textLabel;
  final String datePickerLabel;
  final String datePickerValidation;
  final TextEditingController textController;
  final TextEditingController dateController;
  final void Function(int?) onChanged;
  final Function() onUpoladTap;
  final Function() onRegisterTap;
  final OnboardingState state;
  final OnboardingBloc onboardingBloc;
  final FormFieldValidator<String> validator;
  final List<PlatformFile> documentList;
  final int whichDocument;
  final List<TextInputFormatter>? inputFormatter;
  bool listUpdated;
  final pdfController = PdfViewerController();

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            question,
            style:
                TS().gRoboto(fontSize: FS.font15.val, fontWeight: FW.w400.val),
          ),
          CustomSizedBox(height: DBL.ten.val),
          YesNoRadioButtonWidget(
            yesLabel: AppString.yes.val,
            noLabel: AppString.no.val,
            groupValue: radioGroup,
            onChanged: onChanged,
          ),
          CustomContainer(height: DBL.fifteen.val),
          selectedValue == 0 ? _yesCaseWidget(context) : _noCaseWidget(),
        ],
      ),
    );
  }

  _yesCaseWidget(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.end,
      runSpacing: DBL.twenty.val,
      children: [
        question == AppString.TBPPDTest.val ||
                question == AppString.covid19Vaccination.val
            ? const CustomSizedBox()
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomText(
                    softWrap: true,
                    textLabel,
                    style: TS().gRoboto(
                        fontWeight: FW.w400.val,
                        fontSize: FS.font14.val,
                        color: AppColor.label.val),
                  ),
                  CustomSizedBox(height: DBL.twelve.val),
                  CTextField(
                    width: DBL.twoEighty.val,
                    controller: textController,
                    validator: validator,
                    inputFormatter: inputFormatter ?? [],
                  )
                ],
              ),
        question == AppString.TBPPDTest.val ||
                question == AppString.covid19Vaccination.val
            ? const CustomSizedBox()
            : CustomSizedBox(width: DBL.ten.val),
        CommonDatePickerWidget(
          initialDate: question == AppString.TBPPDTest.val
              ? DateTime(2000)
              : question == AppString.covid19Vaccination.val
                  ? DateTime(2020)
                  : DateTime.now().add(const Duration(days: 30)),
          firstDate: question == AppString.TBPPDTest.val
              ? DateTime(2000)
              : question == AppString.covid19Vaccination.val
                  ? DateTime(2020)
                  : DateTime.now().add(const Duration(days: 30)),
          lastDate: question == AppString.TBPPDTest.val ||
                  question == AppString.covid19Vaccination.val
              ? DateTime.now()
              : DateTime(3000),
          label: datePickerLabel,
          dateController: dateController,
          labelSize: FS.font14.val,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return datePickerValidation;
            }
            return null;
          },
        ),
        question == AppString.TBPPDTest.val ||
                question == AppString.covid19Vaccination.val
            ? CustomSizedBox(width: DBL.ten.val)
            : const CustomSizedBox(),
        question == AppString.TBPPDTest.val
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomText(
                    softWrap: true,
                    textLabel,
                    style: TS().gRoboto(
                        fontWeight: FW.w400.val,
                        fontSize: FS.font14.val,
                        color: AppColor.label.val),
                  ),
                  CustomSizedBox(height: DBL.twelve.val),
                  CTextField(
                    width: DBL.twoEighty.val,
                    controller: textController,
                    validator: validator,
                  )
                ],
              )
            : question == AppString.covid19Vaccination.val
                ? CustomSizedBox(
                    width: DBL.twoEighty.val,
                  )
                : const CustomSizedBox(),
        MediaQuery.of(context).size.width >= 650 &&
                MediaQuery.of(context).size.width <= 690
            ? const CustomSizedBox()
            : CustomSizedBox(width: DBL.forty.val),
        documentList.length > 1
            ? const CustomContainer()
            : CustomContainer(
                width: DBL.twoHundred.val,
                child: UploadDocumentWidget(
                  onTap: onUpoladTap,
                  isSignature: false,
                )),
        documentList.isNotEmpty
            ? _previewShowingWidget(state)
            : const CustomContainer(),
      ],
    );
  }

  _previewShowingWidget(OnboardingState state) {
    print("doc list is : ${documentList[0].name}");
    return CustomContainer(
      height: DBL.hundred.val,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: documentList.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(DBL.ten.val),
              child: documentList[index].name.endsWith(".png") ||
                      documentList[index].name.endsWith(".jpg") ||
                      documentList[index].name.endsWith(".jpeg")
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
                                  bytes: documentList[index].bytes!,
                                ));
                          },
                        );
                      },
                      child: ImagePreviewWidget(
                        bytes: documentList[index].bytes!,
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
                                    documentList[index].bytes!,
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
                        fileName: documentList[index].name,
                        onRemoveTap: () {
                          _removeSelectedFiles(index, state);
                        },
                      ),
                    ),
            );
          }),
    );
  }

  _removeSelectedFiles(int index, OnboardingState state) {
    documentList.removeAt(index);
    listUpdated = !state.listUpdated;
    if (whichDocument == 1) {
      onboardingBloc
          .add(OnboardingEvent.hhaDocumentUpload(documentList, listUpdated));
    } else if (whichDocument == 2) {
      onboardingBloc
          .add(OnboardingEvent.blsDocumentUpload(documentList, listUpdated));
    } else if (whichDocument == 3) {
      onboardingBloc
          .add(OnboardingEvent.tbDocumentUpload(documentList, listUpdated));
    } else {
      onboardingBloc
          .add(OnboardingEvent.covidDocumentUpload(documentList, listUpdated));
    }
  }

  _noCaseWidget() {
    return question == AppString.doYouHaveHHAReg.val ||
            question == AppString.doYouHaveBLSCertification.val
        ? _clickToRegisterWidget()
        : question == AppString.tBAndPPDTest.val
            ? CustomContainer(
                width: DBL.threeFortyThree.val,
                height: DBL.thirtyFive.val,
                color: AppColor.red3.val,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomSizedBox(width: DBL.eight.val),
                    CustomSizedBox(
                      width: DBL.sixteen.val,
                      height: DBL.sixteen.val,
                      child: SVGText(
                        path: IMG.exclamation.val,
                        name: "",
                        width: DBL.sixteen.val,
                        height: DBL.sixteen.val,
                      ),
                    ),
                    CustomSizedBox(width: DBL.five.val),
                    CustomText(
                      AppString.pleaseVisitDoctorProvideTBTest.val,
                      style: TS().gRoboto(
                          fontSize: FS.font14.val,
                          fontWeight: FW.w400.val,
                          color: AppColor.black4.val),
                    )
                  ],
                ),
              )
            : CustomContainer();
  }

  _clickToRegisterWidget() {
    return InkWell(
      onTap: onRegisterTap,
      child: CustomContainer(
        width: DBL.oneForty.val,
        padding: EdgeInsets.only(bottom: DBL.twenty.val),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              AppString.clickHereToRegister.val,
              style: TS().gRoboto(
                  fontSize: FS.font14.val,
                  fontWeight: FW.w500.val,
                  color: AppColor.primaryColor.val),
            ),
            CustomContainer(
              height: DBL.one.val,
              color: AppColor.primaryColor.val,
            )
          ],
        ),
      ),
    );
  }
}
