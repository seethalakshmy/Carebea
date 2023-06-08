import 'package:admin_580_tech/domain/transaction_management/model/transaction_response.dart';
import 'package:admin_580_tech/domain/transaction_management/model/transactions.dart';
import 'package:admin_580_tech/infrastructure/transaction_management/transactions_repository.dart';
import 'package:admin_580_tech/presentation/menu_bar/menu_bar_view.dart';
import 'package:admin_580_tech/presentation/transaction_management/widgets/CustomAlertDialog.dart';
import 'package:admin_580_tech/presentation/transaction_management/widgets/custom_status_widget.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

import '../../application/bloc/transaction_management/transaction_management_bloc.dart';
import '../../core/enum.dart';
import '../../core/properties.dart';
import '../../core/responsive.dart';
import '../../core/text_styles.dart';
import '../widget/custom_card.dart';
import '../widget/custom_container.dart';
import '../widget/custom_data_table_2.dart';
import '../widget/custom_selection_area.dart';
import '../widget/custom_sizedbox.dart';
import '../widget/custom_svg.dart';
import '../widget/custom_text.dart';
import '../widget/custom_text_field.dart';
import '../widget/empty_view.dart';
import '../widget/error_view.dart';
import '../widget/header_view.dart';
import '../widget/pagination_view.dart';

class TransactionManagementPage extends StatefulWidget {
  const TransactionManagementPage({Key? key}) : super(key: key);

  @override
  State<TransactionManagementPage> createState() =>
      _TransactionManagementPageState();
}

class _TransactionManagementPageState extends State<TransactionManagementPage> {
  late TransactionManagementBloc _transactionBloc;

  List<int> shimmerList = List.generate(10, (index) => (index));
  List<Transactions> mUserList = [];

