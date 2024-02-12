import 'package:admin_580_tech/core/string_extension.dart';
import 'package:admin_580_tech/core/text_styles.dart';
import 'package:admin_580_tech/presentation/widget/custom_svg.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/bloc/caregiver_detail/caregiver_detail_bloc.dart';
import '../../../application/bloc/transaction_management/transaction_management_bloc.dart';
import '../../../core/enum.dart';
import '../../../core/utility.dart';
import '../../../domain/caregiver_detail/model/caregiver_earning_list_response.dart';
import '../../../infrastructure/transaction_management/transactions_repository.dart';
import '../../widget/custom_alert_dialog_widget.dart';
import '../../widget/custom_card.dart';
import '../../widget/custom_container.dart';
import '../../widget/custom_data_table_2.dart';
import '../../widget/custom_padding.dart';
import '../../widget/custom_selection_area.dart';
import '../../widget/custom_sizedbox.dart';
import '../../widget/custom_text.dart';
import '../../widget/empty_view.dart';
import '../../widget/error_view.dart';
import '../../widget/loader_view.dart';
import '../../widget/pagination_view.dart';
import '../../widget/table_actions_view.dart';
import '../../widget/table_column_view.dart';
import '../../widget/table_loader_view.dart';
import '../../widget/table_row_view.dart';
import '../../widget/table_status_box.dart';
import '../widgets/earning_detail_left_view.dart';

class CareGiverEarningView extends StatefulWidget {
  const CareGiverEarningView(
      {required this.bloc, required this.userId, Key? key})
      : super(key: key);
  final CaregiverDetailBloc bloc;
  final String userId;

  @override
  State<CareGiverEarningView> createState() => _CareGiverEarningViewState();
}

class _CareGiverEarningViewState extends State<CareGiverEarningView> {
  List<Earnings> earnings = [];
  int _totalItems = 1;
  final int _limit = 10;
  int _page = 1;
  int _pageIndex = 0;
  int _start = 0;
  int _end = 10;
  TransactionManagementBloc transactionManagementBloc =
      TransactionManagementBloc(TransactionsRepository());

