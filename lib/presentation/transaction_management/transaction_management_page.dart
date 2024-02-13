import 'package:auto_route/auto_route.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

import '../../application/bloc/transaction_management/transaction_management_bloc.dart';
import '../../core/custom_debugger.dart';
import '../../core/custom_snackbar.dart';
import '../../core/enum.dart';
import '../../core/properties.dart';
import '../../core/responsive.dart';
import '../../core/string_extension.dart';
import '../../core/text_styles.dart';
import '../../core/utility.dart';
import '../../domain/transaction_management/model/transaction_list_response.dart';
import '../../domain/transaction_management/model/transactions.dart';
import '../../infrastructure/shared_preference/shared_preff_util.dart';
import '../../infrastructure/transaction_management/transactions_repository.dart';
import '../widget/custom_alert_dialog_widget.dart';
import '../widget/custom_button.dart';
import '../widget/custom_card.dart';
import '../widget/custom_container.dart';
import '../widget/custom_data_table_2.dart';
import '../widget/custom_dropdown.dart';
import '../widget/custom_selection_area.dart';
import '../widget/custom_shimmer.dart';
import '../widget/custom_sizedbox.dart';
import '../widget/custom_svg.dart';
import '../widget/custom_text.dart';
import '../widget/custom_text_field.dart';
import '../widget/empty_view.dart';
import '../widget/error_view.dart';
import '../widget/header_view.dart';
import '../widget/loader_view.dart';
import '../widget/pagination_view.dart';
import '../widget/table_actions_view.dart';
import 'widgets/custom_status_widget.dart';
import 'widgets/transaction_details_alert.dart';

@RoutePage()
class TransactionManagementPage extends StatefulWidget {
  TransactionManagementPage({Key? key, this.clientId}) : super(key: key);

  String? clientId;

  @override
  State<TransactionManagementPage> createState() =>
      _TransactionManagementPageState();
}

class _TransactionManagementPageState extends State<TransactionManagementPage> {
  late TransactionManagementBloc _transactionBloc;

  List<int> shimmerList = List.generate(10, (index) => (index));

  final TextEditingController _searchController = TextEditingController();
  TextEditingController fromDateController = TextEditingController();
  TextEditingController toDateController = TextEditingController();

  SharedPreffUtil sharedPrefUtil = SharedPreffUtil();
  String? adminId;
  int _page = 1;

