import 'package:admin_580_tech/application/bloc/caregiver-profile/caregiver_profile_bloc.dart';
import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/core/string_extension.dart';
import 'package:admin_580_tech/domain/caregiver_profile/model/caregiver_profile_response.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/row_combo.dart';
import 'package:flutter/material.dart';
import 'package:pdf_render/pdf_render_widgets.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../caregiver_verification/widgets/file_preview.dart';
import '../../widget/cached_image.dart';
import '../../widget/custom_alert_dialog_widget.dart';
import '../../widget/custom_container.dart';

class CaregiverQualificationAndTestResultView extends StatelessWidget {
  const CaregiverQualificationAndTestResultView({Key? key, required this.state})
      : super(key: key);
  final CareGiverProfileState state;

  @override
  Widget build(BuildContext context) {
    QualificationAndTest? qualificationAndTest =
        state.response?.data?.qualificationAndTest;
    return CustomContainer(
      padding: EdgeInsets.symmetric(
          horizontal: DBL.twentyFive.val, vertical: DBL.twentyFive.val),
      color: AppColor.white.val,
      child: SingleChildScrollView(
        child: Column(
          children: [
            titleView(
                label: AppString.hhaDocument.val,
                value: qualificationAndTest?.isHhaDocument ?? ""),
            CustomSizedBox(height: DBL.eight.val),
            _subTitleVIew(
                label: AppString.docNumber.val,
                value: qualificationAndTest?.hhaDocumentNumber ?? ""),
            CustomSizedBox(height: DBL.eight.val),
            _subTitleVIew(
                label: AppString.expiryDate.val,
                value: qualificationAndTest?.hhaExpiryDate?.parseWithFormat(
                        dateFormat: AppString.MMMMddYYYY.val) ??
                    ""),
            FilePreview(
                fileName: AppString.document.val,
                onTap: () {
                  _docImagePreviewPopUp(
                      url:
                          qualificationAndTest?.hhaDocUrl?.first.document ?? "",
                      fileName: AppString.hhaDocument.val,
                      context: context);
                }),
            qualificationAndTest?.hhaDocUrl?.length == 2
                ? FilePreview(
                    fileName: AppString.document.val,
                    onTap: () {
                      _docImagePreviewPopUp(
                          url: qualificationAndTest?.hhaDocUrl?.last.document ??
                              "",
                          fileName: AppString.hhaDocument.val,
                          context: context);
                    })
                : SizedBox.shrink(),
            CustomSizedBox(
              height: DBL.eighteen.val,
            ),
            titleView(
                label: AppString.bLSCPRAndFirstAidCertification.val,
                value: qualificationAndTest?.isBlsFirstAidCertification ?? ""),
            CustomSizedBox(height: DBL.eight.val),
            _subTitleVIew(
                label: AppString.docNumber.val,
                value: qualificationAndTest?.blsDocumentNumber ?? ""),
            CustomSizedBox(height: DBL.eight.val),
            _subTitleVIew(
                label: AppString.expiryDate.val,
                value: qualificationAndTest?.blsExpiryDate
                        ?.parseWithFormat(dateFormat: AppString.mmDDYYY.val) ??
                    ""),
            FilePreview(
                fileName: AppString.document.val,
                onTap: () {
                  _docImagePreviewPopUp(
                      url:
                          qualificationAndTest?.blsDocUrl?.first.document ?? "",
                      fileName: AppString.bLSCPRAndFirstAidCertification.val,
                      context: context);
                }),
            qualificationAndTest?.blsDocUrl?.length == 2
                ? FilePreview(
                    fileName: AppString.document.val,
                    onTap: () {
                      _docImagePreviewPopUp(
                          url: qualificationAndTest?.blsDocUrl?.last.document ??
                              "",
                          fileName:
                              AppString.bLSCPRAndFirstAidCertification.val,
                          context: context);
                    })
                : SizedBox.shrink(),
            CustomSizedBox(
              height: DBL.eighteen.val,
            ),
            titleView(
                label: AppString.tBAndPPDTest.val,
                value: qualificationAndTest?.isTbPpdTest ?? ""),
            CustomSizedBox(height: DBL.eight.val),
            _subTitleVIew(
                label: AppString.takenDate.val,
                value: qualificationAndTest?.tbTakenDate
                        ?.parseWithFormat(dateFormat: AppString.mmDDYYY.val) ??
                    ""),
            CustomSizedBox(height: DBL.eight.val),
            _subTitleVIew(
                label: AppString.result.val,
                value: qualificationAndTest?.tbResult ?? ""),
            CustomSizedBox(
              height: DBL.eighteen.val,
            ),
            FilePreview(
                fileName: AppString.document.val,
                onTap: () {
                  _docImagePreviewPopUp(
                      url: qualificationAndTest?.tbDocUrl?.first.document ?? "",
                      fileName: AppString.tBAndPPDTest.val,
                      context: context);
                }),
            qualificationAndTest?.tbDocUrl?.length == 2
                ? FilePreview(
                    fileName: AppString.document.val,
                    onTap: () {
                      _docImagePreviewPopUp(
                          url: qualificationAndTest?.tbDocUrl?.last.document ??
                              "",
                          fileName: AppString.tBAndPPDTest.val,
                          context: context);
                    })
                : SizedBox.shrink(),
            titleView(
                label: AppString.covid19Vaccination.val,
                value: qualificationAndTest?.isCovidVaccination ?? ""),
            CustomSizedBox(height: DBL.eight.val),
            _subTitleVIew(
                label: AppString.takenDate.val,
                value: qualificationAndTest?.covidTakenDate
                        ?.parseWithFormat(dateFormat: AppString.mmDDYYY.val) ??
                    ""),
            CustomSizedBox(height: DBL.eight.val),
            FilePreview(
                fileName: AppString.document.val,
                onTap: () {
                  _docImagePreviewPopUp(
                      url: qualificationAndTest?.covidDocUrl?.first.document ??
                          "",
                      fileName: AppString.covid19Vaccination.val,
                      context: context);
                }),
            qualificationAndTest?.covidDocUrl?.length == 2
                ? FilePreview(
                    fileName: AppString.document.val,
                    onTap: () {
                      _docImagePreviewPopUp(
                          url: qualificationAndTest
                                  ?.covidDocUrl?.last.document ??
                              "",
                          fileName: AppString.covid19Vaccination.val,
                          context: context);
                    })
                : SizedBox.shrink()
          ],
        ),
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url}');
    }
  }

