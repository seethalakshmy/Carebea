import 'package:admin_580_tech/application/bloc/form_validation/form_validation_bloc.dart';
import 'package:admin_580_tech/core/custom_debugger.dart';
import 'package:admin_580_tech/core/custom_snackbar.dart';
import 'package:admin_580_tech/core/string_extension.dart';
import 'package:admin_580_tech/domain/caregiver_verification/model/caregiver_verification_response.dart';
import 'package:admin_580_tech/domain/caregiver_verification/model/reject_params.dart';
import 'package:admin_580_tech/infrastructure/shared_preference/shared_preff_util.dart';
import 'package:admin_580_tech/presentation/caregiver_verification/widgets/custom_check_text_field.dart';
import 'package:admin_580_tech/presentation/caregiver_verification/widgets/file_preview.dart';
import 'package:admin_580_tech/presentation/side_menu/side_menu_page.dart';
import 'package:admin_580_tech/presentation/widget/custom_button.dart';
import 'package:admin_580_tech/presentation/widget/custom_form.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pdf_render/pdf_render_widgets.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../application/bloc/caregiver_verification/caregiver_verification_bloc.dart';
import '../../core/enum.dart';
import '../../core/text_styles.dart';
import '../../domain/caregivers/model/verification_types.dart';
import '../routes/app_router.gr.dart';
import '../widget/cached_image.dart';
import '../widget/custom_alert_dialog_widget.dart';
import '../widget/custom_container.dart';
import '../widget/custom_listview_builder.dart';
import '../widget/custom_padding.dart';
import '../widget/custom_sizedbox.dart';
import '../widget/custom_text.dart';
import '../widget/error_view.dart';
import '../widget/header_view.dart';
import '../widget/loader_view.dart';
import '../widget/row_combo.dart';
import 'widgets/approval_status_box.dart';

@RoutePage()
class CaregiverVerificationPage extends StatefulWidget {
  const CaregiverVerificationPage({
    Key? key,
    @QueryParam('id') this.id,
    @QueryParam('isOnboardingCompleted') this.isOnboardingCompleted,
  }) : super(key: key);

  final String? id;
  final bool? isOnboardingCompleted;

  @override
  State<CaregiverVerificationPage> createState() {
    return _CaregiverVerificationPageState();
  }
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
  final pdfController = PdfViewerController();
  final FocusNode _covid19ReasonNode = FocusNode();
  final _formKey = GlobalKey<FormState>();

  final AutovalidateMode _validateMode = AutovalidateMode.disabled;
  String userId = "";
  bool onBoardingStatus = false;

  String adminId = "";
  int? _page;
  int? _tab;
  RejectionParams? rejectionParams;

  @override
  void initState() {
    debugPrint('inside init');
    debugPrint('${widget.isOnboardingCompleted}');
    debugPrint('${widget.id}');
    userId = autoTabRouter?.currentChild?.queryParams.getString('id', '') ?? "";
    // onBoardingStatus = autoTabRouter?.currentChild?.queryParams
    //     .getBool('isOnboardingCompleted', false);

    debugPrint(
        'onboarding status ${autoTabRouter?.currentChild?.queryParams.rawMap["isOnboardingCompleted"]}');
    try {
      onBoardingStatus = autoTabRouter
              ?.currentChild?.queryParams.rawMap["isOnboardingCompleted"] ??
          false;
    } catch (e) {}

    adminId = SharedPreffUtil().getAdminId;
    _page = autoTabRouter?.currentChild?.queryParams.getInt('page', 0);
    _tab = autoTabRouter?.currentChild?.queryParams.getInt('tab', 0);
    super.initState();
    context.read<CareGiverVerificationBloc>().add(
        CareGiverVerificationEvent.getVerificationData(
            userId: userId, context: context, adminId: adminId));
    print("verification screen\nUser ID : $userId\nAdmin ID : $adminId");
    debugPrint("sss $onBoardingStatus");
  }

