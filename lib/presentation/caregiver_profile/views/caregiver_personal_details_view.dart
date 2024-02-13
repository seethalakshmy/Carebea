import 'package:admin_580_tech/application/bloc/caregiver-profile/caregiver_profile_bloc.dart';
import 'package:admin_580_tech/core/string_extension.dart';
import 'package:admin_580_tech/domain/caregiver_profile/model/caregiver_profile_response.dart';
import 'package:flutter/material.dart';
import 'package:pdf_render/pdf_render_widgets.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/enum.dart';
import '../../caregiver_verification/widgets/file_preview.dart';
import '../../widget/cached_image.dart';
import '../../widget/custom_alert_dialog_widget.dart';
import '../../widget/custom_container.dart';
import '../../widget/custom_sizedbox.dart';
import '../../widget/header_view.dart';
import '../../widget/row_combo.dart';

class CaregiverPersonalDetailsView extends StatelessWidget {
  const CaregiverPersonalDetailsView({Key? key, required this.state})
      : super(key: key);
  final CareGiverProfileState state;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      padding: EdgeInsets.symmetric(
          horizontal: DBL.twentyFive.val, vertical: DBL.twentyFive.val),
      color: AppColor.white.val,
      child: SingleChildScrollView(
        child: _topView(context),
      ),
    );
  }

  Column _topView(BuildContext context) {
    PersonalDetails? personalDetails = state.response?.data?.personalDetails;
    DocumentDetails? documentDetails = state.response?.data?.documentDetails;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: RowColonCombo.twoHundred(
                  label: AppString.dob.val,
                  value: personalDetails?.dob?.parseWithFormat(
                          dateFormat: AppString.MMMMddYYYY.val) ??
                      "",
                  fontSize: FS.font13PointFive.val),
            ),
            !isLg(context)
                ? Expanded(
                    child: _mobileNumberView(personalDetails),
                  )
                : CustomSizedBox.shrink(),
          ],
        ),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        Row(
          children: [
            Expanded(
              child: RowColonCombo.twoHundred(
                  label: AppString.gender.val,
                  value: personalDetails?.gender ?? "",
                  fontSize: FS.font13PointFive.val),
            ),
            !isLg(context)
                ? Expanded(
                    child: _emailView(personalDetails),
                  )
                : CustomSizedBox.shrink(),
          ],
        ),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        Row(
          children: [
            Expanded(
              child: RowColonCombo.twoHundred(
                  label: AppString.addressLine1.val,
                  value: personalDetails?.addressLine ?? "",
                  fontSize: FS.font13PointFive.val),
            ),
            !isLg(context)
                ? Expanded(
                    child: _ssnView(),
                  )
                : CustomSizedBox.shrink(),
          ],
        ),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        RowColonCombo.twoHundred(
            label: AppString.addressLine2.val,
            value: personalDetails?.street ?? "",
            fontSize: FS.font13PointFive.val),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        RowColonCombo.twoHundred(
            label: AppString.city.val,
            value: personalDetails?.city ?? "",
            fontSize: FS.font13PointFive.val),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        RowColonCombo.twoHundred(
            label: AppString.state.val,
            value: personalDetails?.state ?? "",
            fontSize: FS.font13PointFive.val),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        RowColonCombo.twoHundred(
            label: AppString.zip.val,
            value: personalDetails?.zip ?? "",
            fontSize: FS.font13PointFive.val),
        isLg(context)
            ? CustomSizedBox(
                height: DBL.six.val,
              )
            : CustomSizedBox.shrink(),
        isLg(context) ? _rightView(personalDetails) : CustomSizedBox.shrink(),
        CustomSizedBox(
          height: DBL.ten.val,
        ),
        Divider(
          color: AppColor.dividerColor4.val,
        ),
        CustomSizedBox(
          height: DBL.three.val,
        ),
        HeaderView(
          title: AppString.documentDetails.val,
          color: AppColor.matBlack3.val,
          fontSize: FS.font18.val,
          topPadding: DBL.zero.val,
          sidePadding: DBL.zero.val,
        ),
        CustomSizedBox(
          height: DBL.ten.val,
        ),
        RowColonCombo.twoHundred(
            label: AppString.documentUploaded.val,
            value: documentDetails?.documentUploaded ?? "",
            fontSize: FS.font13PointFive.val),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        RowColonCombo.twoHundred(
            label: AppString.docNumber.val,
            value: documentDetails?.doumentNumber ?? "",
            fontSize: FS.font13PointFive.val),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        RowColonCombo.twoHundred(
            label: AppString.expiryDate.val,
            value: documentDetails?.expiryDate
                    ?.parseWithFormat(dateFormat: AppString.MMMMddYYYY.val) ??
                "",
            fontSize: FS.font13PointFive.val),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        FilePreview(
            fileName: documentDetails?.documentUploaded ?? '',
            onTap: () {
              _docImagePreviewPopUp(
                  url: documentDetails?.docUrl?.first.document ?? "",
                  fileName: documentDetails?.documentUploaded ?? "",
                  context: context);
            }),
        documentDetails?.docUrl?.length == 2
            ? FilePreview(
                fileName: documentDetails?.documentUploaded ?? '',
                onTap: () {
                  _docImagePreviewPopUp(
                      url: documentDetails?.docUrl?.last.document ?? "",
                      fileName: documentDetails?.documentUploaded ?? "",
                      context: context);
                })
            : SizedBox.shrink()
      ],
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

  RowColonCombo _emailView(PersonalDetails? personalDetails) {
    return RowColonCombo.twoHundred(
        label: AppString.email.val,
        value: personalDetails?.email ?? "",
        fontSize: FS.font13PointFive.val);
  }

  RowColonCombo _ssnView() {
    return RowColonCombo.twoHundred(
        label: AppString.socialSecurityNumber.val,
        value: state.response?.data?.ssn ?? '',
        fontSize: FS.font13PointFive.val);
  }

  RowColonCombo _alterNativeMobileNumberView(PersonalDetails? personalDetails) {
    return RowColonCombo.twoHundred(
        label: AppString.alternativeMobileNumber.val,
        value: personalDetails?.alternativeNumber ?? "",
        fontSize: FS.font13PointFive.val);
  }

  RowColonCombo _mobileNumberView(PersonalDetails? personalDetails) {
    return RowColonCombo.twoHundred(
        label: AppString.mobileNumber.val,
        value: personalDetails?.mobile ?? "",
        fontSize: FS.font13PointFive.val);
  }

  Column _rightView(PersonalDetails? personalDetails) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _mobileNumberView(personalDetails),
        // CustomSizedBox(
        //   height: DBL.six.val,
        // ),
        // _alterNativeMobileNumberView(personalDetails),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        _emailView(personalDetails),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        _ssnView()
      ],
    );
  }

  bool isLg(BuildContext context) => MediaQuery.of(context).size.width <= 1236;
}
