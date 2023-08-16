import 'package:admin_580_tech/infrastructure/transaction_management/transactions_repository.dart';
import 'package:admin_580_tech/presentation/transaction_management/widgets/custom_status_widget.dart';
import 'package:admin_580_tech/presentation/transaction_management/widgets/transaction_details_alert.dart';
import 'package:auto_route/auto_route.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

import '../../application/bloc/transaction_management/transaction_management_bloc.dart';
import '../../core/custom_debugger.dart';
import '../../core/enum.dart';
import '../../core/properties.dart';
import '../../core/responsive.dart';
import '../../core/text_styles.dart';
import '../../domain/transaction_management/model/transaction_list_response.dart';
import '../../infrastructure/shared_preference/shared_preff_util.dart';
import '../widget/custom_alert_dialog_widget.dart';
import '../widget/custom_card.dart';
import '../widget/custom_container.dart';
import '../widget/custom_data_table_2.dart';
import '../widget/custom_dropdown.dart';
import '../widget/custom_selection_area.dart';
import '../widget/custom_sizedbox.dart';
import '../widget/custom_svg.dart';
import '../widget/custom_text.dart';
import '../widget/custom_text_field.dart';
import '../widget/empty_view.dart';
import '../widget/error_view.dart';
import '../widget/header_view.dart';
import '../widget/pagination_view.dart';
import '../widget/table_actions_view.dart';

@RoutePage()
class TransactionManagementPage extends StatefulWidget {
  const TransactionManagementPage({Key? key}) : super(key: key);

  @override
  State<TransactionManagementPage> createState() =>
      _TransactionManagementPageState();
}

class _TransactionManagementPageState extends State<TransactionManagementPage> {
  late TransactionManagementBloc _transactionBloc;

  List<int> shimmerList = List.generate(10, (index) => (index));

  final TextEditingController _searchController = TextEditingController();

  SharedPreffUtil sharedPrefUtil = SharedPreffUtil();

