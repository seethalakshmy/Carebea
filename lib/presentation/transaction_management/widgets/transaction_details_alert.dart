import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/core/responsive.dart';
import 'package:admin_580_tech/core/text_styles.dart';
import 'package:admin_580_tech/presentation/transaction_management/widgets/custom_status_widget.dart';
import 'package:admin_580_tech/presentation/widget/custom_container.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/bloc/transaction_management/transaction_management_bloc.dart';
import '../../../domain/transaction_management/model/transaction_details_response.dart';
import '../../widget/custom_shimmer.dart';

class TransactionDetailsAlert extends StatelessWidget {
  const TransactionDetailsAlert({super.key, required this.transactionBloc});

  final TransactionManagementBloc transactionBloc;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TransactionManagementBloc>(
      create: (context) => transactionBloc,
      child: BlocBuilder<TransactionManagementBloc, TransactionManagementState>(
        bloc: transactionBloc,
        builder: (context, state) {
          return SizedBox(
            height: 480,
            child: transactionBloc.state.isDetailsLoading
                ? const CustomShimmerWidget.rectangular(height: double.infinity)
                : Wrap(
                    children: [
                      Responsive.isWeb(context)
                          ? Row(
                              children: [
                                _detailsWidget(context),
                                _refundWidget(transactionBloc.state)
                              ],
                            )
                          : SizedBox(
                              height: 480,
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    _detailsWidget(context),
                                    _refundWidget(transactionBloc.state)
                                  ],
                                ),
                              ),
                            ),
                    ],
                  ),
          );
        },
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
        item?.status?.id == 1 || item?.status?.id == 2
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
                    statusName: item?.status?.name ?? "",
                    isCompleted: item?.status?.id == 1 || item?.status?.id == 2,
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
              transactionBloc.transactionDetailsData.transactionId ?? "",
              null,
              context),
          const CustomSizedBox(height: 7),
          _detailRow(
              "Service ID",
              transactionBloc.transactionDetailsData.serviceId ?? "",
              null,
              context),
          const CustomSizedBox(height: 7),
          _detailRow(
              "Transaction Type",
              transactionBloc.transactionDetailsData.transactionType ?? "",
              null,
              context),
          const CustomSizedBox(height: 7),
          _detailRow(
              "Paid For",
              transactionBloc.transactionDetailsData.paidFor ?? "",
              null,
              context),
          const CustomSizedBox(height: 7),
          _detailRow(
              "Paid To",
              transactionBloc.transactionDetailsData.paidTo ?? "",
              null,
              context),
          const CustomSizedBox(height: 7),
          _detailRow(
              "Received From",
              transactionBloc.transactionDetailsData.recievedFrom ?? "",
              null,
              context),
          const CustomSizedBox(height: 7),
          _detailRow(
              "Amount",
              transactionBloc.transactionDetailsData.amount ?? "",
              null,
              context),
          const CustomSizedBox(height: 7),
          _detailRow(
              "Date & Time",
              transactionBloc.formatDateToMonthName(
                  transactionBloc.transactionDetailsData.dateTime ??
                      "0000-00-00T00:00:00.000Z"),
              null,
              context),
          const CustomSizedBox(height: 7),
          _detailRow(
              "Status",
              transactionBloc.transactionDetailsData.status!.name ?? "",
              transactionBloc.transactionDetailsData,
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

  Widget _refundWidget(TransactionManagementState state) {
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
          InkWell(
            onTap: () {
              transactionBloc.add(TransactionManagementEvent.hideOrShowDetails(
                  clicked: transactionBloc.isClicked));
              print("isClicked : ${transactionBloc.isClicked}");
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
          ),
        ],
      ),
    );
  }
}