  _docImagePreviewPopUp(
      {required String url,
      required String fileName,
      required BuildContext context}) {
    if (true.isPdf(url)) {
      _launchUrl(url);
    } else {
      showGeneralDialog(
        barrierLabel: "",
        barrierDismissible: true,
        context: context,
        pageBuilder: (BuildContext buildContext, Animation animation,
            Animation secondaryAnimation) {
          final pdfController = PdfViewerController();

          return CustomAlertDialogWidget(
              width: 800,
              height: 550,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              heading: "",
              child: url.contains('.pdf')
                  ? CustomSizedBox(
                      width: 780,
                      height: 540,
                      child: PdfViewer.openFile(
                        url,
                        viewerController: pdfController,
                        onError: (err) => print(err),
                        params: const PdfViewerParams(
                            minScale: 0.2,
                            scrollDirection: Axis.vertical,
                            padding: 10),
                      ),
                    )
                  : CachedImage(
                      imgUrl: url,
                      width: 780,
                      height: 800,
                      isDocImage: true,
                      fit: BoxFit.contain,
                    ));
        },
      );
    }
  }

  Padding _subTitleVIew({required String label, required String value}) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: RowColonCombo.threeSeventy(
        label: label,
        value: value,
        fontSize: FS.font13PointFive.val,
      ),
    );
  }

  RowColonCombo titleView({required String label, required String value}) {
    return RowColonCombo.threeEighty(
      label: label,
      value: value,
      color: AppColor.label7.val,
      fontSize: FS.font13PointFive.val,
      fontWeight: FW.w500.val,
    );
  }
}
