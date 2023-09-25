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
                    crossAxisAlignment: WrapCrossAlignment.start,
                    alignment: WrapAlignment.start,
                    children: [
                      _detailsWidget(context),
                      _refundDetailsWidget(context)
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
            ? Expanded(
                child: Row(
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
                      isCompleted:
                          item?.status?.id == 1 || item?.status?.id == 2,
                      isFromDetails: true,
                    )
                  ],
                ),
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
      width: 400,
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
              transactionBloc.transactionDetailsData.status?.name ?? "",
              transactionBloc.transactionDetailsData,
              context),
        ],
      ),
    );
  }

  Widget _refundDetailsWidget(BuildContext context) {
    return CustomContainer(
      width: 300,
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            AppString.refundStatus.val,
            style: TS().gRoboto(
                fontSize: FS.font16.val,
                fontWeight: FW.w500.val,
                color: AppColor.black.val),
          ),
          CustomSizedBox(height: DBL.ten.val),
          ListView.builder(
              itemCount: BlocProvider.of<TransactionManagementBloc>(context)
                  .detailsList[0]
                  .refund!
                  .paymentStatus!
                  .length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.green,
                          radius: 6,
                        ),
                        index + 1 <
                                BlocProvider.of<TransactionManagementBloc>(
                                        context)
                                    .detailsList[0]
                                    .refund!
                                    .paymentStatus!
                                    .length
                            ? Container(
                                width: 5,
                                color: AppColor.lightGrey.val,
                                height: 60,
                              )
                            : Container()
                      ],
                    ),
                    CustomSizedBox(width: DBL.ten.val),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          BlocProvider.of<TransactionManagementBloc>(context)
                                  .detailsList[0]
                                  .refund!
                                  .paymentStatus![index]
                                  .date ??
                              "",
                          style: TS().gRoboto(
                              fontSize: FS.font12.val,
                              fontWeight: FW.w400.val,
                              color: AppColor.black4.val),
                        ),
                        CustomSizedBox(height: DBL.ten.val),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 10.0, bottom: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                BlocProvider.of<TransactionManagementBloc>(
                                            context)
                                        .detailsList[0]
                                        .refund!
                                        .paymentStatus![index]
                                        .title ??
                                    "",
                                style: TS().gRoboto(
                                    fontSize: FS.font12.val,
                                    fontWeight: FW.w400.val,
                                    color: AppColor.lightGrey2.val),
                              ),
                              CustomSizedBox(height: DBL.five.val),
                              CustomText(
                                "Txn Id : ${BlocProvider.of<TransactionManagementBloc>(context).detailsList[0].refund!.paymentStatus![index].paymentLogTxnId ?? ""}",
                                style: TS().gRoboto(
                                    fontSize: FS.font12.val,
                                    fontWeight: FW.w400.val,
                                    color: AppColor.lightGrey2.val),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                );
              }),
        ],
      ),
    );
  }
}
