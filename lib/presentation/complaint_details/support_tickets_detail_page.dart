import 'package:admin_580_tech/infrastructure/complaint_details/complaint_details_repository.dart';
import 'package:admin_580_tech/presentation/complaint_details/widgets/transaction_details_alert_widget.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pdf_render/pdf_render_widgets.dart';

import '../../application/bloc/complaint_details/complaint_detail_bloc.dart';
import '../../core/enum.dart';
import '../../core/responsive.dart';
import '../../core/text_styles.dart';
import '../../domain/transaction_management/model/transaction_list_response.dart';
import '../caregiver_detail/widgets/svg_text.dart';
import '../routes/app_router.gr.dart';
import '../side_menu/side_menu_page.dart';
import '../widget/cached_image.dart';
import '../widget/custom_alert_dialog_widget.dart';
import '../widget/custom_button.dart';
import '../widget/custom_dropdown.dart';
import '../widget/custom_padding.dart';
import '../widget/custom_sizedbox.dart';
import '../widget/custom_text.dart';
import '../widget/custom_text_field.dart';
import '../widget/error_view.dart';
import '../widget/loader_view.dart';
import '../widget/row_combo.dart';

@RoutePage()
class SupportTicketsDetailPage extends StatefulWidget {
  const SupportTicketsDetailPage(
      {Key? key, @QueryParam('complaint_id') this.complaintId})
      : super(key: key);
  final String? complaintId;

  @override
  State<SupportTicketsDetailPage> createState() =>
      _SupportTicketsDetailPageState();
}

class _SupportTicketsDetailPageState extends State<SupportTicketsDetailPage> {
  late ComplaintDetailBloc _complaintDetailBloc;
  late TextEditingController _commentController;
  final pdfController = PdfViewerController();

  @override
  void initState() {
    // userId = autoTabRouter?.currentChild?.queryParams.getString('id', '') ?? "";
    // tabController = TabController(vsync: this, length: 5);
    // _caregiverDetailBloc = CaregiverDetailBloc(CareGiverDetailRepository());
    _complaintDetailBloc = ComplaintDetailBloc(ComplaintDetailsRepository());
    _commentController = TextEditingController();
    _complaintDetailBloc.compId = autoTabRouter?.currentChild?.queryParams
        .getString("complaint_id", "") ??
        "";
    _complaintDetailBloc
        .add(ComplaintDetailEvent.getComplaintDetails(
        complaintId: _complaintDetailBloc.compId));
    super.initState();
  }


  @override
  void dispose() {
    _commentController.dispose();
    //  pdfController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _reBuildView();
  }

  BlocProvider<ComplaintDetailBloc> _reBuildView() {
    print("_rebuild view called");
    return BlocProvider(
      create: (context) =>
      _complaintDetailBloc
        ..add(ComplaintDetailEvent.getComplaintDetails(
            complaintId: _complaintDetailBloc.compId)),
      child: _rebuildView(),
    );
  }

  _rebuildView() {
    return BlocBuilder<ComplaintDetailBloc, ComplaintDetailState>(
      builder: (context, state) {
        return state.isLoading
            ? (const LoaderView())
            : state.isError
            ? ErrorView(isClientError: false, errorMessage: state.error)
            : _bodyView();
      },
    );
  }

