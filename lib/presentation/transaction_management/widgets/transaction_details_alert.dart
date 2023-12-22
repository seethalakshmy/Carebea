import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/core/responsive.dart';
import 'package:admin_580_tech/core/text_styles.dart';
import 'package:admin_580_tech/presentation/transaction_management/widgets/custom_status_widget.dart';
import 'package:admin_580_tech/presentation/widget/custom_container.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/bloc/service_request_management/service_request_management_bloc.dart';
import '../../../application/bloc/transaction_management/transaction_management_bloc.dart';
import '../../../core/utility.dart';
import '../../../domain/transaction_management/model/transaction_details_response.dart';
import '../../../main.dart';
import '../../routes/app_router.gr.dart';
import '../../service_request_management/widgets/service_details_alert.dart';
import '../../side_menu/side_menu_page.dart';
import '../../widget/custom_alert_dialog_widget.dart';
import '../../widget/custom_shimmer.dart';
import '../../widget/error_view.dart';

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
          print("2222222222222 ${transactionBloc.state.error}");
          return SizedBox(
            height: 480,
            child: transactionBloc.state.isDetailsLoading
                ? const CustomShimmerWidget.rectangular(height: double.infinity)
                // : transactionBloc.state.error == null
                //     ? ErrorView(
                //         isClientError: true,
                //         errorMessage: transactionBloc.state.error,
                //         isUnderTab: false,
                //         isFromDashboard: false,
                //       )
                : Wrap(
                    crossAxisAlignment: WrapCrossAlignment.start,
                    alignment: WrapAlignment.spaceBetween,
                    direction: Axis.horizontal,
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
      BuildContext context, bool hasRedirection) {
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
                  needUnderLine: hasRedirection ? true : false,
                  color:
                      hasRedirection ? AppColor.blue.val : AppColor.black.val,
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
      width: 700,
      color: AppColor.white.val,
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          _detailRow(
              "Transaction ID",
              transactionBloc.transactionDetailsData.uniqueTransactionId ?? "",
              null,
              context,
              false),
          const CustomSizedBox(height: 7),
          InkWell(
            onTap: () {
              Navigator.pop(context);
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  context.read<ServiceRequestManagementBloc>().add(
                      ServiceRequestManagementEvent.getServiceDetails(
                          context: context,
                          serviceId: transactionBloc
                                  .transactionDetailsData.serviceId ??
                              ''));
                  return CustomAlertDialogWidget(
                    heading: AppString.services.val,
                    child: ServiceDetailsAlert(
                      title: AppString.serviceDetails.val,
                      serviceBloc: serviceRequestManagementBloc,
                    ),
                  );
                },
              );
            },
            child: _detailRow(
                "Service ID",
                transactionBloc.transactionDetailsData.uniqueServiceId ?? "",
                null,
                context,
                true),
          ),
          const CustomSizedBox(height: 7),
          _detailRow(
              "Transaction Type",
              transactionBloc.transactionDetailsData.transactionType ?? "",
              null,
              context,
              false),
          const CustomSizedBox(height: 7),
          _detailRow(
              "Paid For",
              transactionBloc.transactionDetailsData.paidFor ?? "",
              null,
              context,
              false),
          const CustomSizedBox(height: 7),
          _detailRow(
              "Paid To",
              transactionBloc.transactionDetailsData.paidTo ?? "",
              null,
              context,
              false),
          const CustomSizedBox(height: 7),
          InkWell(
            onTap: () {
              Navigator.pop(context);
              autoTabRouter?.navigate(UserManagementDetailRoute(
                  id: transactionBloc.transactionDetailsData.user));
            },
            child: _detailRow(
                "Received From",
                transactionBloc.transactionDetailsData.recievedFrom ?? "",
                null,
                context,
                true),
          ),
          const CustomSizedBox(height: 7),
          _detailRow(
              "Amount",
              '\$${Utility.formatAmount(double.tryParse(transactionBloc.transactionDetailsData.amount?.replaceAll('\$', "") ?? "0.0") ?? 0.0)}',
              null,
              context,
              false),
          const CustomSizedBox(height: 7),
          _detailRow(
              "Date & Time",
              transactionBloc.formatDateToMonthName(
                  transactionBloc.transactionDetailsData.dateTime ??
                      "0000-00-00T00:00:00.000Z"),
              null,
              context,
              false),
          const CustomSizedBox(height: 7),
          _detailRow(
              "Status",
              transactionBloc.transactionDetailsData.status?.name ?? "",
              transactionBloc.transactionDetailsData,
              context,
              false),
        ],
      ),
    );
  }

  Widget _refundDetailsWidget(BuildContext context) {
    return CustomContainer(
      width: 400,
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          transactionBloc.detailsList.isNotEmpty
              ? CustomText(
                  AppString.transactionHistory.val,
                  style: TS().gRoboto(
                      fontSize: FS.font16.val,
                      fontWeight: FW.w500.val,
                      color: AppColor.black.val),
                )
              : CustomSizedBox.shrink(),
          CustomSizedBox(height: DBL.ten.val),
          ListView.builder(
              itemCount: transactionBloc.detailsList.isNotEmpty
                  ? transactionBloc.detailsList[0].refund!.paymentStatus!.length
                  : 0,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                print("********** ${transactionBloc.detailsList.isNotEmpty}");
                return transactionBloc.detailsList.isNotEmpty
                    ? Row(
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
                                      transactionBloc.detailsList[0].refund!
                                          .paymentStatus!.length
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
                                transactionBloc.detailsList[0].refund!
                                        .paymentStatus![index].date ??
                                    "",
                                style: TS().gRoboto(
                                    fontSize: FS.font12.val,
                                    fontWeight: FW.w400.val,
                                    color: AppColor.black4.val),
                              ),
                              CustomSizedBox(height: DBL.ten.val),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0, bottom: 10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      transactionBloc.detailsList[0].refund!
                                              .paymentStatus![index].title ??
                                          "",
                                      style: TS().gRoboto(
                                          fontSize: FS.font12.val,
                                          fontWeight: FW.w400.val,
                                          color: AppColor.lightGrey2.val),
                                    ),
                                    CustomSizedBox(height: DBL.five.val),
                                    CustomText(
                                      "Txn Id : ${transactionBloc.detailsList[0].refund!.paymentStatus![index].transactionId ?? ""}",
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
                      )
                    : Container(
                        width: 100,
                        height: 50,
                        color: Colors.red,
                      );
              }),
        ],
      ),
    );
  }
}