  @override
  void initState() {
    super.initState();
    _getCareGiverEarnings();
  }

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      elevation: DBL.seven.val,
      child: BlocBuilder<CaregiverDetailBloc, CareGiverDetailState>(
        builder: (context, state) {
          CareGiverEarningsListResponse? value = state.earningsListResponse;
          if (value?.status ?? false) {
            earnings.clear();
            if (value?.data?.earnings != null &&
                value!.data!.earnings!.isNotEmpty) {
              _totalItems = value.data?.totalCount ?? 1;
              earnings.addAll(value.data?.earnings ?? []);
              _updateData();
            }
          }
          return CustomContainer(
              child: state.isLoadingEarnings
                  ? const TableLoaderView()
                  : state.isError
                      ? ErrorView(
                          isClientError: false, errorMessage: state.error)
                      : _serviceView(context, earnings));
        },
      ),
    );
  }

  _serviceView(BuildContext context, List<Earnings> earnings) {
    return earnings.isNotEmpty
        ? CustomPadding.only(
            left: DBL.twenty.val,
            right: DBL.nineteen.val,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CustomSizedBox(
                    height: DBL.four.val,
                  ),
                  CustomSizedBox(
                    height: (INT.ten.val + 1) * 48,
                    child: _earnTable(context),
                  ),
                  CustomSizedBox(height: DBL.twenty.val),
                  if (_totalItems > 10) _paginationView()
                ],
              ),
            ),
          )
        : const EmptyView(
            title: "No Earnings found!",
            isUnderTab: true,
          );
  }

  _earnTable(BuildContext context) {
    return CSelectionArea(
      child: CDataTable2(
        minWidth: DBL.nineFifty.val,
        dividerThickness: DBL.pointThree.val,
        headingRowHeight: DBL.fortyEight.val,
        dataRowHeight: DBL.sixty.val,
        columns: [
          DataColumn2(
            size: ColumnSize.S,
            fixedWidth: DBL.eighty.val,
            label: _tableColumnView(AppString.slNo.val),
          ),
          DataColumn2(
            size: ColumnSize.L,
            label: _tableColumnView(AppString.serviceId.val),
          ),
          DataColumn2(
            size: ColumnSize.L,
            label: _tableColumnView(AppString.transactionType.val),
          ),
          DataColumn2(
            size: ColumnSize.L,
            label: _tableColumnView(AppString.dateTime.val),
          ),
          DataColumn2(
            size: ColumnSize.L,
            label: _tableColumnView(AppString.amount.val),
          ),
          DataColumn2(
            size: ColumnSize.L,
            label: _tableColumnView(AppString.receivedFrom.val),
          ),
          DataColumn2(
            size: ColumnSize.L,
            label: _tableColumnView(AppString.paidFor.val),
          ),
          DataColumn2(
            size: ColumnSize.L,
            label: _tableColumnView(AppString.transactionId.val),
          ),
          DataColumn2(
            fixedWidth: DBL.oneFifty.val,
            label: _tableColumnView(
              AppString.status.val,
            ),
          ),
          const DataColumn2(
            size: ColumnSize.M,
            label: CustomText(""),
          ),
        ],
        rows: earnings.asMap().entries.map((e) {
          var item = e.value;
          _setIndex(e.key);
          return DataRow2(
            cells: [
              DataCell(_tableRowView(
                _pageIndex.toString(),
              )),
              DataCell(_tableRowView(
                item.serviceId.toString(),
              )),
              DataCell(_tableRowView(item.transactionType.toString())),
              DataCell(_tableRowView(item.dateTime?.parseWithFormat() ?? "")),
              DataCell(_tableRowView(
                  '\$${Utility.formatAmount(double.tryParse(item.amount?.replaceAll('\$', "") ?? "0.0") ?? 0.0)}')),
              DataCell(_tableRowView(item.recievedFrom ?? "")),
              DataCell(_tableRowView(item.paidFor ?? "")),
              DataCell(_tableRowView(item.transactionId ?? "")),
              DataCell(TableStatusBox(
                status: item.status ?? 0,
              )),
              DataCell(TableActions(
                isEdit: false,
                isView: true,
                onViewTap: () {
                  transactionManagementBloc =
                      TransactionManagementBloc(TransactionsRepository());
                  _earningsDetailPopUp(context, item.uniqueServiceId ?? "",
                      item.uniqueTransactionId ?? "", item.status ?? 0);
                },
              )),
            ],
          );
        }).toList(),
      ),
    );
  }

  TableRowView _tableRowView(String name) => TableRowView(text: name);

  TableColumnView _tableColumnView(String name) {
    return TableColumnView(
      text: name,
      isUnderTab: true,
    );
  }

  void _updateData() {
    if (_page == 1) {
      _start = 0;
      _end = earnings.length < _limit ? earnings.length : _limit;
    } else {
      _start = (_page * _limit) - 10;
      _end = _start + earnings.length;
    }
  }

  _paginationView() {
    final int totalPages = (_totalItems / _limit).ceil();
    return PaginationView(
        page: _page,
        start: _start,
        end: _end,
        totalItems: _totalItems,
        totalPages: totalPages,
        onNextPressed: () {
          if (_page < totalPages) {
            _page = _page + 1;
            _getCareGiverEarnings();
          }
        },
        onItemPressed: (i) {
          _page = i;
          _getCareGiverEarnings();
        },
        onPreviousPressed: () {
          if (_page > 1) {
            _page = _page - 1;
            _getCareGiverEarnings();
          }
        });
  }

  _getCareGiverEarnings() {
    widget.bloc.add(CareGiverDetailEvent.getCareGiverEarningList(
      userId: widget.userId,
      page: _page,
      limit: _limit,
      adminId: widget.userId,
    ));
  }

  _setIndex(int index) {
    if (_page == 1) {
      _pageIndex = index + 1;
    } else {
      _pageIndex = ((_page * _limit) - 10) + index + 1;
    }
  }

  _earningsDetailPopUp(BuildContext context, String serviceId,
      String transactionId, int status) {
    showGeneralDialog(
      barrierLabel: "",
      barrierDismissible: true,
      context: context,
      pageBuilder: (BuildContext buildContext, Animation animation,
          Animation secondaryAnimation) {
        return BlocProvider(
          create: (context) => transactionManagementBloc
            ..add(TransactionManagementEvent.getTransactionDetails(
                transactionId: transactionId ?? '',
                serviceId: serviceId ?? "")),
          child: BlocBuilder<TransactionManagementBloc,
              TransactionManagementState>(
            builder: (context, state) {
              return CustomAlertDialogWidget(
                heading: AppString.earnings.val,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: DBL.twentyFive.val,
                  ),
                  child: state.isDetailsLoading
                      ? LoaderView()
                      : SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Builder(
                            builder: (context) => Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomSizedBox(height: DBL.thirty.val),
                                !isLg(context)
                                    ? Column(
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                flex: 2,
                                                child: _leftView(status),
                                              ),
                                              CustomSizedBox(
                                                width: DBL.fifty.val,
                                              ),
                                              status != 1
                                                  ? Expanded(
                                                      flex: 3,
                                                      child: _refundDetailsWidget(
                                                          transactionManagementBloc,
                                                          context),
                                                    )
                                                  : Container()
                                            ],
                                          ),
                                        ],
                                      )
                                    : Column(
                                        children: [
                                          _leftView(status),
                                          CustomSizedBox(
                                            height: DBL.twenty.val,
                                          ),
                                          _refundDetailsWidget(
                                              transactionManagementBloc,
                                              context),
                                          CustomSizedBox(
                                            height: DBL.twenty.val,
                                          ),
                                        ],
                                      )
                              ],
                            ),
                          )),
                ),
              );
            },
          ),
        );
      },
    );
  }

  Widget _refundDetailsWidget(
      TransactionManagementBloc transactionManagementBloc,
      BuildContext context) {
    return CustomContainer(
      width: 400,
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          transactionManagementBloc.detailsList.isNotEmpty
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
              itemCount: transactionManagementBloc.detailsList.isNotEmpty
                  ? transactionManagementBloc
                      .detailsList[0].refund!.paymentStatus!.length
                  : 0,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                print(
                    "********** ${transactionManagementBloc.detailsList.isNotEmpty}");
                return transactionManagementBloc.detailsList.isNotEmpty
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
                                      transactionManagementBloc.detailsList[0]
                                          .refund!.paymentStatus!.length
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
                                transactionManagementBloc.detailsList[0].refund!
                                        .paymentStatus![index].date
                                        ?.parseWithFormat() ??
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
                                      transactionManagementBloc
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
                                      "Txn Id : ${transactionManagementBloc.detailsList[0].refund!.paymentStatus![index].transactionId ?? ""}",
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

  // Row _rightView(BuildContext context) {
  //   return Row(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       _verticalDivider(),
  //       SizedBox(
  //         width: DBL.ten.val,
  //       ),
  //       Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           CustomText(
  //             "Refund Started",
  //             style: TS().gRoboto(
  //                 fontSize: FS.font18.val,
  //                 color: AppColor.matBlack4.val,
  //                 fontWeight: FW.w500.val),
  //           ),
  //           CustomSizedBox(
  //             height: DBL.seven.val,
  //           ),
  //           CustomText(
  //             "Mon,09March 2023 |  3:20PM",
  //             style: TS().gRoboto(
  //                 fontSize: FS.font13.val,
  //                 color: AppColor.label2.val,
  //                 fontWeight: FW.w400.val),
  //           ),
  //           CustomSizedBox(
  //             height: DBL.ten.val,
  //           ),
  //           Row(
  //             children: [
  //               CustomText(
  //                 "Hide Details",
  //                 style: TS().gRoboto(
  //                     color: AppColor.red4.val,
  //                     fontSize: FS.font13.val,
  //                     fontWeight: FW.w400.val),
  //               ),
  //               Icon(
  //                 Icons.keyboard_arrow_up,
  //                 size: 15,
  //                 color: AppColor.error.val,
  //               )
  //             ],
  //           ),
  //           CustomSizedBox(
  //             height: DBL.twentyTwo.val,
  //           ),
  //           CustomContainer(
  //             width: isXs(context) ? 330 : 400,
  //             color: AppColor.lightGrey9.val,
  //             padding: EdgeInsets.symmetric(
  //               horizontal: isXs(context) ? DBL.eight.val : DBL.thirty.val,
  //               vertical: DBL.twenty.val,
  //             ),
  //             child: Column(
  //               children: [
  //                 refundStatusView(context),
  //                 CustomSizedBox(
  //                   height: DBL.eight.val,
  //                 ),
  //                 refundStatusView(context),
  //                 CustomSizedBox(
  //                   height: DBL.eight.val,
  //                 ),
  //                 refundStatusView(context),
  //               ],
  //             ),
  //           ),
  //           CustomSizedBox(
  //             height: DBL.thirty.val,
  //           ),
  //           CustomText(
  //             "Refunded",
  //             style: TS().gRoboto(
  //                 fontSize: FS.font18.val,
  //                 color: AppColor.matBlack4.val,
  //                 fontWeight: FW.w500.val),
  //           ),
  //           CustomSizedBox(
  //             height: DBL.four.val,
  //           ),
  //           CustomText(
  //             "Mon,09March 2023 |  3:20PM",
  //             style: TS().gRoboto(
  //                 fontSize: FS.font13.val,
  //                 color: AppColor.label2.val,
  //                 fontWeight: FW.w400.val),
  //           ),
  //           CustomSizedBox(
  //             height: DBL.five.val,
  //           ),
  //           CustomText(
  //             "Refund credited to your orginal payment mode",
  //             style: TS().gRoboto(
  //                 fontSize: FS.font15.val,
  //                 color: AppColor.label3.val,
  //                 fontWeight: FW.w400.val),
  //           ),
  //         ],
  //       )
  //     ],
  //   );
  // }

  Column refundStatusView(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CustomContainer.decoration(
              width: DBL.twelve.val,
              height: DBL.twelve.val,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColor.lightGrey10.val)),
            ),
            CustomSizedBox(width: DBL.twelve.val),
            CustomText(
              "Refund initiated by ama-gi ",
              style: TS().gRoboto(
                  color: AppColor.black.val,
                  fontSize: FS.font14.val,
                  fontWeight: FW.w400.val),
            ),
          ],
        ),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSizedBox(
              width: DBL.fourPointFive.val,
            ),
            CustomContainer(
                width: DBL.one.val,
                height: DBL.twentyFive.val,
                color: AppColor.lightGrey10.val),
            CustomSizedBox(width: DBL.twentyOne.val),
            CustomText(
              "MON,10 MARCH 2023   |   03:15PM",
              style: TS().gRoboto(
                  color: AppColor.lightGrey10.val,
                  fontSize: FS.font12.val,
                  fontWeight: FW.w400.val),
            ),
          ],
        ),
      ],
    );
  }

  Column _verticalDivider() {
    return Column(
      children: [
        CustomSvg(path: IMG.completed.val),
        VerticalDashedLine(
          height: 320,
          color: AppColor.matBlack3.val,
          dashWidth: 1.5,
          dashSpace: 5.0,
        ),
        CustomSvg(path: IMG.completed.val),
      ],
    );
  }

  _leftView(int status) {
    return EarnDetailLeftView(
      clientName: (transactionManagementBloc
                  .transactionDetailsData.name?.firstName ??
              "") +
          (" ") +
          (transactionManagementBloc.transactionDetailsData.name?.lastName ??
              ''),
      transactionId: transactionManagementBloc
              .transactionDetailsData.uniqueTransactionId ??
          "",
      status: status,
      amount: transactionManagementBloc.transactionDetailsData.amount ?? "",
      dateTime: transactionManagementBloc.transactionDetailsData.dateTime
              ?.parseWithFormat() ??
          "",
      receivedFrom:
          transactionManagementBloc.transactionDetailsData.recievedFrom ?? "",
      creditTo: transactionManagementBloc.transactionDetailsData.paidTo ?? "",
      serviceId:
          transactionManagementBloc.transactionDetailsData.uniqueServiceId ??
              "",
      paidFor: transactionManagementBloc.transactionDetailsData.paidFor ?? "",
    );
  }

  bool isLg(BuildContext context) => MediaQuery.of(context).size.width <= 976;

  bool isXs(BuildContext context) => MediaQuery.of(context).size.width <= 570;
}

