import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/core/responsive.dart';
import 'package:admin_580_tech/core/text_styles.dart';
import 'package:admin_580_tech/presentation/transaction_management/widgets/custom_status_widget.dart';
import 'package:admin_580_tech/presentation/widget/custom_container.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/bloc/complaint_details/complaint_detail_bloc.dart';
import '../../../domain/transaction_management/model/transaction_details_response.dart';
import '../../widget/custom_shimmer.dart';
import '../../widget/error_view.dart';

class TransactionDetailsAlertWidget extends StatelessWidget {
  const TransactionDetailsAlertWidget(
      {super.key, required this.complaintDetailBloc});

  final ComplaintDetailBloc complaintDetailBloc;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ComplaintDetailBloc>(
      create: (context) => complaintDetailBloc,
      child: BlocBuilder<ComplaintDetailBloc, ComplaintDetailState>(
        bloc: complaintDetailBloc,
        builder: (context, state) {
          return state.error != null || state.error != ""
              ? ErrorView(isClientError: true, errorMessage: state.error)
              : _bodyView(context);
        },
      ),
    );
  }

  SizedBox _bodyView(BuildContext context) {
    return SizedBox(
      height: 480,
      child: complaintDetailBloc.state.isLoading
          ? const CustomShimmerWidget.rectangular(height: double.infinity)
          : Wrap(
              children: [
                Responsive.isWeb(context)
                    ? Row(
                        children: [
                          _detailsWidget(context),
                          _refundWidget(complaintDetailBloc.state)
                        ],
                      )
                    : SizedBox(
                        height: 480,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              _detailsWidget(context),
                              _refundWidget(complaintDetailBloc.state)
                            ],
                          ),
                        ),
                      ),
              ],
            ),
    );
  }

  Row _detailRow(String detailName, String detail, TransactionDetailsData? item,
      BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 160,
          child: CustomText(
            detailName,
            softWrap: true,
            style: TS().gRoboto(
              fontSize:
                  Responsive.isWeb(context) ? FS.font14.val : FS.font13.val,
              fontWeight: FW.w400.val,
            ),
          ),
        ),
        item?.status!.id == 1 || item?.status!.id == 2
            ? Row(
                children: [
                  CustomText(
                    ":  ",
                    softWrap: true,
                    style: TS().gRoboto(
                      fontSize: Responsive.isWeb(context)
                          ? FS.font14.val
                          : FS.font13.val,
                      fontWeight: FW.w400.val,
                    ),
                  ),
                  CustomStatusWidget(
                    statusName: item!.status!.name!,
                    isCompleted: item.status!.id == 1 || item.status!.id == 2,
                    isFromDetails: true,
                  )
                ],
              )
            : CustomText(
                ":  $detail",
                softWrap: true,
                style: TS().gRoboto(
                  fontSize:
                      Responsive.isWeb(context) ? FS.font14.val : FS.font13.val,
                  fontWeight: FW.w400.val,
                ),
              ),
      ],
    );
  }

  Widget _detailsWidget(BuildContext context) {
    return Container(
      width: Responsive.isWeb(context)
          ? MediaQuery.of(context).size.width * .35
          : double.infinity,
      color: AppColor.white.val,
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          _detailRow(
              "Transaction ID",
              complaintDetailBloc.transactionDetailsData.transactionId ?? "",
              null,
              context),
          const CustomSizedBox(height: 7),
          _detailRow(
              "Service ID",
              complaintDetailBloc.transactionDetailsData.serviceId ?? "",
              null,
              context),
          const CustomSizedBox(height: 7),
          _detailRow(
              "Transaction Type",
              complaintDetailBloc.transactionDetailsData.transactionType ?? "",
              null,
              context),
          const CustomSizedBox(height: 7),
          _detailRow(
              "Paid For",
              complaintDetailBloc.transactionDetailsData.paidFor ?? "",
              null,
              context),
          const CustomSizedBox(height: 7),
          _detailRow(
              "Paid To",
              complaintDetailBloc.transactionDetailsData.paidTo ?? "",
              null,
              context),
          const CustomSizedBox(height: 7),
          _detailRow(
              "Received From",
              complaintDetailBloc.transactionDetailsData.recievedFrom ?? "",
              null,
              context),
          const CustomSizedBox(height: 7),
          _detailRow(
              "Amount",
              complaintDetailBloc.transactionDetailsData.amount ?? "",
              null,
              context),
          const CustomSizedBox(height: 7),
          _detailRow(
              "Date & Time",
              complaintDetailBloc.formatDateToMonthName(
                  complaintDetailBloc.transactionDetailsData.dateTime ??
                      "0000-00-00T00:00:00.000Z"),
              null,
              context),
          const CustomSizedBox(height: 7),
          _detailRow(
              "Status",
              complaintDetailBloc.transactionDetailsData.status!.name ?? "",
              complaintDetailBloc.transactionDetailsData,
              context),
        ],
      ),
    );
  }

/*  Widget _refundDetailsWidget() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
        color: AppColor.white.val,
      ),
      padding: const EdgeInsets.all(20),
      width: Responsive.isWeb(context)
          ? MediaQuery.of(context).size.width * .34
          : double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stepper(
            steps: stepperData,
            currentStep: 0,
            type: StepperType.vertical,
            controlsBuilder: (ctx, details) {
              return const Padding(padding: EdgeInsets.zero);
            },
          ),
        ],
      ),
    );
  }*/

  Widget _refundWidget(ComplaintDetailState state) {
    return CustomContainer(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            AppString.refundStarted.val,
            style: TS().gRoboto(
                color: AppColor.black.val,
                fontSize: FS.font16.val,
                fontWeight: FW.w500.val),
          ),
          Row(
            children: [
              Icon(
                Icons.check_circle,
                size: 20,
                color: AppColor.green.val,
              ),
              CustomSizedBox(width: DBL.fifteen.val),
              CustomText(
                'Mon,09March 2023 |  3:20PM',
                style: TS().gRoboto(
                    color: AppColor.black.val,
                    fontSize: FS.font12.val,
                    fontWeight: FW.w400.val),
              ),
            ],
          ),
          /*InkWell(
            onTap: () {
              complaintDetailBloc.add(ComplaintDetailEvent.hideOrShowDetails(
                  clicked: complaintDetailBloc.isClicked));
              print("isClicked : ${complaintDetailBloc.isClicked}");
            },
            child: Container(
              width: 150,
              height: 30,
              padding: const EdgeInsets.all(5),
              child: Row(
                children: [
                  CustomText(
                    state.isClicked ? "Hide Details" : "Show Details",
                    style: TS().gRoboto(
                        color: AppColor.error.val,
                        fontSize: FS.font13.val,
                        fontWeight: FW.w400.val),
                  ),
                  Icon(
                    state.isClicked
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                    size: 20,
                    color: AppColor.error.val,
                  )
                ],
              ),
            ),
          ),*/
        ],
      ),
    );
  }
}