  @override
  void dispose() {
    super.dispose();
    _tbReasonController.dispose();
    _blsReasonController.dispose();
    _hhaReasonController.dispose();
    _covid19ReasonController.dispose();
    _reasonController.dispose();
    _reasonNode.dispose();
    _tbReasonNode.dispose();
    _blsReasonNode.dispose();
    _hhaReasonNode.dispose();
    pdfController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('checking status value ${widget.isOnboardingCompleted}');
    CustomLog.log("width == ${MediaQuery.of(context).size.width}");
    return WillPopScope(
      onWillPop: () async {
        autoTabRouter?.navigate(CareGiversRoute(tab: 1));
        return true;
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: HeaderView(
              title: AppString.careAmbassador.val,
            ),
          ),
          BlocBuilder<CareGiverVerificationBloc, CareGiverVerificationState>(
            builder: (context, state) {
              return state.isLoading
                  ? const LoaderView()
                  : state.isError
                      ? ErrorView(
                          isClientError: false, errorMessage: state.error)
                      : _bodyView(context, state);
            },
          ),
        ],
      ),
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
              CachedImage(
                onTap: () {
                  showGeneralDialog(
                    barrierLabel: "",
                    barrierDismissible: true,
                    context: context,
                    pageBuilder: (BuildContext buildContext,
                        Animation animation, Animation secondaryAnimation) {
                      return CustomAlertDialogWidget(
                          showHeading: false,
                          width: 700,
                          heading: "",
                          child: CachedImage(
                            fit: BoxFit.contain,
                            imgUrl: caregiver?.profile ?? "",
                          ));
                    },
                  );
                },
                imgUrl: caregiver?.profile ?? "",
                height: DBL.oneFifty.val,
                width: DBL.oneFifty.val,
                isDetailPage: true,
                fit: BoxFit.cover,
              ),
              CustomSizedBox(
                height: DBL.three.val,
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
              isSendTrainingRequest(state)
                  ? Column(
                      children: [
                        CustomSizedBox(
                          height: DBL.six.val,
                        ),
                        CustomText(
                          AppString.qualifiedForCareAmbassador.val,
                          style: TS().gRoboto(
                              color: AppColor.primaryColor.val,
                              fontWeight: FW.w500.val,
                              fontSize: isLg3(context)
                                  ? FS.font18.val
                                  : FS.font22.val),
                        ),
                        CustomSizedBox(
                          height: DBL.five.val,
                        ),
                        _trainingRequestButton(
                            state.response?.data?.verificationStatus),
                        CustomSizedBox(
                          height: DBL.eight.val,
                        ),
                      ],
                    )
                  : CustomSizedBox.shrink(),
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

  _trainingRequestButton(int? status) {
    return status != null
        ? CustomButton(
            text: status != Verification.trainingStarted.val
                ? AppString.sendTrainingRequest.val
                : AppString.goToProfile.val,
            onPressed: () {
              if (status != Verification.trainingStarted.val) {
                print("user id : $userId\nadminId : $adminId");
                context.read<CareGiverVerificationBloc>().add(
                    CareGiverVerificationEvent.careGiverSendTrainingRequest(
                        userId: userId,
                        context: context,
                        page: _page,
                        adminId: adminId));
              } else {
                autoTabRouter?.navigate(CareGiverProfileRoute(id: userId));
              }
            },
            color: AppColor.white.val,
            borderRadius: DBL.five.val,
            borderColor: AppColor.primaryColor.val,
            hoverColor: AppColor.offWhite.val.withOpacity(0.2),
            textStyle: TS().gRoboto(
                fontWeight: FW.w500.val,
                color: AppColor.primaryColor.val,
                fontSize: FS.font16.val),
            padding: EdgeInsets.symmetric(
                horizontal: DBL.thirtyFive.val, vertical: DBL.eighteen.val),
          )
        : CustomSizedBox.shrink();
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
                    customWidthLg1: DBL.twoHundred.val,
                    label: AppString.dob.val,
                    value: personalDetails?.dob?.parseWithFormat(
                            dateFormat: AppString.mmDDYYY.val) ??
                        "",
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
                    customWidthLg1: DBL.twoHundred.val,
                    label: AppString.gender.val,
                    value: personalDetails?.gender ?? "",
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
          Row(
            children: [
              Expanded(
                flex: 1,
                child: RowColonCombo.twoHundred(
                    customWidthLg1: DBL.twoHundred.val,
                    label: AppString.addressLine1.val,
                    value: personalDetails?.addressLine ?? "",
                    fontSize: FS.font13PointFive.val),
              ),
              !isLarge(context)
                  ? Expanded(
                      flex: 1,
                      child: _ssnView(personalDetails),
                    )
                  : CustomSizedBox.shrink(),
            ],
          ),
          CustomSizedBox(
            height: DBL.six.val,
          ),
          RowColonCombo.twoHundred(
              customWidthLg1: DBL.twoHundred.val,
              label: AppString.addressLine2.val,
              value: personalDetails?.street ?? "",
              fontSize: FS.font13PointFive.val),
          CustomSizedBox(
            height: DBL.six.val,
          ),
          RowColonCombo.twoHundred(
              customWidthLg1: DBL.twoHundred.val,
              label: AppString.city.val,
              value: personalDetails?.city ?? "",
              fontSize: FS.font13PointFive.val),
          CustomSizedBox(
            height: DBL.six.val,
          ),
          RowColonCombo.twoHundred(
              customWidthLg1: DBL.twoHundred.val,
              label: AppString.state.val,
              value: personalDetails?.state ?? "",
              fontSize: FS.font13PointFive.val),
          CustomSizedBox(
            height: DBL.six.val,
          ),
          RowColonCombo.twoHundred(
              customWidthLg1: DBL.twoHundred.val,
              label: AppString.zip.val,
              value: personalDetails?.zip ?? "",
              fontSize: FS.font13PointFive.val),
          CustomSizedBox(
            height: DBL.six.val,
          ),
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
                  ? CustomSizedBox(
                      width: DBL.twoHundred.val,
                      child:
                          _hhaDocListView(qualificationAndTest, Axis.vertical),
                    )
                  : CustomSizedBox.shrink()
            ],
          ),
          CustomSizedBox(
            height: isXs1(context) ? DBL.ten.val : DBL.zero.val,
          ),
          isXs1(context)
              ? CustomSizedBox(
                  height: (qualificationAndTest?.hhaDocUrl != null &&
                          qualificationAndTest!.hhaDocUrl!.isNotEmpty)
                      ? DBL.fifty.val
                      : DBL.zero.val,
                  child: _hhaDocListView(qualificationAndTest, Axis.horizontal),
                )
              : CustomSizedBox.shrink(),
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
                  ? CustomSizedBox(
                      width: DBL.twoHundred.val,
                      child:
                          _blsDocListView(qualificationAndTest, Axis.vertical),
                    )
                  : CustomSizedBox.shrink()
            ],
          ),
          CustomSizedBox(
            height: isXs1(context) ? DBL.ten.val : DBL.zero.val,
          ),
          isXs1(context)
              ? CustomSizedBox(
                  height: (qualificationAndTest?.blsDocUrl != null &&
                          qualificationAndTest!.blsDocUrl!.isNotEmpty)
                      ? DBL.fifty.val
                      : DBL.zero.val,
                  child: _blsDocListView(qualificationAndTest, Axis.horizontal),
                )
              : CustomSizedBox.shrink(),
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
                  ? CustomSizedBox(
                      width: DBL.twoHundred.val,
                      child:
                          _tbDocListView(qualificationAndTest, Axis.vertical),
                    )
                  : CustomSizedBox.shrink()
            ],
          ),
          CustomSizedBox(
            height: isXs1(context) ? DBL.ten.val : DBL.zero.val,
          ),
          isXs1(context)
              ? CustomSizedBox(
                  height: (qualificationAndTest?.tbDocUrl != null &&
                          qualificationAndTest!.tbDocUrl!.isNotEmpty)
                      ? DBL.fifty.val
                      : DBL.zero.val,
                  child: _tbDocListView(qualificationAndTest, Axis.horizontal),
                )
              : CustomSizedBox.shrink(),
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
                  ? CustomSizedBox(
                      width: DBL.twoHundred.val,
                      child:
                          _covidListView(qualificationAndTest, Axis.vertical),
                    )
                  : CustomSizedBox.shrink()
            ],
          ),
          CustomSizedBox(
            height: isXs1(context) ? DBL.ten.val : DBL.zero.val,
          ),
          isXs1(context)
              ? CustomSizedBox(
                  height: (qualificationAndTest?.covidDocUrl != null &&
                          qualificationAndTest!.covidDocUrl!.isNotEmpty)
                      ? DBL.fifty.val
                      : DBL.zero.val,
                  child: _covidListView(qualificationAndTest, Axis.horizontal),
                )
              : CustomSizedBox.shrink(),
          CustomSizedBox(
            height: DBL.eight.val,
          ),
          _buildDivider(context),
          CustomSizedBox(height: DBL.ten.val),
          Row(
            children: [
              CustomSizedBox(
                width: getLabelWidth(state),
                child: CustomText(
                  isCertificateApproveOrReject(state)
                      ? AppString.acceptThisCareAmbassador.val
                      : AppString.certificateCheckStatus.val,
                  style: TS().gRoboto(
                      color: AppColor.primaryColor.val,
                      fontWeight: FW.w500.val,
                      fontSize: isLg3(context) ? FS.font17.val : FS.font22.val),
                ),
              ),
              CustomSizedBox(
                width: isLg3(context) ? DBL.seven.val : DBL.twelve.val,
              ),
              !isXs2(context)
                  ? isCertificateApproveOrReject(state)
                      ? !isLg4(context)
                          ? Expanded(
                              child: _certificateApprovalStatusBox(state))
                          : CustomSizedBox.shrink()
                      : _certificateApprovalStatusBox(state)
                  : CustomSizedBox.shrink()
            ],
          ),
          CustomSizedBox(
            height: DBL.fifteen.val,
          ),
          (isXs2(context)) ||
                  (isCertificateApproveOrReject(state) && isLg4(context))
              ? _certificateApprovalStatusBox(state)
              : CustomSizedBox.shrink(),
          CustomSizedBox(
            height: DBL.hundred.val,
          ),
        ],
      ),
    );
  }

  double getLabelWidth(CareGiverVerificationState state) {
    if (isCertificateApproveOrReject(state)) {
      return isLg3(context) ? 360 : 500;
    } else {
      return isLg3(context) ? 290 : 390;
    }
  }

  bool isCertificateApproveOrReject(CareGiverVerificationState state) {
    return state.response?.data?.certificateVerification?.approvalStatus ==
        Approve.approveOrReject.val;
  }

  CustomListViewBuilder _covidListView(
      QualificationAndTest? qualificationAndTest, Axis scrollDirection) {
    return CustomListViewBuilder(
        scrollDirection: scrollDirection,
        shrinkWrap: true,
        itemCount: qualificationAndTest?.covidDocUrl?.length ?? 0,
        itemBuilder: (context, index) {
          Doc? item = qualificationAndTest?.covidDocUrl![index];
          return FilePreview(
              fileName:
                  "Covid Doc ${qualificationAndTest!.covidDocUrl!.length > 1 ? index + 1 : ""}",
              onTap: () {
                _docImagePreviewPopUp(
                    url: item?.document ?? "", fileName: item?.fileName ?? "");
              });
        });
  }

  CustomListViewBuilder _tbDocListView(
      QualificationAndTest? qualificationAndTest, Axis scrollDirection) {
    return CustomListViewBuilder(
        scrollDirection: scrollDirection,
        shrinkWrap: true,
        itemCount: qualificationAndTest?.tbDocUrl?.length ?? 0,
        itemBuilder: (context, index) {
          Doc? item = qualificationAndTest?.tbDocUrl![index];
          return FilePreview(
              fileName:
                  "TB Doc ${qualificationAndTest!.tbDocUrl!.length > 1 ? index + 1 : ""}",
              onTap: () {
                _docImagePreviewPopUp(
                    url: item?.document ?? "", fileName: item?.fileName ?? "");
              });
        });
  }

  CustomListViewBuilder _blsDocListView(
      QualificationAndTest? qualificationAndTest, Axis scrollDirection) {
    return CustomListViewBuilder(
        scrollDirection: scrollDirection,
        shrinkWrap: true,
        itemCount: qualificationAndTest?.blsDocUrl?.length ?? 0,
        itemBuilder: (context, index) {
          Doc? item = qualificationAndTest?.blsDocUrl![index];

          return FilePreview(
              fileName:
                  "BLS Doc ${qualificationAndTest!.blsDocUrl!.length > 1 ? index + 1 : ""}",
              onTap: () {
                _docImagePreviewPopUp(
                    url: item?.document ?? "", fileName: item?.fileName ?? "");
              });
        });
  }

  CustomListViewBuilder _hhaDocListView(
      QualificationAndTest? qualificationAndTest, Axis scrollDirection) {
    return CustomListViewBuilder(
        scrollDirection: scrollDirection,
        shrinkWrap: true,
        itemCount: qualificationAndTest?.hhaDocUrl?.length ?? 0,
        itemBuilder: (_, index) {
          Doc? item = qualificationAndTest?.hhaDocUrl![index];

          return FilePreview(
              fileName:
                  "HHA Doc ${qualificationAndTest!.hhaDocUrl!.length > 1 ? index + 1 : ""}",
              onTap: () {
                _docImagePreviewPopUp(
                    url: item?.document ?? "", fileName: item?.fileName ?? "");
              });
        });
  }

  _certificateApprovalStatusBox(CareGiverVerificationState state) {
    int status =
        state.response?.data?.certificateVerification?.approvalStatus ?? 0;
    bool? isPendingDoc = state.response?.data?.pendingDocs ?? false;
    return !isPendingDoc
        ? ApprovalStatusBox(
            careGiversVerificationState: state,
            textEditingController: _reasonController,
            focusNode: _reasonNode,
            status: status,
            onTapApprove: () {
              context.read<CareGiverVerificationBloc>().add(
                  CareGiverVerificationEvent.careGiverCertificateApprove(
                      userID: userId,
                      status: 1,
                      context: context,
                      profileUrl: "",
                      userName:
                          "${state.response?.data?.caregiver?.firstName} ${state.response?.data?.caregiver?.lastName}",
                      adminId: SharedPreffUtil().getAdminId));
            },
            onTapReject: () {
              _certificateRejectPopUp(
                context,
              );
            },
          )
        : CustomSizedBox.shrink();
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
            value: qualificationAndTest?.hhaExpiryDate
                    ?.parseWithFormat(dateFormat: AppString.mmDDYYY.val) ??
                ""),
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
            value: qualificationAndTest?.blsExpiryDate
                    ?.parseWithFormat(dateFormat: AppString.mmDDYYY.val) ??
                ""),
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
            value: qualificationAndTest?.tbTakenDate
                    ?.parseWithFormat(dateFormat: AppString.mmDDYYY.val) ??
                ""),
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
            value: qualificationAndTest?.covidTakenDate
                    ?.parseWithFormat(dateFormat: AppString.mmDDYYY.val) ??
                ""),
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
            customWidthLg1: DBL.twoHundred.val,
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
            customWidthLg1: DBL.twoHundred.val,
            label: AppString.docNumber.val,
            value: documentDetails?.documentNumber ?? "",
            fontSize: FS.font13PointFive.val),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        RowColonCombo.twoHundred(
            customWidthLg1: DBL.twoHundred.val,
            label: AppString.expiryDate.val,
            value: documentDetails?.expiryDate
                    ?.parseWithFormat(dateFormat: AppString.mmDDYYY.val) ??
                "",
            fontSize: FS.font13PointFive.val),
        CustomSizedBox(
          height: DBL.eighteen.val,
        ),
        CustomSizedBox(
            height: DBL.fifty.val,
            child: CustomListViewBuilder(
                scrollDirection: Axis.horizontal,
                itemCount: documentDetails?.docUrl?.length ?? 0,
                itemBuilder: (context, index) {
                  Doc? item = documentDetails?.docUrl![index];
                  return FilePreview(
                      fileName:
                          "Passport Doc ${documentDetails!.docUrl!.length > 1 ? index + 1 : ""}",
                      onTap: () {
                        _docImagePreviewPopUp(
                            url: item?.document ?? "",
                            fileName: item?.fileName ?? "");
                      });
                })),
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
        onBoardingStatus == true
            ? Row(
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
                      ? _backgroundVerifyApprovalStatusBox(
                          state, status, context)
                      : CustomSizedBox.shrink()
                ],
              )
            : SizedBox.shrink(),
        CustomSizedBox(
          height: DBL.twenty.val,
        ),
        status == 0 && onBoardingStatus == true
            ? _backgroundVerifyApprovalStatusBox(state, status, context)
            : CustomSizedBox.shrink(),
      ],
    );
  }

  _backgroundVerifyApprovalStatusBox(
      CareGiverVerificationState state, int status, BuildContext context) {
    bool? isPendingDoc = state.response?.data?.pendingDocs ?? false;
    return !isPendingDoc
        ? ApprovalStatusBox(
            careGiversVerificationState: state,
            textEditingController: _reasonController,
            focusNode: _reasonNode,
            status: status,
            onTapApprove: () {
              context.read<CareGiverVerificationBloc>().add(
                  CareGiverVerificationEvent.careGiverBackgroundVerify(
                      userID: userId,
                      status: 1,
                      context: context,
                      adminId: adminId));
            },
            onTapReject: () {
              _reasonNode.requestFocus();
              context.read<CareGiverVerificationBloc>().add(
                  CareGiverVerificationEvent.careGiverBackgroundVerify(
                      userID: userId,
                      status: 2,
                      rejectReason: _reasonController.text.trim(),
                      context: context,
                      adminId: adminId));
            },
          )
        : CustomSizedBox.shrink();
  }

  RowColonCombo _emailView(PersonalDetails? personalDetails) {
    return RowColonCombo.twoHundred(
        customWidthLg1: DBL.twoHundred.val,
        label: AppString.email.val,
        value: personalDetails?.email ?? "",
        fontSize: FS.font13PointFive.val);
  }

  RowColonCombo _ssnView(PersonalDetails? personalDetails) {
    return RowColonCombo.twoHundred(
        customWidthLg1: DBL.twoHundred.val,
        label: AppString.socialSecurityNumber.val,
        value: personalDetails?.ssn ?? "",
        fontSize: FS.font13PointFive.val);
  }

  RowColonCombo _mobileNumberView(PersonalDetails? personalDetails) {
    return RowColonCombo.twoHundred(
        customWidthLg1: DBL.twoHundred.val,
        label: AppString.mobileNumber.val,
        value: personalDetails?.mobileNumber ?? "",
        fontSize: FS.font13PointFive.val);
  }

  Column _backgroundVerificationRightView(PersonalDetails? personalDetails) {
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
        _ssnView(personalDetails),
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
        return onBoardingStatus == true
            ? CustomContainer(
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
                    }))
            : SizedBox.shrink();
      },
    );
  }

  _docImagePreviewPopUp({required String url, required String fileName}) {
    if (true.isPdf(url)) {
      _launchUrl(url);
    } else {
      showGeneralDialog(
        barrierLabel: "",
        barrierDismissible: true,
        context: context,
        pageBuilder: (BuildContext buildContext, Animation animation,
            Animation secondaryAnimation) {
          CustomLog.log("url is ${url}");
          return CustomAlertDialogWidget(
              width: 800,
              height: 550,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              heading: AppString.verificationProcess.val,
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
                      onTap: () {
                        /*showGeneralDialog(barrierLabel: "",
                          barrierDismissible: true,
                          context: context,
                          pageBuilder: (BuildContext buildContext,
                              Animation animation,
                              Animation secondaryAnimation) {
                            return CustomAlertDialogWidget(
                                showHeading: false,
                                width: 700,
                                heading: "",
                                child: CachedImage(
                                  fit: BoxFit.contain,
                                  imgUrl: url,
                                ));
                          },
                        );*/
                      },
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

  _certificateRejectPopUp(BuildContext context) {
    showGeneralDialog(
      barrierLabel: "",
      barrierDismissible: true,
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
                                    CSnackBar.showError(
                                      context,
                                      msg: AppString.emptyRejectedDocument.val,
                                    );
                                  } else {
                                    rejectionParams = RejectionParams(
                                        userId: adminId,
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

  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url}');
    }
  }

  bool isSendTrainingRequest(CareGiverVerificationState state) {
    int? verificationStatus = state.response?.data?.verificationStatus;
    PersonalDetails? personalDetails =
        state.response?.data?.backgroundVerification?.personalDetails;
    CertificateVerification? certificateVerification =
        state.response?.data?.certificateVerification;
    if (personalDetails?.approvalStatus == Approve.approved.val &&
        certificateVerification?.approvalStatus == Approve.approved.val &&
        (verificationStatus == Verification.trainingStarted.val ||
            verificationStatus == Verification.trainingCompleted.val)) {
      return true;
    } else {
      return false;
    }
  }

  bool isLarge(BuildContext context) =>
      MediaQuery.of(context).size.width <= 1236;

  bool isLg(BuildContext context) => MediaQuery.of(context).size.width <= 1370;

  bool isLg1(BuildContext context) => MediaQuery.of(context).size.width <= 976;

  bool isLg2(BuildContext context) => MediaQuery.of(context).size.width <= 945;

  bool isLg3(BuildContext context) => MediaQuery.of(context).size.width <= 1025;

  bool isLg4(BuildContext context) => MediaQuery.of(context).size.width <= 1090;

  bool isXs(BuildContext context) => MediaQuery.of(context).size.width <= 760;

  bool isXs1(BuildContext context) => MediaQuery.of(context).size.width <= 780;

  // bool isXs2(BuildContext context) => MediaQuery.of(context).size.width <= 580;
  bool isXs2(BuildContext context) => MediaQuery.of(context).size.width <= 820;
}