  _bodyView() {
    return CustomSizedBox(
      height: MediaQuery
          .of(context)
          .size
          .height,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                  leading: const SizedBox(),
                  backgroundColor: Colors.white,
                  expandedHeight: 220,
                  floating: false,
                  toolbarHeight: DBL.fifty.val,
                  flexibleSpace: _flexibleSpaceBar(context))
            ];
          },
          body: Container(
            color: AppColor.white.val,
            padding: const EdgeInsets.all(20),
            child: _bottomView(context),
          ),
        ),
      ),
    );
  }

  FlexibleSpaceBar _flexibleSpaceBar(BuildContext context) {
    return FlexibleSpaceBar(
        centerTitle: true,
        background: CustomPadding.only(
          left: DBL.twentyFive.val,
          top: DBL.thirty.val,
          right: DBL.twenty.val,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _topLeftView(context),
              const CustomSizedBox(width: 25),
              _topRightView(context),
            ],
          ),
        ));
  }

  CustomSizedBox _topRightView(BuildContext context) {
    return CustomSizedBox(
      width: isXs3(context)
          ? MediaQuery
          .of(context)
          .size
          .width - DBL.twoThirty.val
          : isXs2(context)
          ? MediaQuery
          .of(context)
          .size
          .width - DBL.fourSeventy.val
          : isXs(context)
          ? MediaQuery
          .of(context)
          .size
          .width - DBL.fiveTwenty.val
          : isLg2(context)
          ? MediaQuery
          .of(context)
          .size
          .width - DBL.fiveTwenty.val
          : isLg3(context)
          ? MediaQuery
          .of(context)
          .size
          .width -
          DBL.eightSixtyFive.val
          : MediaQuery
          .of(context)
          .size
          .width -
          DBL.nineFifty.val,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            _complaintDetailBloc.complaintDetailsList[0].userName ?? "",
            // "${response.data?.name?.firstName} ${response.data?.name?.lastName}",
            style: TS().gRoboto(
              color: AppColor.rowColor.val,
              fontWeight: FW.w600.val,
              fontSize: getFontSize(
                context,
                fontSize: FS.font19.val,
              ),
            ),
          ),
          CustomSizedBox(height: DBL.fourteen.val),
          SVGText(
            path: IMG.email.val,
            name: _complaintDetailBloc.complaintDetailsList[0].email ?? "",
            widthGap: DBL.twelve.val,
          ),
          CustomSizedBox(height: DBL.fourteen.val),
          SVGText(
            path: IMG.phone.val,
            name:
            _complaintDetailBloc.complaintDetailsList[0].phoneNumber ?? "",
            widthGap: DBL.nine.val,
          ),
          CustomSizedBox(height: DBL.forty.val),
        ],
      ),
    );
  }

  _profileImageView(BuildContext context, String url) {
    return CachedImage(
      onTap: () {
        showGeneralDialog(
          context: context,
          pageBuilder: (BuildContext buildContext, Animation animation,
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
        );
      },
      imgUrl: url,
      height: DBL.oneSeventyFive.val,
      width: DBL.twoHundred.val,
      isDetailPage: true,
    );
  }

  CustomSizedBox _topLeftView(BuildContext context) {
    print(
        "image url : ${_complaintDetailBloc.complaintDetailsList[0]
            .userPicture}");
    return CustomSizedBox(
      width: isXs(context) ? DBL.oneFifty.val : DBL.twoHundred.val,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _profileImageView(context,
              _complaintDetailBloc.complaintDetailsList[0].userPicture ?? ""),
        ],
      ),
    );
  }

  Column _bottomView(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _complaintIdWidget(),
        CustomSizedBox(height: DBL.six.val),
        _complaintCategoryWidget(),
        CustomSizedBox(height: DBL.six.val),
        _complaintCreatedDateWidget(),
        CustomSizedBox(height: DBL.six.val),
        _complaintTitleWidget(),
        CustomSizedBox(height: DBL.six.val),
        _complaintDetailBloc.complaintDetailsList[0].isGeneral ?? false
            ? const CustomSizedBox()
            : _complaintServiceIdWidget(),
        _complaintDetailBloc.complaintDetailsList[0].isGeneral ?? false
            ? const CustomSizedBox()
            : CustomSizedBox(height: DBL.six.val),
        _complaintClientNameWidget(),
        CustomSizedBox(height: DBL.six.val),
        _complaintCANameWidget(),
        CustomSizedBox(height: DBL.thirty.val),
        _statusUpdateWidget(),
        CustomSizedBox(height: DBL.twenty.val),
        CustomText(
          AppString.attachments.val,
          style: TS().gRoboto(
              fontSize: FS.font16.val,
              fontWeight: FW.w500.val,
              color: AppColor.black.val),
        ),
        CustomSizedBox(height: DBL.ten.val),
        _documentShowingWidget(),
        CustomSizedBox(height: DBL.twenty.val),
        Divider(color: AppColor.lightGrey.val),
        Expanded(child: _statusDetailsView())
      ],
    );
  }

  _statusUpdateWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _statusDropDown(context),
        CustomSizedBox(height: DBL.ten.val),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CTextField(
              controller: _commentController,
              width: DBL.twoEighty.val,
              height: DBL.fortyFive.val,
              maxLines: 10,
              hintText: AppString.comments.val,
            ),
            CustomSizedBox(width: DBL.thirty.val),
            Padding(
              padding: const EdgeInsets.only(top: 3.0),
              child: CustomButton(
                onPressed: () {
                  print("selected status is : ${_complaintDetailBloc
                      .selectedStatusFromDropdown}");
                  _complaintDetailBloc.add(
                      ComplaintDetailEvent.updateComplaint(
                          complaintId: _complaintDetailBloc.compId,
                          status: _complaintDetailBloc
                              .selectedStatusFromDropdown,
                          comment: _commentController.text.trim()));
                  _commentController.clear();
                },
                text: AppString.submit.val,
                height: DBL.fifty.val,
              ),
            )
          ],
        ),
      ],
    );
  }

  _documentShowingWidget() {
    return CustomSizedBox(height: 40,
      child: ListView.builder(
        shrinkWrap: true, scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: 20), child: _complaintDetailBloc
              .complaintDetailsList[0].attachments![index].contains(".pdf")
              ? InkWell(onTap: () {
            showGeneralDialog(
              context: context,
              pageBuilder: (BuildContext buildContext, Animation animation,
                  Animation secondaryAnimation) {
                return CustomAlertDialogWidget(
                    showHeading: false,
                    width: 700,
                    height: 600,
                    heading: "",
                    child: SizedBox(width: double.infinity, height: MediaQuery
                        .of(context)
                        .size
                        .height * 0.9,
                      child: PdfViewer.openFile(
                        _complaintDetailBloc
                            .complaintDetailsList[0].attachments![index],
                        viewerController: pdfController,
                        onError: (err) => print(err),
                        params: const PdfViewerParams(
                            minScale: 0.2,
                            scrollDirection: Axis.vertical,
                            padding: 10,
                            scaleEnabled: false,
                            maxScale: 100),
                      ),
                    ));
              },
            );
          },
            child: Container(padding: const EdgeInsets.all(3),
                alignment: Alignment.center,
                width: DBL.fifty.val,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: AppColor.primaryColor.val, width: 1.5)),
                child: Icon(Icons.text_snippet_outlined, size: 25,
                  color: AppColor.primaryColor.val,)),
          ) : ClipRRect(borderRadius: BorderRadius.circular(10),
            child: CachedImage(
              onTap: () {
                showGeneralDialog(
                  context: context,
                  pageBuilder: (BuildContext buildContext, Animation animation,
                      Animation secondaryAnimation) {
                    return CustomAlertDialogWidget(
                        showHeading: false,
                        width: 700,
                        heading: "",
                        child: CachedImage(
                          fit: BoxFit.contain,
                          imgUrl: _complaintDetailBloc
                              .complaintDetailsList[0].attachments![index],
                        ));
                  },
                );
              },
              imgUrl: _complaintDetailBloc
                  .complaintDetailsList[0].attachments![index],
              height: DBL.fifty.val,
              width: DBL.fifty.val,
              isDetailPage: true,
            ),
          ),);
        }, itemCount: _complaintDetailBloc
          .complaintDetailsList[0].attachments!.length,),
    );
  }

  _complaintIdWidget() {
    return RowColonCombo.twoHundred(
        customWidthLg1: 180,
        label: AppString.complaintId.val,
        value: _complaintDetailBloc.complaintDetailsList[0]
            .uniqueComplaintId ?? "",
        fontSize: FS.font13PointFive.val);
  }

  _complaintCategoryWidget() {
    return RowColonCombo.twoHundred(
        customWidthLg1: 180,
        label: AppString.category.val,
        value: _complaintDetailBloc.complaintDetailsList[0].category ?? "",
        fontSize: FS.font13PointFive.val);
  }

  _complaintCreatedDateWidget() {
    return RowColonCombo.twoHundred(
        customWidthLg1: 180,
        label: AppString.createdDate.val,
        value:
        _complaintDetailBloc.complaintDetailsList[0].createdDate ?? "",
        fontSize: FS.font13PointFive.val);
  }

  _complaintTitleWidget() {
    return RowColonCombo.twoHundred(
        customWidthLg1: 180,
        label: AppString.complaint.val,
        value: _complaintDetailBloc.complaintDetailsList[0].title ?? "",
        fontSize: FS.font13PointFive.val);
  }

  _complaintServiceIdWidget() {
    return RowColonCombo.twoHundred(
        customWidthLg1: 180,
        label: _complaintDetailBloc.complaintDetailsList[0]
            .isServiceRelated ?? false
            ? AppString.serviceId.val
            : AppString.transactionId.val,
        value: _complaintDetailBloc.complaintDetailsList[0]
            .isServiceRelated ??
            false
            ? _complaintDetailBloc.complaintDetailsList[0]
            .serviceBookingId == null ||
            _complaintDetailBloc.complaintDetailsList[0]
                .serviceBookingId == "" ? "-" : _complaintDetailBloc
            .complaintDetailsList[0]
            .serviceBookingId ?? ""
            : _complaintDetailBloc.complaintDetailsList[0]
            .isPaymentRelated ??
            false
            ? _complaintDetailBloc
            .complaintDetailsList[0].uniqueTransactionId == null ||
            _complaintDetailBloc
                .complaintDetailsList[0].uniqueTransactionId == ""
            ? "-"
            : _complaintDetailBloc
            .complaintDetailsList[0].uniqueTransactionId ??
            ""
            : "-",
        onValueTap: _complaintDetailBloc.complaintDetailsList[0]
            .isServiceRelated ?? false
            ? _complaintDetailBloc.complaintDetailsList[0]
            .serviceBookingId == "" ||
            _complaintDetailBloc.complaintDetailsList[0].serviceBookingId ==
                null
            ? null
            : () {
          _complaintDetailBloc.add(ComplaintDetailEvent.getService(
              serviceId: _complaintDetailBloc.complaintDetailsList[0]
                  .serviceId ?? "", context: context));
        }
            : _complaintDetailBloc.complaintDetailsList[0]
            .isPaymentRelated ?? false
            ? _complaintDetailBloc.complaintDetailsList[0]
            .uniqueTransactionId == "" ||
            _complaintDetailBloc.complaintDetailsList[0]
                .uniqueTransactionId == null
            ? null
            : () {
          _transactionDetails(Transactions.fromJson(
              _complaintDetailBloc.detailsList[0].toJson()));
        } : null,
        needUnderLine: _complaintDetailBloc.complaintDetailsList[0]
            .isServiceRelated ?? false
            ? _complaintDetailBloc.complaintDetailsList[0]
            .serviceBookingId == "" ||
            _complaintDetailBloc.complaintDetailsList[0].serviceBookingId ==
                null
            ? false
            : true
            : _complaintDetailBloc.complaintDetailsList[0]
            .isPaymentRelated ?? false
            ? _complaintDetailBloc.complaintDetailsList[0]
            .uniqueTransactionId == "" ||
            _complaintDetailBloc.complaintDetailsList[0]
                .uniqueTransactionId == null
            ? false
            : true : false,
        valueColor: _complaintDetailBloc.complaintDetailsList[0]
            .isServiceRelated ?? false
            ? _complaintDetailBloc.complaintDetailsList[0]
            .serviceBookingId == "" ||
            _complaintDetailBloc.complaintDetailsList[0].serviceBookingId ==
                null
            ? AppColor.black.val
            : AppColor.blue.val
            : _complaintDetailBloc.complaintDetailsList[0]
            .isPaymentRelated ?? false
            ? _complaintDetailBloc.complaintDetailsList[0]
            .uniqueTransactionId == "" ||
            _complaintDetailBloc.complaintDetailsList[0]
                .uniqueTransactionId == null
            ? AppColor.black.val
            : AppColor.blue.val : AppColor.black.val,
        fontSize: FS.font13PointFive.val);
  }

  _complaintClientNameWidget() {
    return RowColonCombo.twoHundred(
        customWidthLg1: 180,
        label: AppString.clientName.val,
        value: _complaintDetailBloc
            .complaintDetailsList[0].clientName!.firstName ==
            "" ||
            _complaintDetailBloc
                .complaintDetailsList[0].clientName!.firstName ==
                null
            ? "-" : "${_complaintDetailBloc.complaintDetailsList[0]
            .clientName!
            .firstName} ${_complaintDetailBloc.complaintDetailsList[0]
            .clientName!.lastName}",
        onValueTap: _complaintDetailBloc
            .complaintDetailsList[0].clientName!.firstName ==
            "" ||
            _complaintDetailBloc
                .complaintDetailsList[0].clientName!.firstName ==
                null
            ? null : () {
          autoTabRouter
              ?.navigate(UserManagementDetailRoute(id: _complaintDetailBloc
              .complaintDetailsList[0].clientId ?? ""));
        },
        needUnderLine: _complaintDetailBloc
            .complaintDetailsList[0].clientName!.firstName ==
            "" ||
            _complaintDetailBloc
                .complaintDetailsList[0].clientName!.firstName ==
                null
            ? false : true,
        valueColor: _complaintDetailBloc
            .complaintDetailsList[0].clientName!.firstName ==
            "" ||
            _complaintDetailBloc
                .complaintDetailsList[0].clientName!.firstName ==
                null
            ? AppColor.black.val : AppColor.blue.val,
        fontSize: FS.font13PointFive.val);
  }

  _complaintCANameWidget() {
    return RowColonCombo.twoHundred(
        customWidthLg1: 180,
        label: AppString.caName.val,
        value: _complaintDetailBloc
            .complaintDetailsList[0].caName!.firstName ==
            "" ||
            _complaintDetailBloc
                .complaintDetailsList[0].caName!.firstName ==
                null
            ? "-" : "${_complaintDetailBloc.complaintDetailsList[0].caName!
            .firstName} ${_complaintDetailBloc.complaintDetailsList[0]
            .caName!.lastName}",
        onValueTap: _complaintDetailBloc
            .complaintDetailsList[0].caName!.firstName ==
            "" ||
            _complaintDetailBloc
                .complaintDetailsList[0].caName!.firstName ==
                null
            ? null : () {
          print("ca id passed to the detail page : ${_complaintDetailBloc
              .complaintDetailsList[0].caId}");
          autoTabRouter
              ?.navigate(CareGiverDetailRoute(id: _complaintDetailBloc
              .complaintDetailsList[0].caId ?? ""));
        },
        needUnderLine: _complaintDetailBloc
            .complaintDetailsList[0].caName!.firstName ==
            "" ||
            _complaintDetailBloc
                .complaintDetailsList[0].caName!.firstName ==
                null
            ? false : true,
        valueColor: _complaintDetailBloc
            .complaintDetailsList[0].caName!.firstName ==
            "" ||
            _complaintDetailBloc
                .complaintDetailsList[0].caName!.firstName ==
                null
            ? AppColor.black.val : AppColor.blue.val,
        fontSize: FS.font13PointFive.val);
  }

  _transactionDetails(Transactions item) {
    _complaintDetailBloc.add(ComplaintDetailEvent.getTransactionDetails(
        transactionId: item.transactionId ?? "", serviceId: item.serviceId ?? ''));
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CustomAlertDialogWidget(
          heading: AppString.transactionManagement.val,
          child: TransactionDetailsAlertWidget(
              complaintDetailBloc: _complaintDetailBloc),
        );
      },
    );
  }

  double getFontSize(BuildContext context, {required double fontSize}) {
    return Responsive.isLg(context) ? fontSize - 2 : fontSize;
  }

  bool isLg2(context) =>
      MediaQuery
          .of(context)
          .size
          .width <= 1096;

  bool isLg3(context) =>
      MediaQuery
          .of(context)
          .size
          .width <= 1385;

  bool isXs(context) =>
      MediaQuery
          .of(context)
          .size
          .width <= 990;

  bool isXs2(context) =>
      MediaQuery
          .of(context)
          .size
          .width <= 930;

  bool isXs3(context) =>
      MediaQuery
          .of(context)
          .size
          .width <= 805;

  bool isXs4(context) =>
      MediaQuery
          .of(context)
          .size
          .width <= 590;

  CustomDropdown<int> _statusDropDown(BuildContext context) {
    return CustomDropdown<int>(
      onChange: (int value, int index) {
        _complaintDetailBloc.selectedStatusFromDropdown = value;
      },
      dropdownButtonStyle: DropdownButtonStyle(
        mainAxisAlignment: MainAxisAlignment.start,
        width: DBL.twoEighty.val,
        height:
        Responsive.isMobile(context) ? DBL.fortyFive.val : DBL.forty.val,
        elevation: DBL.zero.val,
        padding: EdgeInsets.only(left: DBL.fifteen.val),
        backgroundColor: Colors.white,
        primaryColor: AppColor.white.val,
      ),
      dropdownStyle: DropdownStyle(
        borderRadius: BorderRadius.circular(DBL.zero.val),
        elevation: 2,
        color: AppColor.white.val,
        padding: EdgeInsets.all(DBL.five.val),
      ),
      items: [
        AppString.neww.val,
        AppString.onGoing.val,
        AppString.completed.val,
        AppString.canceled.val
      ]
          .asMap()
          .entries
          .map(
            (item) =>
            DropdownItem<int>(
              value: item.key + 1,
              child: Padding(
                padding: EdgeInsets.all(DBL.eight.val),
                child: Text(
                  item.value,
                  style: TS().gRoboto(
                      fontWeight: FW.w500.val,
                      fontSize: FS.font15.val,
                      color: AppColor.columColor2.val),
                ),
              ),
            ),
      )
          .toList(),
      child: CustomText(
        generateStatusText(
            _complaintDetailBloc.complaintDetailsList[0].status.toString()),
        style: TS().gRoboto(
            fontWeight: FW.w500.val,
            fontSize: FS.font15.val,
            color: AppColor.columColor2.val),
      ),
    );
  }

  _statusDetailsView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          AppString.complaintStatus.val,
          style: TS().gRoboto(
              fontSize: FS.font16.val,
              fontWeight: FW.w500.val,
              color: AppColor.black.val),
        ),
        CustomSizedBox(height: DBL.ten.val),
        Expanded(
          child: ListView.builder(
              itemCount: _complaintDetailBloc.complaintDetailsList[0]
                  .statusHistory!.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          const CircleAvatar(
                            backgroundColor: Colors.green,
                            radius: 6,
                          ),
                          index + 1 < _complaintDetailBloc
                              .complaintDetailsList[0].statusHistory!.length
                              ? Container(
                            width: 5,
                            color: AppColor.lightGrey.val,
                            height: 100,
                          )
                              : Container()
                        ],
                      ),
                      CustomSizedBox(width: DBL.ten.val),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  _complaintDetailBloc.complaintDetailsList[0]
                                      .statusHistory![index].date ?? "",
                                  style: TS().gRoboto(
                                      fontSize: FS.font12.val,
                                      fontWeight: FW.w400.val,
                                      color: AppColor.black4.val),
                                ),
                                CustomSizedBox(width: DBL.twenty.val),
                                // Divider(color: AppColor.lightGrey.val, thickness: 1.0),
                                CustomSizedBox(height: DBL.ten.val),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: generateColorForStatus(
                                          _complaintDetailBloc
                                              .complaintDetailsList[0]
                                              .statusHistory![index].status
                                              .toString())),
                                  padding: const EdgeInsets.all(7),
                                  child: CustomText(
                                    generateStatusText(_complaintDetailBloc
                                        .complaintDetailsList[0]
                                        .statusHistory![index].status
                                        .toString()),
                                    style: TS().gRoboto(
                                        fontSize: FS.font12.val,
                                        fontWeight: FW.w500.val,
                                        color: AppColor.white.val),
                                  ),
                                ),
                              ],
                            ),
                            CustomSizedBox(width: DBL.ten.val),
                            Container(
                              width: 1,
                              height: 50,
                              color: AppColor.lightGrey.val,
                            ),
                            CustomSizedBox(width: DBL.ten.val),
                            SizedBox(
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width * 0.4,
                              child: CustomText(
                                _complaintDetailBloc.complaintDetailsList[0]
                                    .statusHistory![index].comment ?? "",
                                style: TS().gRoboto(
                                    fontSize: FS.font12.val,
                                    fontWeight: FW.w400.val,
                                    color: AppColor.lightGrey3.val),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }

  String generateStatusText(String id) {
    if (id == "1") {
      return "New";
    } else if (id == "2") {
      return "Ongoing";
    } else if (id == "3") {
      return "Completed";
    } else {
      return "Canceled";
    }
  }

  Color generateColorForStatus(String id) {
    if (id == "1") {
      return AppColor.darkGrey.val;
    } else if (id == "2") {
      return AppColor.amber.val;
    } else if (id == "3") {
      return AppColor.green.val;
    } else {
      return AppColor.red.val;
    }
  }
}