  int _totalItems = 1;
  int _page = 1;
  final int _limit = 10;
  int pageIndex = 0;
  int _start = 0;
  int _end = 10;

  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _transactionBloc = TransactionManagementBloc(TransactionsRepository());
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderView(title: AppString.transaction.val),
        CustomSizedBox(height: DBL.twenty.val),
        BlocProvider(
          create: (context) => _transactionBloc
            ..add(TransactionManagementEvent.getTransactions(
                page: _page, limit: _limit)),
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
                            DataCell(_rowsView(text: pageIndex.toString())),
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

  _transactionsView(BuildContext context, TransactionResponse? value) {
    if (value?.status ?? false) {
      if (value?.data?.transactions != null &&
          value!.data!.transactions!.isNotEmpty) {
        _totalItems = value.data?.pagination?.totals ?? 500;
        mUserList.clear();
        mUserList.addAll(value.data?.transactions ?? []);
      }
    }
    return mUserList.isNotEmpty
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText3(
                    AppString.allTransactions.val,
                    softWrap: true,
                    style: TS().gRoboto(
                        fontSize: Responsive.isWeb(context)
                            ? DBL.nineteen.val
                            : DBL.sixteen.val,
                        fontWeight: FW.w500.val,
                        color: AppColor.black.val),
                    textAlign: TextAlign.start,
                  ),

                  CTextField(
                    width: DBL.threeFifteen.val,
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
                  // CustomSizedBox(width: DBL.ten.val,),
                  // FxButton(
                  //   onPressed: () {},
                  //   text: AppString.create.val,
                  //   color: AppColor.primaryColor.val,
                  //   height: DBL.fifty.val,
                  //   borderRadius: DBL.five.val,
                  //     padding:  EdgeInsets.symmetric(horizontal: DBL.twentyTwo.val, vertical: DBL.ten.val),
                  //   textStyle: TS().gRoboto(color: AppColor.white.val,fontWeight: FW.w500.val),
                  //   icon:CustomIcon(icon: Icons.add,size: DBL.twenty.val,color: AppColor.white.val,)
                  // ),
                ],
              ),
              CustomSizedBox(height: DBL.fifteen.val),
              CustomSizedBox(
                height: (_limit + 1) * 48,
                child: _usersTable(),
              ),
              CustomSizedBox(height: DBL.twenty.val),
              isXs(context)
                  ? SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: _bottomView(),
                    )
                  : _bottomView()
            ],
          )
        : const EmptyView(title: "No Transactions found!");
  }

  Widget _rowsView({
    String? text,
  }) {
    return CustomText3(
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
    return CustomText3(
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
    if (_page == 1) {
      pageIndex = index + 1;
    } else {
      pageIndex = ((_page * _limit) - 10) + index + 1;
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
        rows: mUserList.asMap().entries.map((e) {
          setIndex(e.key);
          var item = e.value;
          return DataRow2(
            cells: [
              DataCell(_rowsView(
                text: pageIndex.toString(),
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
              DataCell(_rowsView(text: item.dateTime)),
              DataCell(_statusBox(
                  item.status!.toLowerCase() == "completed" ? true : false)),
              DataCell(Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                      onTap: () {
                       // autoTabRouter!.setActiveIndex(5);
                        _transactionDetails();
                      },
                      child: CustomSvg(
                        path: IMG.eye.val,
                        height: Responsive.isWeb(context)
                            ? DBL.fifteen.val
                            : DBL.twelve.val,
                        width: Responsive.isWeb(context)
                            ? DBL.twenty.val
                            : DBL.eighteen.val,
                      )),
                ],
              ))
              /*DataCell(Row(
                mainAxisAlignment: MainAxisAlignment.end,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {},
                      child: CustomSvg(
                        path: IMG.eye.val,
                        height: Responsive.isWeb(context)
                            ? DBL.fifteen.val
                            : DBL.twelve.val,
                        width: Responsive.isWeb(context)
                            ? DBL.twenty.val
                            : DBL.eighteen.val,
                      )),
                  CustomSizedBox(
                    width: DBL.twentyThree.val,
                  ),
                  InkWell(
                      onTap: () {},
                      child: CustomSvg(
                        path: IMG.refresh.val,
                        height: Responsive.isWeb(context)
                            ? DBL.fifteen.val
                            : DBL.twelve.val,
                        width: Responsive.isWeb(context)
                            ? DBL.twenty.val
                            : DBL.eighteen.val,
                      )),
                  CustomSizedBox(
                    width: DBL.twentyThree.val,
                  ),
                  InkWell(
                      onTap: () {},
                      child: CustomSvg(
                        path: IMG.edit.val,
                        height: Responsive.isWeb(context)
                            ? DBL.fifteen.val
                            : DBL.twelve.val,
                        width: Responsive.isWeb(context)
                            ? DBL.fifteen.val
                            : DBL.twelve.val,
                      )),
                ],
              )),*/
            ],
          );
        }).toList(),
      ),
    );
  }

  bool isXs(context) => MediaQuery.of(context).size.width <= 820;

  Row _bottomView() {
    final int totalPages = (_totalItems / _limit).ceil();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        PaginationView(
            page: _page,
            totalPages: totalPages,
            onNextPressed: () {
              if (_page < totalPages) {
                _page = _page + 1;
                _transactionBloc.add(TransactionManagementEvent.getTransactions(
                    page: _page, limit: _limit));
                updateData();
              }
            },
            onItemPressed: (i) {
              _page = i;
              _transactionBloc.add(TransactionManagementEvent.getTransactions(
                  page: _page, limit: _limit));
              updateData();
            },
            onPreviousPressed: () {
              if (_page > 1) {
                _page = _page - 1;
                _transactionBloc.add(TransactionManagementEvent.getTransactions(
                    page: _page, limit: _limit));
                updateData();
              }
            }),
        CustomText3("Showing ${_start + 1} to $_end of $_totalItems entries"),
      ],
    );
  }

  void updateData() {
    if (_page == 1) {
      _start = 0;
      _end = mUserList.length < _limit ? mUserList.length : _limit;
    } else {
      _start = (_page * _limit) - 10;
      _end = _start + (mUserList.length < _limit ? mUserList.length : _limit);
      _end = _end < mUserList.length ? _end : mUserList.length;
    }
  }

  _statusBox(bool isCompleted) {
    return CustomStatusWidget(isCompleted: isCompleted);
  }
  _transactionDetails(){
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return  CustomAlertDialog();
      },
    );
  }
}