class VerticalDashedLine extends StatelessWidget {
  final double height;
  final Color color;
  final double dashWidth;
  final double dashSpace;

  VerticalDashedLine({
    required this.height,
    this.color = Colors.black,
    this.dashWidth = 4.0,
    this.dashSpace = 4.0,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _DashedLinePainter(
        color: color,
        dashWidth: dashWidth,
        dashSpace: dashSpace,
      ),
      size: Size(dashWidth, height),
    );
  }
}

class _DashedLinePainter extends CustomPainter {
  final Color color;
  final double dashWidth;
  final double dashSpace;

  _DashedLinePainter({
    required this.color,
    required this.dashWidth,
    required this.dashSpace,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = size.width;

    final dashCount = (size.height / (dashWidth + dashSpace)).floor();

    final dashOffset =
        (size.height - (dashCount * (dashWidth + dashSpace)) + dashSpace) / 2;

    for (var i = 0; i < dashCount; ++i) {
      final startY = dashOffset + i * (dashWidth + dashSpace);
      final endY = startY + dashWidth;
      canvas.drawLine(Offset(0, startY), Offset(0, endY), paint);
    }
  }

  @override
  bool shouldRepaint(_DashedLinePainter oldDelegate) {
    return color != oldDelegate.color ||
        dashWidth != oldDelegate.dashWidth ||
        dashSpace != oldDelegate.dashSpace;
  }
}