  @override
  void initState() {
    super.initState();
    _transactionBloc = TransactionManagementBloc(TransactionsRepository());
    _transactionBloc.add(const TransactionManagementEvent.getFilters());
    _transactionBloc.add(TransactionManagementEvent.getTransactions(
        page: _transactionBloc.paginationPage.toString(),
        limit: _transactionBloc.limit,
        searchTerm: "",
        filterId: 0));
    if (sharedPrefUtil.getPage != 0) {
      _transactionBloc.paginationPage = sharedPrefUtil.getPage;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderView(title: AppString.transaction.val),
        CustomSizedBox(height: DBL.twenty.val),
        BlocProvider(
          create: (context) => _transactionBloc,
          child: _bodyView(),
        ),
      ],
    );
  }

  CustomCard _bodyView() {
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
                          size: ColumnSize.S,
                          label: _columnsView(
                            text: AppString.transactionId.val,
                          ),
                        ),
                        DataColumn2(
                          size: ColumnSize.L,
                          label: _columnsView(
                            text: AppString.serviceId.val,
                          ),
                        ),
                        DataColumn2(
                          size: ColumnSize.L,
                          // fixedWidth: 500,
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
                          size: ColumnSize.L,
                          label: _columnsView(
                            text: AppString.amount.val,
                          ),
                        ),
                        DataColumn2(
                          size: ColumnSize.L,
                          label: _columnsView(
                            text: AppString.dateTime.val,
                          ),
                        ),
                        DataColumn2(
                          size: ColumnSize.L,
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

  _transactionsView(BuildContext context, TransactionListResponse? value) {
    if (value?.status ?? false) {
      if (value?.data?.transactions != null &&
          value!.data!.transactions!.isNotEmpty) {
        _transactionBloc.totalItems = value.data?.totalCount!.toInt() ?? 500;
      }
    }
    return _transactionBloc.mUserList.isNotEmpty
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _transactionBloc.state.isInitialLoading
                      ? _filterLoader()
                      : _statusDropDown(context),
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
                  CTextField(
                    onChanged: (val) {
                      print("searched value : $val");
                      _transactionBloc.searchQuery = val;
                      _transactionBloc.add(
                          TransactionManagementEvent.getTransactions(
                              page: "1",
                              limit: _transactionBloc.limit,
                              filterId: _transactionBloc.filterId,
                              searchTerm: val));
                    },
                    width: Responsive.isWeb(context)
                        ? DBL.threeFifteen.val
                        : DBL.twoForty.val,
                    height: DBL.forty.val,
                    controller: _searchController,
                    hintText: AppString.search.val,
                    hintStyle: TS().gRoboto(
                        fontSize: FS.font15.val, fontWeight: FW.w500.val),
                    suffixIcon: CustomSvg(
                      path: IMG.search.val,
                      height: 16,
                      width: 16,
                    ),
                  ),
                ],
              ),
              CustomSizedBox(height: DBL.fifteen.val),
              CustomSizedBox(
                height: (_transactionBloc.limit + 1) * 48,
                child: _usersTable(),
              ),
              CustomSizedBox(height: DBL.twenty.val),
              _paginationView()
            ],
          )
        : const EmptyView(title: "No Transactions found!");
  }

  Widget _rowsView({
    String? text,
  }) {
    return CustomText(
      '$text',
      softWrap: true,
      style: TS().gRoboto(
          fontSize: Responsive.isWeb(context)
              ? DBL.twelvePointFive.val
              : DBL.twelve.val,
          fontWeight: FW.w400.val,
          color: AppColor.rowColor.val),
      textAlign: TextAlign.start,
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
          DataColumn2(
            fixedWidth: Responsive.isWeb(context)
                ? MediaQuery.of(context).size.width * .08
                : 130,
            label: _columnsView(
                text: AppString.serviceId.val, fontWeight: FontWeight.bold),
          ),
          DataColumn2(
            fixedWidth: Responsive.isWeb(context)
                ? MediaQuery.of(context).size.width * .08
                : 110,
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
            cells: [
              DataCell(_rowsView(
                text: _transactionBloc.pageIndex.toString(),
              )),
              DataCell(_rowsView(
                text: item.transactionId.toString(),
              )),
              DataCell(_rowsView(text: item.serviceId.toString())),
              DataCell(_rowsView(text: item.transactionType)),
              DataCell(_rowsView(text: item.paidFor)),
              DataCell(_rowsView(text: item.paidTo)),
              DataCell(_rowsView(text: item.receivedFrom)),
              DataCell(_rowsView(text: item.amount)),
              DataCell(_rowsView(
                  text: _transactionBloc.formatDate(
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

  _paginationView() {
    final int totalPages =
        (_transactionBloc.totalItems / _transactionBloc.limit).ceil();
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
            updateData();
            _transactionBloc.add(TransactionManagementEvent.getTransactions(
                page: _transactionBloc.paginationPage.toString(),
                limit: _transactionBloc.limit,
                filterId: _transactionBloc.filterId,
                searchTerm: _transactionBloc.searchQuery));
          }
        },
        onItemPressed: (i) {
          _transactionBloc.paginationPage = i;
          updateData();
          _transactionBloc.add(TransactionManagementEvent.getTransactions(
              page: _transactionBloc.paginationPage.toString(),
              limit: _transactionBloc.limit,
              filterId: _transactionBloc.filterId,
              searchTerm: _transactionBloc.searchQuery));
        },
        onPreviousPressed: () {
          if (_transactionBloc.paginationPage > 1) {
            _transactionBloc.paginationPage =
                _transactionBloc.paginationPage - 1;
            updateData();
            _transactionBloc.add(TransactionManagementEvent.getTransactions(
                page: _transactionBloc.paginationPage.toString(),
                limit: _transactionBloc.limit,
                filterId: _transactionBloc.filterId,
                searchTerm: _transactionBloc.searchQuery));
          }
        });
  }

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
      isCompleted: item.status!.id == 1 || item.status!.id == 2 ? true : false,
    );
  }

  _transactionDetails(Transactions item) {
    _transactionBloc.add(TransactionManagementEvent.getTransactionDetails(
        transactionId: item.id ?? ""));
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
        _transactionBloc.add(TransactionManagementEvent.getTransactions(
            page: "1",
            limit: _transactionBloc.limit,
            searchTerm: _transactionBloc.searchQuery,
            filterId: value));
      },
      dropdownButtonStyle: DropdownButtonStyle(
        mainAxisAlignment: MainAxisAlignment.start,
        width: DBL.twoTen.val,
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
      items: _transactionBloc.filterList
          .asMap()
          .entries
          .map(
            (item) => DropdownItem<int>(
              value: int.parse(item.value.filterId!),
              child: Padding(
                padding: EdgeInsets.all(DBL.eight.val),
                child: Text(
                  item.value.title ?? "",
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
}