  @override
  void initState() {
    super.initState();
    _transactionBloc = TransactionManagementBloc(TransactionsRepository());
    _transactionBloc.add(const TransactionManagementEvent.getFilters());
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: SharedPreffUtil().init(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const LoaderView();
          }
          adminId = SharedPreffUtil().getAdminId;
          if (sharedPrefUtil.getPage != 0) {
            _transactionBloc.paginationPage = sharedPrefUtil.getPage;
          }

          return SingleChildScrollView(
            child: Column(
              children: [
                widget.clientId == ""
                    ? HeaderView(title: AppString.transactionManagement.val)
                    : SizedBox.shrink(),
                CustomSizedBox(height: DBL.twenty.val),
                BlocProvider(
                  create: (context) => _transactionBloc,
                  child: _reBuildView(),
                ),
              ],
            ),
          );
        });
  }

  BlocProvider<TransactionManagementBloc> _reBuildView() {
    return BlocProvider(
      create: (context) => _transactionBloc
        ..add(TransactionManagementEvent.getTransactions(
            page: _transactionBloc.paginationPage.toString(),
            limit: _transactionBloc.limit,
            searchTerm: _searchController.text,
            userId: adminId ?? '',
            clientId: widget.clientId,
            statusId: 0,
            fromDate: _transactionBloc.selectedFromDate,
            toDate: _transactionBloc.selectedToDate)),
      child: CustomCard(
        shape: PR().roundedRectangleBorder(DBL.eighteen.val),
        elevation: DBL.seven.val,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BlocBuilder<TransactionManagementBloc,
              TransactionManagementState>(
            builder: (context, state) {
              return Column(
                children: [
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.start,
                    children: [
                      _transactionBloc.state.isInitialLoading &&
                              _transactionBloc.filterId == 0
                          ? _filterLoader()
                          : _statusDropDown(context),
                      CustomSizedBox(width: DBL.fifteen.val),
                      state.isLoading
                          ? _shimmerForFilterWidgets()
                          : _buildDatePicker(state, fromDateController,
                              AppString.startDate.val, () {
                              _selectFromDate(context, state);
                            }),
                      CustomSizedBox(width: DBL.fifteen.val),
                      state.isLoading
                          ? _shimmerForFilterWidgets()
                          : _buildDatePicker(
                              state, toDateController, AppString.endDate.val,
                              () {
                              _transactionBloc.selectedFromDate != "" ||
                                      fromDateController.text.isNotEmpty
                                  ? _selectToDate(context, state)
                                  : CSnackBar.showError(context,
                                      msg: 'Please select a startDate');
                            }),
                      CustomSizedBox(width: DBL.fifteen.val),
                      CTextField(
                        onSubmitted: (val) {
                          _transactionBloc.searchQuery = val;
                          _transactionBloc.paginationPage = 1;
                          _transactionBloc.add(
                              TransactionManagementEvent.getTransactions(
                                  page: _transactionBloc.paginationPage
                                      .toString(),
                                  limit: _transactionBloc.limit,
                                  searchTerm: _searchController.text,
                                  userId: adminId ?? '',
                                  clientId: widget.clientId,
                                  statusId: _transactionBloc.filterId,
                                  fromDate: _transactionBloc.selectedFromDate,
                                  toDate: _transactionBloc.selectedToDate));
                        },
                        onChanged: (val) {
                          _transactionBloc.add(
                              TransactionManagementEvent.getTransactions(
                                  page: _transactionBloc.paginationPage
                                      .toString(),
                                  limit: _transactionBloc.limit,
                                  searchTerm: _searchController.text,
                                  userId: adminId ?? '',
                                  clientId: widget.clientId,
                                  statusId: _transactionBloc.filterId,
                                  fromDate: _transactionBloc.selectedFromDate,
                                  toDate: _transactionBloc.selectedToDate));
                        },
                        width: Responsive.isWeb(context)
                            ? DBL.threeFifteen.val
                            : DBL.twoForty.val,
                        height: DBL.forty.val,
                        controller: _searchController,
                        hintText: AppString.search.val,
                        hintStyle: TS().gRoboto(
                            fontSize: FS.font15.val, fontWeight: FW.w500.val),
                        suffixIcon: InkWell(
                          onTap: () {
                            _transactionBloc.add(
                                TransactionManagementEvent.getTransactions(
                                    page: _transactionBloc.paginationPage
                                        .toString(),
                                    limit: _transactionBloc.limit,
                                    searchTerm: _transactionBloc.searchQuery,
                                    userId: adminId ?? '',
                                    clientId: widget.clientId,
                                    statusId: _transactionBloc.filterId,
                                    fromDate: _transactionBloc.selectedFromDate,
                                    toDate: _transactionBloc.selectedToDate));
                          },
                          child: CustomSvg(
                            path: IMG.search.val,
                            height: 16,
                            width: 16,
                          ),
                        ),
                      ),
                      _clearAllFiltersButtonWidget(),
                    ],
                  ),
                  BlocBuilder<TransactionManagementBloc,
                      TransactionManagementState>(
                    builder: (context, state) {
                      return state.isLoading
                          ? const LoaderView()
                          : _bodyView(context, state);
                    },
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
    // return BlocProvider(
    //   create: (context) => _transactionBloc
    //     ..add(TransactionManagementEvent.getTransactions(
    //         page: _transactionBloc.paginationPage.toString(),
    //         limit: _transactionBloc.limit,
    //         searchTerm: "",
    //         filterId: 0,
    //         userId: adminId ?? '')),
    //   child: _bodyView(),
    // );
  }

  CustomCard _bodyView(BuildContext context, TransactionManagementState state) {
    return CustomCard(
      shape: PR().roundedRectangleBorder(DBL.eighteen.val),
      elevation: DBL.seven.val,
      child: CustomContainer(
        padding: const EdgeInsets.all(20),
        child:
            BlocBuilder<TransactionManagementBloc, TransactionManagementState>(
          bloc: _transactionBloc,
          builder: (context, state) {
            return state.isLoading
                ? loaderView()
                : state.isError
                    ? ErrorView(isClientError: false, errorMessage: state.error)
                    : _transactionsView(context, state.response);
          },
        ),
      ),
    );
  }

  loaderView() {
    return CustomSizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CustomSizedBox(height: DBL.ten.val),
              CustomSizedBox(
                  height: 950,
                  child: Shimmer.fromColors(
                    // baseColor: Colors.grey[400]!,
                    // highlightColor: Colors.grey[300]!,
                    baseColor: AppColor.rowBackgroundColor.val,
                    highlightColor: AppColor.rowBackgroundColor.val,
                    child: CDataTable2(
                      minWidth: 950,
                      dividerThickness: 1.0,
                      headingRowHeight: 48,
                      dataRowHeight: 48,
                      columns: [
                        DataColumn2(
                          size: ColumnSize.S,
                          label: _columnsView(
                            text: AppString.slNo.val,
                          ),
                        ),
                        DataColumn2(
                          size: ColumnSize.M,
                          label: _columnsView(
                            text: AppString.transactionId.val,
                          ),
                        ),
                        // DataColumn2(
                        //   size: ColumnSize.L,
                        //   label: _columnsView(
                        //     text: AppString.serviceId.val,
                        //   ),
                        // ),
                        DataColumn2(
                          size: ColumnSize.M,
                          label: _columnsView(
                            text: AppString.transactionType.val,
                          ),
                        ),
                        DataColumn2(
                          size: ColumnSize.L,
                          label: _columnsView(text: AppString.paidFor.val),
                        ),
                        DataColumn2(
                          size: ColumnSize.L,
                          label: _columnsView(text: AppString.paidTo.val),
                        ),
                        DataColumn2(
                          size: ColumnSize.L,
                          label: _columnsView(
                            text: AppString.receivedFrom.val,
                          ),
                        ),
                        DataColumn2(
                          size: ColumnSize.S,
                          label: _columnsView(
                            text: AppString.amount.val,
                          ),
                        ),
                        DataColumn2(
                          size: ColumnSize.M,
                          label: _columnsView(
                            text: AppString.dateTime.val,
                          ),
                        ),
                        DataColumn2(
                          size: ColumnSize.S,
                          label: _columnsView(
                            text: AppString.status.val,
                          ),
                        ),
                      ],
                      rows: shimmerList.asMap().entries.map((e) {
                        setIndex(e.key);
                        return DataRow2(
                          cells: [
                            DataCell(_rowsView(
                                text: _transactionBloc.pageIndex.toString())),
                            DataCell(_rowsView(text: " ")),
                            DataCell(_rowsView(text: " ")),
                            DataCell(_rowsView(text: " ")),
                            DataCell(_rowsView(text: " ")),
                            DataCell(_rowsView(text: " ")),
                            DataCell(_rowsView(text: " ")),
                            DataCell(_rowsView(text: " ")),
                            DataCell(_rowsView(text: " ")),
                            DataCell(_rowsView(text: " ")),
                          ],
                        );
                      }).toList(),
                    ),
                  ))
            ]));
  }

  _clearAllFiltersButtonWidget() {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: CustomSizedBox(
        height: DBL.forty.val,
        child: CustomButton(
          onPressed: () {
            _page = 1;
            _searchController.clear();
            fromDateController.clear();
            toDateController.clear();
            setState(() {
              _transactionBloc.filterId = 0;

              _transactionBloc.selectedFromDate = '';
              _transactionBloc.selectedToDate = '';
            });

            _transactionBloc.add(TransactionManagementEvent.getTransactions(
                page: _transactionBloc.paginationPage.toString(),
                limit: _transactionBloc.limit,
                searchTerm: _searchController.text,
                userId: adminId ?? '',
                clientId: widget.clientId,
                statusId: 0,
                fromDate: _transactionBloc.selectedFromDate,
                toDate: _transactionBloc.selectedToDate));
          },
          text: AppString.clearFilters.val,
        ),
      ),
    );
  }

  _transactionsView(BuildContext context, TransactionListResponse? value) {
    if (value?.status ?? false) {
      if (value?.data?.transactions != null &&
          value!.data!.transactions!.isNotEmpty) {
        _transactionBloc.totalItems = value.data?.totalCount!.toInt() ?? 500;
      }
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            /*CustomText(
                    AppString.allTransactions.val,
                    softWrap: true,
                    style: TS().gRoboto(
                        fontSize: Responsive.isWeb(context)
                            ? DBL.nineteen.val
                            : DBL.sixteen.val,
                        fontWeight: FW.w500.val,
                        color: AppColor.black.val),
                    textAlign: TextAlign.start,
                  ),*/
          ],
        ),
        CustomSizedBox(height: DBL.fifteen.val),
        CustomSizedBox(
          height: (_transactionBloc.limit + 1) * 48,
          child: _transactionBloc.mUserList.isNotEmpty
              ? _usersTable()
              : const EmptyView(title: "No Transactions found!"),
        ),
        CustomSizedBox(height: DBL.twenty.val),
        _transactionBloc.mUserList.isNotEmpty
            ? _paginationView()
            : const SizedBox.shrink()
      ],
    );
  }

  Widget _rowsView({
    String? text,
  }) {
    return Tooltip(
      message: text,
      child: CustomText(
        '$text',
        softWrap: true,
        style: TS().gRoboto(
            fontSize: Responsive.isWeb(context)
                ? DBL.twelvePointFive.val
                : DBL.twelve.val,
            fontWeight: FW.w400.val,
            color: AppColor.rowColor.val),
        textAlign: TextAlign.start,
      ),
    );
  }

  Widget _columnsView(
      {String? text, FontWeight? fontWeight = FontWeight.w600}) {
    return CustomText(
      '$text',
      softWrap: true,
      style: TS().gRoboto(
          fontSize:
              Responsive.isWeb(context) ? DBL.fourteen.val : DBL.twelve.val,
          fontWeight: fontWeight,
          color: AppColor.columColor.val),
      textAlign: TextAlign.center,
    );
  }

  setIndex(int index) {
    if (_transactionBloc.paginationPage == 1) {
      _transactionBloc.pageIndex = index + 1;
    } else {
      _transactionBloc.pageIndex =
          ((_transactionBloc.paginationPage * _transactionBloc.limit) - 10) +
              index +
              1;
    }
  }

  _paginationView() {
    final int totalPages =
        (_transactionBloc.totalItems / _transactionBloc.limit).ceil();
    return BlocBuilder<TransactionManagementBloc, TransactionManagementState>(
      builder: (context, state) {
        updateData();
        return PaginationView(
            page: _transactionBloc.paginationPage,
            totalPages: totalPages,
            end: _transactionBloc.end,
            totalItems: _transactionBloc.totalItems,
            start: _transactionBloc.start,
            onNextPressed: () {
              if (_transactionBloc.paginationPage < totalPages) {
                _transactionBloc.paginationPage =
                    _transactionBloc.paginationPage + 1;
                _transactionBloc.add(TransactionManagementEvent.getTransactions(
                    page: _transactionBloc.paginationPage.toString(),
                    limit: _transactionBloc.limit,
                    searchTerm: _searchController.text,
                    userId: adminId ?? '',
                    clientId: widget.clientId,
                    statusId: _transactionBloc.filterId,
                    fromDate: _transactionBloc.selectedFromDate,
                    toDate: _transactionBloc.selectedToDate));
                updateData();
              }
            },
            onItemPressed: (i) {
              _transactionBloc.paginationPage = i;
              _transactionBloc.add(TransactionManagementEvent.getTransactions(
                  page: _transactionBloc.paginationPage.toString(),
                  limit: _transactionBloc.limit,
                  searchTerm: _searchController.text,
                  userId: adminId ?? '',
                  clientId: widget.clientId,
                  statusId: _transactionBloc.filterId,
                  fromDate: _transactionBloc.selectedFromDate,
                  toDate: _transactionBloc.selectedToDate));
              updateData();
            },
            onPreviousPressed: () {
              if (_transactionBloc.paginationPage > 1) {
                _transactionBloc.paginationPage =
                    _transactionBloc.paginationPage - 1;
                _transactionBloc.add(TransactionManagementEvent.getTransactions(
                    page: _transactionBloc.paginationPage.toString(),
                    limit: _transactionBloc.limit,
                    searchTerm: _transactionBloc.searchQuery,
                    userId: adminId ?? '',
                    clientId: widget.clientId,
                    statusId: _transactionBloc.filterId,
                    fromDate: _transactionBloc.selectedFromDate,
                    toDate: _transactionBloc.selectedToDate));
                updateData();
              }
            });
      },
    );
  }

  _usersTable() {
    return CSelectionArea(
      child: CDataTable2(
        minWidth: 1100,
        dividerThickness: .3,
        headingRowHeight: 48,
        dataRowHeight: 60,
        columns: [
          DataColumn2(
            size: ColumnSize.S,
            fixedWidth: 50,
            label: _columnsView(
                text: AppString.slNo.val, fontWeight: FontWeight.bold),
          ),
          DataColumn2(
            fixedWidth: Responsive.isWeb(context)
                ? MediaQuery.of(context).size.width * .09
                : 130,
            label: _columnsView(
                text: AppString.transactionId.val, fontWeight: FontWeight.bold),
          ),
          // DataColumn2(
          //   fixedWidth: Responsive.isWeb(context)
          //       ? MediaQuery.of(context).size.width * .08
          //       : 130,
          //   label: _columnsView(
          //       text: AppString.serviceId.val, fontWeight: FontWeight.bold),
          // ),
          DataColumn2(
            size: ColumnSize.L,
            label: _columnsView(
                text: AppString.transactionType.val,
                fontWeight: FontWeight.bold),
          ),
          DataColumn2(
            size: ColumnSize.M,
            label: _columnsView(
                text: AppString.paidFor.val, fontWeight: FontWeight.bold),
          ),
          DataColumn2(
            size: ColumnSize.M,
            label: _columnsView(
                text: AppString.paidTo.val, fontWeight: FontWeight.bold),
          ),
          DataColumn2(
            fixedWidth: Responsive.isWeb(context)
                ? MediaQuery.of(context).size.width * .1
                : 100,
            label: _columnsView(
                text: AppString.receivedFrom.val, fontWeight: FontWeight.bold),
          ),
          DataColumn2(
            size: ColumnSize.L,
            label: _columnsView(
                text: AppString.amount.val, fontWeight: FontWeight.bold),
          ),
          DataColumn2(
            fixedWidth: Responsive.isWeb(context)
                ? MediaQuery.of(context).size.width * .1
                : 95,
            label: _columnsView(
                text: AppString.dateTime.val, fontWeight: FontWeight.bold),
          ),
          DataColumn2(
            fixedWidth: Responsive.isWeb(context)
                ? MediaQuery.of(context).size.width * .07
                : 100,
            label: _columnsView(
                text: AppString.status.val, fontWeight: FontWeight.bold),
          ),
          DataColumn2(label: Container())
        ],
        rows: _transactionBloc.mUserList.asMap().entries.map((e) {
          setIndex(e.key);
          var item = e.value;
          return DataRow2(
            onTap: () {
              _transactionDetails(item);
            },
            cells: [
              DataCell(_rowsView(
                text: _transactionBloc.pageIndex.toString(),
              )),
              DataCell(_rowsView(
                text: item.transactionIdPublic.toString(),
              )),
              // DataCell(_rowsView(text: item.serviceIdPublic.toString())),
              DataCell(_rowsView(text: item.transactionType)),
              DataCell(_rowsView(text: item.paidFor)),
              DataCell(_rowsView(text: item.paidTo)),
              DataCell(_rowsView(text: item.receivedFrom)),

              DataCell(_rowsView(
                  text:
                      '\$${Utility.formatAmount(double.tryParse(item.amount?.replaceAll('\$', "") ?? "0.0") ?? 0.0)}')),
              DataCell(_rowsView(
                  text: _transactionBloc.formatDateToMonthName(
                      item.dateTime ?? "0000-00-00T00:00:00.000Z"))),
              DataCell(_statusBox(item)),
              DataCell(TableActions(
                isView: true, //SharedPreffUtil().getViewTransaction,
                onViewTap: () {
                  _transactionDetails(item);
                },
              ))
            ],
          );
        }).toList(),
      ),
    );
  }

  bool isXs(context) => MediaQuery.of(context).size.width <= 820;

  void updateData() {
    if (_transactionBloc.paginationPage == 1) {
      _transactionBloc.start = 0;
      _transactionBloc.end =
          _transactionBloc.mUserList.length < _transactionBloc.limit
              ? _transactionBloc.mUserList.length
              : _transactionBloc.limit;
    } else {
      _transactionBloc.start =
          (_transactionBloc.paginationPage * _transactionBloc.limit) - 10;

      if ((_transactionBloc.limit * _transactionBloc.paginationPage) >
          _transactionBloc.totalItems) {
        _transactionBloc.end = _transactionBloc.totalItems;
      } else {
        _transactionBloc.end =
            _transactionBloc.start + _transactionBloc.mUserList.length;
      }
    }
    SharedPreffUtil().setPage = _transactionBloc.paginationPage;
  }

  _statusBox(Transactions item) {
    return CustomStatusWidget(
        statusName: item.status!.name ?? "",
        isCompleted: item.status!.id == 2 ? true : false,
        isInitiated: item.status!.id == 1 ? true : false);
  }

  _transactionDetails(Transactions item) {
    debugPrint('service id on demand ${item.serviceId}');
    debugPrint('transaction id on demand ${item.transactionId}');
    _transactionBloc.add(TransactionManagementEvent.getTransactionDetails(
        transactionId: item.transactionId ?? "",
        serviceId: item.serviceId ?? ''));
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CustomAlertDialogWidget(
          heading: AppString.transactionManagement.val,
          child: TransactionDetailsAlert(transactionBloc: _transactionBloc),
        );
      },
    );
  }

  _filterLoader() {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(left: DBL.fifteen.val),
      width: DBL.twoTen.val,
      height: DBL.forty.val,
      decoration: BoxDecoration(
          border: Border.all(color: AppColor.borderColor.val),
          borderRadius: BorderRadius.circular(DBL.five.val)),
      child: CustomText(
        AppString.filter.val,
        style: TS().gRoboto(
            fontWeight: FW.w500.val,
            fontSize: FS.font15.val,
            color: AppColor.columColor2.val),
      ),
    );
  }

  CustomDropdown<int> _statusDropDown(BuildContext context) {
    return CustomDropdown<int>(
      onChange: (int value, int index) {
        CustomLog.log(value.toString());
        _transactionBloc.filterId = value;
        _transactionBloc.paginationPage = 1;
        _transactionBloc.add(TransactionManagementEvent.getTransactions(
            page: _transactionBloc.paginationPage.toString(),
            limit: _transactionBloc.limit,
            searchTerm: _searchController.text,
            userId: adminId ?? '',
            clientId: widget.clientId,
            statusId: _transactionBloc.filterId,
            fromDate: _transactionBloc.selectedFromDate,
            toDate: _transactionBloc.selectedToDate));
      },
      dropdownButtonStyle: DropdownButtonStyle(
        mainAxisAlignment: MainAxisAlignment.start,
        width: DBL.twoTen.val,
        height: Responsive.isMobile(context)
            ? DBL.fortyFive.val
            : DBL.fortyEight.val,
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
      items: ["Initiated", "Successful", "unsuccessful"]
          .asMap()
          .entries
          .map(
            (item) => DropdownItem<int>(
              value: item.key + 1,
              child: Padding(
                padding: EdgeInsets.all(DBL.eight.val),
                child: Text(
                  item.value ?? "",
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
        AppString.filter.val,
        style: TS().gRoboto(
            fontWeight: FW.w500.val,
            fontSize: FS.font15.val,
            color: AppColor.columColor2.val),
      ),
    );
  }

  CustomShimmerWidget _shimmerForFilterWidgets({double? width}) {
    return CustomShimmerWidget.rectangular(
      height: DBL.fortySeven.val,
      width: width ?? DBL.twoTen.val,
      baseColor: AppColor.rowBackgroundColor.val,
      highlightColor: AppColor.lightGrey.val,
    );
  }

  Future<void> _selectFromDate(
      BuildContext context, TransactionManagementState state) async {
    final DateTime now = DateTime.now();
    showDatePicker(
            context: context,
            initialDate: _transactionBloc.selectedToDateTime ?? now,
            firstDate: _transactionBloc.selectedToDateTime
                    ?.subtract(const Duration(days: 1825)) ??
                DateTime(DateTime.now().year - 5),
            lastDate: _transactionBloc.selectedToDateTime ??
                DateTime(DateTime.now().year + 5))
        .then((value) {
      if (value != null) {
        _transactionBloc.selectedFromDate =
            value.toString().parseWithFormat(dateFormat: AppString.ddMMYYY.val);
        _transactionBloc.selectedFromDateTime = value;
        if (_transactionBloc.selectedFromDate.isNotEmpty &&
            _transactionBloc.selectedToDate.isNotEmpty) {
          _page = 1;
          _transactionBloc.add(TransactionManagementEvent.getTransactions(
              page: _transactionBloc.paginationPage.toString(),
              limit: _transactionBloc.limit,
              searchTerm: _searchController.text,
              userId: adminId ?? '',
              clientId: widget.clientId,
              statusId: _transactionBloc.filterId,
              fromDate: _transactionBloc.selectedFromDate,
              toDate: _transactionBloc.selectedToDate));
        }
        fromDateController.text =
            Utility.detailDate(DateTime.parse(value.toString()));
        FocusScope.of(context).unfocus();
      }
    });
  }

  Future<void> _selectToDate(
      BuildContext context, TransactionManagementState state) async {
    final DateTime now = DateTime.now();
    showDatePicker(
            context: context,
            initialDate: _transactionBloc.selectedToDateTime ?? now,
            firstDate: _transactionBloc.selectedFromDateTime,
            lastDate: DateTime(DateTime.now().year + 5))
        .then((value) {
      if (value != null) {
        _transactionBloc.selectedToDateTime = value;
        _transactionBloc.selectedToDate =
            value.toString().parseWithFormat(dateFormat: AppString.ddMMYYY.val);
        if (_transactionBloc.selectedFromDate.isNotEmpty &&
            _transactionBloc.selectedToDate.isNotEmpty) {
          _page = 1;
          _transactionBloc.add(TransactionManagementEvent.getTransactions(
              page: _transactionBloc.paginationPage.toString(),
              limit: _transactionBloc.limit,
              searchTerm: _searchController.text,
              userId: adminId ?? '',
              clientId: widget.clientId,
              statusId: _transactionBloc.filterId,
              fromDate: _transactionBloc.selectedFromDate,
              toDate: _transactionBloc.selectedToDate));
        }
        toDateController.text =
            Utility.detailDate(DateTime.parse(value.toString()));
        FocusScope.of(context).unfocus();
        debugPrint("toDatesss ${toDateController.text}");
      }
    });
  }

  CTextField _buildDatePicker(TransactionManagementState state,
      TextEditingController controller, String hintText, Function() onTap) {
    return CTextField(
      width: DBL.twoTen.val,
      height: DBL.fortySeven.val,
      hintStyle: TS().gRoboto(
          fontWeight: FW.w400.val,
          fontSize: FS.font14.val,
          color: AppColor.columColor2.val),
      textColor: AppColor.columColor2.val,
      hintText: hintText,
      isReadOnly: true,
      controller: controller,
      validator: (value) {
        if (value!.isEmpty) {
          return AppString.emptyDate.val;
        }
        return null;
      },
      onTap: onTap,
      onChanged: (val) {},
      textInputAction: TextInputAction.next,
      keyBoardType: TextInputType.text,
      suffixIcon: CustomSvg(
        width: DBL.twentyFive.val,
        height: DBL.twentyFive.val,
        path: IMG.calenderOutLine.val,
      ),
    );
  }
}
