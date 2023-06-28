import 'package:admin_580_tech/application/bloc/form_validation/form_validation_bloc.dart';
import 'package:admin_580_tech/core/custom_debugger.dart';
import 'package:admin_580_tech/domain/caregiver_verification/model/caregiver_verification_response.dart';
import 'package:admin_580_tech/domain/caregiver_verification/model/reject_params.dart';
import 'package:admin_580_tech/presentation/caregiver_verification/widgets/custom_check_text_field.dart';
import 'package:admin_580_tech/presentation/caregiver_verification/widgets/file_preview.dart';
import 'package:admin_580_tech/presentation/side_menu/side_menu_page.dart';
import 'package:admin_580_tech/presentation/widget/custom_button.dart';
import 'package:admin_580_tech/presentation/widget/custom_form.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:webviewx/webviewx.dart';

import '../../application/bloc/caregiver_verification/caregiver_verification_bloc.dart';
import '../../core/enum.dart';
import '../../core/text_styles.dart';
import '../../domain/caregivers/model/verification_types.dart';
import '../widget/custom_alert_dialog_widget.dart';
import '../widget/custom_container.dart';
import '../widget/custom_listview_builder.dart';
import '../widget/custom_padding.dart';
import '../widget/custom_sizedbox.dart';
import '../widget/custom_svg.dart';
import '../widget/custom_text.dart';
import '../widget/error_view.dart';
import '../widget/header_view.dart';
import '../widget/loader_view.dart';
import '../widget/row_combo.dart';
import 'widgets/approval_status_box.dart';

class CaregiverVerificationPage extends StatefulWidget {
  const CaregiverVerificationPage({Key? key, @QueryParam('id') this.id = ''})
      : super(key: key);

  final String? id;

  @override
  State<CaregiverVerificationPage> createState() =>
      _CaregiverVerificationPageState();
}

class _CaregiverVerificationPageState extends State<CaregiverVerificationPage> {
  final TextEditingController _reasonController = TextEditingController();
  final FocusNode _reasonNode = FocusNode();
  final TextEditingController _hhaReasonController = TextEditingController();
  final FocusNode _hhaReasonNode = FocusNode();
  final TextEditingController _blsReasonController = TextEditingController();
  final FocusNode _blsReasonNode = FocusNode();
  final TextEditingController _tbReasonController = TextEditingController();
  final FocusNode _tbReasonNode = FocusNode();
  final TextEditingController _covid19ReasonController =
      TextEditingController();
  final FocusNode _covid19ReasonNode = FocusNode();
  final _formKey = GlobalKey<FormState>();
  AutovalidateMode _validateMode = AutovalidateMode.disabled;
  String userId = "";
  RejectionParams? rejectionParams;

  @override
  void initState() {
    String testID =
        context.routeData.queryParams.getString('id', '') ??
            "";
    // String testID = widget.id ?? "empty";
    print('test id::: ${autoTabRouter?.currentChild?.queryParams.getString('id','')}');
    print(' id::: ${widget.id}');
    userId = autoTabRouter?.currentChild?.queryParams.getString('id','') ?? "";
    print('userID ${userId}');
    super.initState();
    context
        .read<CareGiverVerificationBloc>()
        .add(CareGiverVerificationEvent.getVerificationData(userId: userId));
  }

  @override
  Widget build(BuildContext context) {
    CustomLog.log("width == ${MediaQuery.of(context).size.width}");
    return BlocBuilder<CareGiverVerificationBloc, CareGiverVerificationState>(
      builder: (context, state) {
        return state.isLoading
            ? const LoaderView()
            : state.isError
                ? ErrorView(isClientError: false, errorMessage: state.error)
                : _bodyView(context, state);
      },
    );
  }

  Center _bodyView(BuildContext context, CareGiverVerificationState state) {
    Caregiver? caregiver = state.response?.data?.caregiver;
    return Center(
      child: CustomContainer(
          color: AppColor.white.val,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomSizedBox(
                height: DBL.four.val,
              ),
              CustomSvg(
                width: DBL.oneFifty.val,
                path: IMG.profilePlaceHolder.val,
              ),
              CustomSizedBox(
                height: DBL.four.val,
              ),
              CustomText(
                "${caregiver?.firstName} ${caregiver?.lastName}",
                style: TS().gRoboto(
                  color: AppColor.black2.val,
                  fontWeight: FW.w600.val,
                  fontSize: FS.font16.val,
                ),
              ),
              CustomSizedBox(
                height: DBL.two.val,
              ),
              _buildDivider(context, color: AppColor.lightBlue2.val),
              _verificationTabView(),
              CustomSizedBox(
                height: DBL.eight.val,
              ),
              BlocBuilder<CareGiverVerificationBloc,
                  CareGiverVerificationState>(
                builder: (context, state) {
                  return state.selectedVerificationIndex == 0
                      ? _backgroundVerificationView(context, state)
                      : _certificateVerificationView(state);
                },
              ),
            ],
          )),
    );
  }

  CustomContainer _buildDivider(BuildContext context, {Color? color}) {
    return CustomContainer(
      height: 1.2,
      width: MediaQuery.of(context).size.width,
      color: color ?? AppColor.dividerColor.val,
    );
  }

  CustomPadding _backgroundVerificationView(
      BuildContext context, CareGiverVerificationState state) {
    PersonalDetails? personalDetails =
        state.response?.data?.backgroundVerification?.personalDetails;
    return CustomPadding.symmetric(
      horizontal: DBL.fifty.val,
      vertical: DBL.three.val,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderView(
            title: AppString.personalDetails.val,
            color: AppColor.matBlack3.val,
            fontSize: FS.font18.val,
            topPadding: DBL.zero.val,
            sidePadding: DBL.zero.val,
          ),
          CustomSizedBox(
            height: DBL.ten.val,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: RowColonCombo.twoHundred(
                    label: AppString.dob.val,
                    value: personalDetails?.dob ?? "",
                    fontSize: FS.font13PointFive.val),
              ),
              !isLarge(context)
                  ? Expanded(
                      flex: 1,
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
                flex: 1,
                child: RowColonCombo.twoHundred(
                    label: AppString.gender.val,
                    value: personalDetails?.gender ?? "",
                    fontSize: FS.font13PointFive.val),
              ),
              !isLarge(context)
                  ? Expanded(
                      flex: 1,
                      child: _alterNativeMobileNumberView(personalDetails),
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
                flex: 1,
                child: RowColonCombo.twoHundred(
                    label: AppString.addressLine1.val,
                    value: personalDetails?.addressLine ?? "",
                    fontSize: FS.font13PointFive.val),
              ),
              !isLarge(context)
                  ? Expanded(
                      flex: 1,
                      child: _emailView(personalDetails),
                    )
                  : CustomSizedBox.shrink(),
            ],
          ),
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
              label: AppString.street.val,
              value: personalDetails?.street ?? "",
              fontSize: FS.font13PointFive.val),
          CustomSizedBox(
            height: DBL.six.val,
          ),
          RowColonCombo.twoHundred(
              label: AppString.zip.val,
              value: personalDetails?.zip ?? "",
              fontSize: FS.font13PointFive.val),
          CustomSizedBox(
            height: DBL.six.val,
          ),
          RowColonCombo.twoHundred(
              label: AppString.state.val,
              value: personalDetails?.zip ?? "",
              fontSize: FS.font13PointFive.val),
          isLarge(context)
              ? CustomSizedBox(
                  height: DBL.six.val,
                )
              : CustomSizedBox.shrink(),
          isLarge(context)
              ? _backgroundVerificationRightView(personalDetails)
              : CustomSizedBox.shrink(),
          CustomSizedBox(
            height: DBL.ten.val,
          ),
          Divider(
            color: AppColor.dividerColor4.val,
          ),
          !isLarge(context)
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        flex: 1,
                        child: _backgroundVerificationBottomLeftView(state)),
                    Expanded(
                        flex: 1,
                        child: _backgroundVerificationBottomRightView(state))
                  ],
                )
              : _backgroundVerificationBottomLeftView(state)
        ],
      ),
    );
  }

  _certificateVerificationView(CareGiverVerificationState state) {
    QualificationAndTest? qualificationAndTest =
        state.response?.data?.certificateVerification?.qualificationAndTest;
    return CustomPadding.symmetric(
      horizontal: DBL.fifty.val,
      vertical: DBL.three.val,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderView(
            title: AppString.certificateVerification.val,
            color: AppColor.matBlack3.val,
            fontSize: FS.font18.val,
            topPadding: DBL.zero.val,
            sidePadding: DBL.zero.val,
          ),
          CustomSizedBox(
            height: DBL.twenty.val,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: _hhaRowCombo(qualificationAndTest)),
              !isXs1(context)
                  ? FilePreview(
                      fileName: "HHA Document",
                      onTap: () {},
                      width: null,
                    )
                  : CustomSizedBox.shrink()
            ],
          ),
          CustomSizedBox(
            height: DBL.eight.val,
          ),
          _buildDivider(context),
          CustomSizedBox(
            height: DBL.ten.val,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: _blsRowCombo(qualificationAndTest)),
              !isXs1(context)
                  ? FilePreview(
                      fileName: "BLS Document",
                      onTap: () {},
                      width: null,
                    )
                  : CustomSizedBox.shrink()
            ],
          ),
          CustomSizedBox(
            height: DBL.eight.val,
          ),
          _buildDivider(context),
          CustomSizedBox(
            height: DBL.ten.val,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: _tbAndPptRowCombo(qualificationAndTest)),
              !isXs1(context)
                  ? FilePreview(
                      fileName: "TB Document",
                      onTap: () {},
                      width: null,
                    )
                  : CustomSizedBox.shrink()
            ],
          ),
          CustomSizedBox(
            height: DBL.eight.val,
          ),
          _buildDivider(context),
          CustomSizedBox(
            height: DBL.ten.val,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: _covid19RowCombo(qualificationAndTest)),
              !isXs1(context)
                  ? FilePreview(
                      fileName: "Covid Document",
                      onTap: () {},
                      width: null,
                    )
                  : CustomSizedBox.shrink()
            ],
          ),
          CustomSizedBox(height: DBL.fifteen.val),
          Row(
            children: [
              Expanded(
                child: CustomText(
                  AppString.acceptThisCareAmbassador.val,
                  style: TS().gRoboto(
                      color: AppColor.primaryColor.val,
                      fontWeight: FW.w500.val,
                      fontSize: isLg2(context) ? FS.font18.val : FS.font22.val),
                ),
              ),
              CustomSizedBox(
                width: isLg2(context) ? DBL.seven.val : DBL.twelve.val,
              ),
              !isXs2(context)
                  ? Expanded(
                      child: _certificateApprovalStatusBox(state),
                    )
                  : CustomSizedBox.shrink()
            ],
          ),
          CustomSizedBox(
            height: DBL.fifteen.val,
          ),
          isXs2(context)
              ? _certificateApprovalStatusBox(state)
              : CustomSizedBox.shrink(),
          CustomSizedBox(
            height: DBL.hundred.val,
          ),
        ],
      ),
    );
  }

  ApprovalStatusBox _certificateApprovalStatusBox(
      CareGiverVerificationState state) {
    int status =
        state.response?.data?.certificateVerification?.approvalStatus ?? 0;
    print('status is $status');
    return ApprovalStatusBox(
      careGiversVerificationState: state,
      textEditingController: _reasonController,
      focusNode: _reasonNode,
      status: status,
      onTapApprove: () {
        context.read<CareGiverVerificationBloc>().add(
            CareGiverVerificationEvent.careGiverCertificateApprove(
                userID: userId, status: 1, context: context));
      },
      onTapReject: () {
        _certificateRejectPopUp(
          context,
        );
      },
    );
  }

  _hhaRowCombo(QualificationAndTest? qualificationAndTest) {
    return Column(
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
            value: qualificationAndTest?.hhaExpiryDate ?? ""),
      ],
    );
  }

  _blsRowCombo(QualificationAndTest? qualificationAndTest) {
    return Column(
      children: [
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
            value: qualificationAndTest?.blsExpiryDate ?? ""),
      ],
    );
  }

  _tbAndPptRowCombo(QualificationAndTest? qualificationAndTest) {
    return Column(
      children: [
        titleView(
            label: AppString.tBAndPPDTest.val,
            value: qualificationAndTest?.isTbPpdTest ?? ""),
        CustomSizedBox(height: DBL.eight.val),
        _subTitleVIew(
            label: AppString.takenDate.val,
            value: qualificationAndTest?.tbTakenDate ?? ""),
        CustomSizedBox(height: DBL.eight.val),
        _subTitleVIew(
            label: AppString.result.val,
            value: qualificationAndTest?.tbResult ?? ""),
      ],
    );
  }

  _covid19RowCombo(QualificationAndTest? qualificationAndTest) {
    return Column(
      children: [
        titleView(
            label: AppString.covid19Vaccination.val,
            value: qualificationAndTest?.isCovidVaccination ?? ""),
        CustomSizedBox(height: DBL.eight.val),
        _subTitleVIew(
            label: AppString.takenDate.val,
            value: qualificationAndTest?.covidTakenDate ?? ""),
      ],
    );
  }

  _backgroundVerificationBottomLeftView(CareGiverVerificationState state) {
    DocumentDetails? documentDetails =
        state.response?.data?.backgroundVerification?.documentDetails;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
          width: getWidth(context, MediaQuery.of(context).size),
        ),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        RowColonCombo.twoHundred(
            label: AppString.docNumber.val,
            value: documentDetails?.documentNumber ?? "",
            fontSize: FS.font13PointFive.val),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        RowColonCombo.twoHundred(
            label: AppString.expiryDate.val,
            value: documentDetails?.expiryDate ?? "",
            fontSize: FS.font13PointFive.val),
        CustomSizedBox(
          height: DBL.twentyFive.val,
        ),
        FilePreview(
            fileName: "Passport Doc",
            onTap: () {
              _documentPreviewPopUp(context, documentDetails?.docUrl ?? "");
            }),
        CustomSizedBox(
          height: isLarge(context) ? DBL.fifteen.val : DBL.zero.val,
        ),
        isLarge(context)
            ? _backgroundVerificationBottomRightView(state)
            : CustomSizedBox.shrink(),
        CustomSizedBox(
          height: DBL.hundred.val,
        ),
      ],
    );
  }

  _backgroundVerificationBottomRightView(CareGiverVerificationState state) {
    int status = state.response?.data?.backgroundVerification?.personalDetails
            ?.approvalStatus ??
        0;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomSizedBox(
          height: DBL.three.val,
        ),
        Row(
          children: [
            CustomSizedBox(
              width: DBL.twoThirty.val,
              child: HeaderView(
                title: AppString.backgroundCheckStatus.val,
                color: AppColor.matBlack3.val,
                fontSize: FS.font18.val,
                topPadding: DBL.zero.val,
                sidePadding: DBL.zero.val,
              ),
            ),
            CustomSizedBox(
              width: DBL.ten.val,
            ),
            status != 0
                ? _backgroundVerifyApprovalStatusBox(state, status)
                : CustomSizedBox.shrink()
          ],
        ),
        CustomSizedBox(
          height: DBL.twenty.val,
        ),
        status == 0
            ? _backgroundVerifyApprovalStatusBox(state, status)
            : CustomSizedBox.shrink(),
      ],
    );
  }

  _backgroundVerifyApprovalStatusBox(
      CareGiverVerificationState state, int status) {
    return ApprovalStatusBox(
      careGiversVerificationState: state,
      textEditingController: _reasonController,
      focusNode: _reasonNode,
      status: status,
      onTapApprove: () {
        context.read<CareGiverVerificationBloc>().add(
            CareGiverVerificationEvent.careGiverBackgroundVerify(
                userID: userId, status: 1, context: context));
      },
      onTapReject: () {
        _reasonNode.requestFocus();
        context.read<CareGiverVerificationBloc>().add(
            CareGiverVerificationEvent.careGiverBackgroundVerify(
                userID: userId,
                status: 2,
                rejectReason: _reasonController.text.trim(),
                context: context));
      },
    );
  }

  RowColonCombo _emailView(PersonalDetails? personalDetails) {
    return RowColonCombo.twoHundred(
        label: AppString.email.val,
        value: personalDetails?.email ?? "",
        fontSize: FS.font13PointFive.val);
  }

  RowColonCombo _alterNativeMobileNumberView(PersonalDetails? personalDetails) {
    return RowColonCombo.twoHundred(
        label: AppString.alternativeMobileNumber.val,
        value: personalDetails?.alternativeMobileNumber ?? "",
        fontSize: FS.font13PointFive.val);
  }

  RowColonCombo _mobileNumberView(PersonalDetails? personalDetails) {
    return RowColonCombo.twoHundred(
        label: AppString.mobileNumber.val,
        value: personalDetails?.mobileNumber ?? "",
        fontSize: FS.font13PointFive.val);
  }

  Column _backgroundVerificationRightView(PersonalDetails? personalDetails) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _mobileNumberView(personalDetails),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        _alterNativeMobileNumberView(personalDetails),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        _emailView(personalDetails),
        CustomSizedBox(
          height: DBL.six.val,
        ),
      ],
    );
  }

  double getWidth(BuildContext context, Size size) {
    return isXs(context)
        ? DBL.twoHundred.val
        : isLg1(context)
            ? DBL.threeEighty.val
            : isLg(context)
                ? size.width * .13
                : DBL.twoHundred.val;
  }

  Padding _subTitleVIew({required String label, required String value}) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: RowColonCombo.threeSeventy(
        customWidthLg1: DBL.oneNinety.val,
        label: label,
        value: value,
      ),
    );
  }

  RowColonCombo titleView({required String label, required String value}) {
    return RowColonCombo.threeEighty(
      label: label,
      value: value,
      color: AppColor.label7.val,
      customWidthLg1: DBL.twoHundred.val,
      fontWeight: FW.w500.val,
    );
  }

  _verificationTabView() {
    return BlocBuilder<CareGiverVerificationBloc, CareGiverVerificationState>(
      builder: (context, state) {
        return CustomContainer(
            height: DBL.fiftyFive.val,
            width: 450,
            color: AppColor.backgroundColor.val,
            child: CustomListViewBuilder(
                itemCount: state.verificationTypes.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  VerificationTypes item = state.verificationTypes[index];
                  return InkWell(
                    onTap: () {
                      int backgroundVerificationStatus = state
                              .response
                              ?.data
                              ?.backgroundVerification
                              ?.personalDetails
                              ?.approvalStatus ??
                          0;
                      if (backgroundVerificationStatus ==
                          Approve.approved.val) {
                        context.read<CareGiverVerificationBloc>().add(
                            CareGiverVerificationEvent
                                .isSelectedVerificationTab(item));
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: DBL.thirty.val, top: DBL.thirteen.val),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomText(
                            item.title ?? "",
                            style: TS().gRoboto(
                                fontSize: FS.font15.val,
                                color: item.isSelected
                                    ? AppColor.primaryColor.val
                                    : AppColor.lightGrey11.val,
                                fontWeight: FW.bold.val),
                          ),
                          CustomSizedBox(
                            height: DBL.fifteen.val,
                          ),
                          item.isSelected
                              ? CustomContainer.decoration(
                                  width: 190,
                                  height: 3,
                                  decoration: BoxDecoration(
                                    color: AppColor.primaryColor.val,
                                  ),
                                )
                              : CustomSizedBox.shrink()
                        ],
                      ),
                    ),
                  );
                }));
      },
    );
  }

  _documentPreviewPopUp(BuildContext context, String url) {
    showGeneralDialog(
      context: context,
      pageBuilder: (BuildContext buildContext, Animation animation,
          Animation secondaryAnimation) {
        return CustomAlertDialogWidget(
            width: 800,
            height: 800,
            heading: AppString.verificationProcess.val,
            child: WebViewX(
                width: 800,
                height: 800,
                initialContent:
                    'https://docs.google.com/gview?embedded=true&url=$url',
                initialSourceType: SourceType.url,
                webSpecificParams: const WebSpecificParams(),
                onPageStarted: (value) {
                  print('web:finish val ${value}');
                },
                onWebViewCreated: (value) {
                  print('web:created val ${value}');
                  // context.read<CareGiverVerificationBloc>().add(
                  //     const CareGiverVerificationEvent.isWebViewLoading(
                  //         true));
                },
                onPageFinished: (value) {
                  print('web:finshed val ${value}');
                  // context.read<CareGiverVerificationBloc>().add(
                  //     const CareGiverVerificationEvent.isWebViewLoading(
                  //         false));
                },
                javascriptMode: JavascriptMode.unrestricted));
      },
    );
  }

  _certificateRejectPopUp(BuildContext context) {
    showGeneralDialog(
      context: context,
      pageBuilder: (BuildContext buildContext, Animation animation,
          Animation secondaryAnimation) {
        return CustomAlertDialogWidget(
          width: 860,
          height: 700,
          heading: AppString.verificationProcess.val,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: DBL.fortyFive.val, vertical: DBL.fortyFive.val),
            child: BlocBuilder<CareGiverVerificationBloc,
                CareGiverVerificationState>(
              builder: (context, state) {
                return BlocBuilder<FormValidationBloc, FormValidationState>(
                  builder: (context, formState) {
                    return CForm(
                      formKey: _formKey,
                      autoValidateMode: _validateMode,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            AppString.selectRejectedDocument.val,
                            style: TS().gRoboto(
                                fontSize: FS.font18.val,
                                fontWeight: FW.w500.val,
                                color: AppColor.matBlack3.val),
                          ),
                          CustomSizedBox(
                            height: DBL.eighteen.val,
                          ),
                          CustomCheckTextField(
                            textEditingController: _hhaReasonController,
                            focusNode: _hhaReasonNode,
                            label: AppString.hhaDocument.val,
                            isTapped: state.isHHaReasonFieldTapped,
                            validator: (value) {
                              if (value!.trim().isEmpty) {
                                return AppString.emptyReason.val;
                              }
                              return null;
                            },
                            onToggle: () {
                              context.read<CareGiverVerificationBloc>().add(
                                  CareGiverVerificationEvent.isTappedHHaReason(
                                      state.isHHaReasonFieldTapped
                                          ? false
                                          : true));
                            },
                          ),
                          CustomSizedBox(
                            height: DBL.twelve.val,
                          ),
                          CustomCheckTextField(
                            textEditingController: _blsReasonController,
                            focusNode: _blsReasonNode,
                            label: AppString.bLSCPRAndFirstAidCertification.val,
                            isTapped: state.isBlsReasonFieldTapped,
                            validator: (value) {
                              if (value!.trim().isEmpty) {
                                return AppString.emptyReason.val;
                              }
                              return null;
                            },
                            onToggle: () {
                              context.read<CareGiverVerificationBloc>().add(
                                  CareGiverVerificationEvent.isTappedBlsReason(
                                      state.isBlsReasonFieldTapped
                                          ? false
                                          : true));
                            },
                          ),
                          CustomSizedBox(
                            height: DBL.twelve.val,
                          ),
                          CustomCheckTextField(
                            textEditingController: _tbReasonController,
                            focusNode: _tbReasonNode,
                            label: AppString.tBAndPPDTest.val,
                            isTapped: state.isTBReasonFieldTapped,
                            validator: (value) {
                              if (value!.trim().isEmpty) {
                                return AppString.emptyReason.val;
                              }
                              return null;
                            },
                            onToggle: () {
                              context.read<CareGiverVerificationBloc>().add(
                                  CareGiverVerificationEvent.isTappedTbReason(
                                      state.isTBReasonFieldTapped
                                          ? false
                                          : true));
                            },
                          ),
                          CustomSizedBox(
                            height: DBL.twelve.val,
                          ),
                          CustomCheckTextField(
                            textEditingController: _covid19ReasonController,
                            focusNode: _covid19ReasonNode,
                            label: AppString.covid19Vaccination.val,
                            isTapped: state.isCovidReasonFieldTapped,
                            validator: (value) {
                              if (value!.trim().isEmpty) {
                                return AppString.emptyReason.val;
                              }
                              return null;
                            },
                            onToggle: () {
                              context.read<CareGiverVerificationBloc>().add(
                                  CareGiverVerificationEvent
                                      .isTappedCovidReason(
                                          state.isCovidReasonFieldTapped
                                              ? false
                                              : true));
                            },
                          ),
                          CustomSizedBox(
                            height: DBL.thirty.val,
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: CustomButton(
                              onPressed: () {
                                if (_validateMode != AutovalidateMode.always) {
                                  context
                                      .read<FormValidationBloc>()
                                      .add(const FormValidationEvent.submit());
                                }
                                if (_formKey.currentState!.validate()) {
                                  if (_hhaReasonController.text.isEmpty &&
                                      _tbReasonController.text.isEmpty &&
                                      _blsReasonController.text.isEmpty &&
                                      _covid19ReasonController.text.isEmpty) {
                                    showTopSnackBar(
                                      Overlay.of(context),
                                      CustomSnackBar.error(
                                        message:
                                            AppString.emptyRejectedDocument.val,
                                      ),
                                    );
                                  } else {
                                    rejectionParams = RejectionParams(
                                        userId: "649a7170b47ed361f21561f5",
                                        caregiverId: userId,
                                        hhaRejectReason:
                                            _hhaReasonController.text.trim(),
                                        blsRejectReason:
                                            _blsReasonController.text.trim(),
                                        tbRejectReason:
                                            _tbReasonController.text.trim(),
                                        covidRejectReason:
                                            _covid19ReasonController.text);
                                    context
                                        .read<CareGiverVerificationBloc>()
                                        .add(CareGiverVerificationEvent
                                            .careGiverCertificateReject(
                                                userID: userId,
                                                params: rejectionParams!,
                                                context: context));
                                  }
                                }
                              },
                              text: AppString.submit.val,
                              borderRadius: DBL.four.val,
                              padding: EdgeInsets.symmetric(
                                  horizontal: DBL.fortyFive.val,
                                  vertical: DBL.sixteen.val),
                              textStyle: TS().gRoboto(
                                  fontWeight: FW.w600.val,
                                  fontSize: FS.font20.val,
                                  color: AppColor.white.val),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ),
        );
      },
    );
  }

  bool isLarge(BuildContext context) =>
      MediaQuery.of(context).size.width <= 1236;

  bool isLg(BuildContext context) => MediaQuery.of(context).size.width <= 1370;

  bool isLg1(BuildContext context) => MediaQuery.of(context).size.width <= 976;

  bool isLg2(BuildContext context) => MediaQuery.of(context).size.width <= 1025;

  bool isXs(BuildContext context) => MediaQuery.of(context).size.width <= 760;

  bool isXs1(BuildContext context) => MediaQuery.of(context).size.width <= 780;

  bool isXs2(BuildContext context) => MediaQuery.of(context).size.width <= 580;
}
