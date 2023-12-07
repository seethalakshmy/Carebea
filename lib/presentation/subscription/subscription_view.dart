import 'package:admin_580_tech/application/bloc/subscription/subscription_bloc.dart';
import 'package:admin_580_tech/infrastructure/subscription/subscription_repository.dart';
import 'package:admin_580_tech/presentation/subscription/subscription_details_view.dart';
import 'package:auto_route/annotations.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/enum.dart';
import '../../core/properties.dart';
import '../../core/responsive.dart';
import '../../core/text_styles.dart';
import '../../core/utility.dart';
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
import '../widget/table_loader_view.dart';

@RoutePage()
class SubscriptionPage extends StatefulWidget {
  const SubscriptionPage({Key? key}) : super(key: key);

  @override
  State<SubscriptionPage> createState() => _SubscriptionPageState();
}

class _SubscriptionPageState extends State<SubscriptionPage> {
  late SubscriptionBloc _subscriptionBloc;

  List<int> shimmerList = List.generate(10, (index) => (index));
  int _totalItems = 1;
  int _page = 1;
  final int _limit = 10;
  int pageIndex = 0;
  int _start = 0;
  int _end = 10;
  final TextEditingController _searchController = TextEditingController();
  String userId = SharedPreffUtil().getAdminId;

  @override
  void initState() {
    super.initState();
    _subscriptionBloc = SubscriptionBloc(SubscriptionRepository());
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        HeaderView(title: AppString.subscription.val),
        BlocProvider(
          create: (context) => _subscriptionBloc,
          child: _reBuildView(),
        ),
      ],
    );
  }

  //
  BlocProvider<SubscriptionBloc> _reBuildView() {
    return BlocProvider(
      create: (context) => _subscriptionBloc
        ..add(SubscriptionEvent.getSubscription(
            userId: userId,
            page: _page.toString(),
            limit: _limit.toString(),
            searchTerm: _searchController.text.trim(),
            subscriptionType: null)),
      child: _bodyView(),
    );
  }

  Column _bodyView() {
    return Column(
      children: [
        CustomSizedBox(height: DBL.twenty.val),
        CustomCard(
          shape: PR().roundedRectangleBorder(DBL.eighteen.val),
          elevation: DBL.seven.val,
          child: CustomContainer(
            padding: EdgeInsets.all(DBL.twenty.val),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    _statusDropDown(context),
                    Spacer(),
                    _searchField(),
                  ],
                ),
                BlocBuilder<SubscriptionBloc, SubscriptionState>(
                  builder: (context, state) {
                    return state.isLoading
                        ? const TableLoaderView()
                        : state.isError
                            ? ErrorView(
                                isClientError: false, errorMessage: state.error)
                            : _usersView(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  _usersView(BuildContext context) {
    // if (_searchController.text != '' || _subscriptionBloc.filterId != 0) {
    //   debugPrint('builddddd');
    //
    //   _page = 1;
    // }
    if (_page == 1) {
      _start = 0;
      _end = _subscriptionBloc.subscriptionList.length < _limit
          ? _subscriptionBloc.subscriptionList.length
          : _limit;
      debugPrint("end $_end");
      debugPrint("length ${_subscriptionBloc.subscriptionList.length}");
      debugPrint("limit $_limit");
    } else {
      _start = (_page * _limit) - 10;
      _end = _start + _subscriptionBloc.subscriptionList.length;
      debugPrint("end $_end");
      debugPrint("length ${_subscriptionBloc.subscriptionList.length}");
      debugPrint("limit $_limit");
    }
    return _subscriptionBloc.subscriptionList.isNotEmpty
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [],
              ),
              CustomSizedBox(height: DBL.fifteen.val),
              CustomSizedBox(
                height: (_limit + 1) * 48,
                child: _usersTable(),
              ),
              CustomSizedBox(height: DBL.twenty.val),
              _paginationView()
            ],
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     _statusDropDown(context),
              //     _searchField(),
              //   ],
              // ),
              EmptyView(title: AppString.noUsersFound.val),
            ],
          );
  }

  CTextField _searchField() {
    return CTextField(
      width: DBL.threeFifteen.val,
      height: DBL.forty.val,
      controller: _searchController,
      hintText: AppString.search.val,
      hintStyle: TS().gRoboto(fontSize: FS.font15.val, fontWeight: FW.w500.val),
      onSubmitted: (String val) {
        _page = 1;
        _getSubscriptionEvent();
      },
      onChanged: (String value) {
        if (_searchController.text == '') {
          _getSubscriptionEvent();
        }
      },
      suffixIcon: InkWell(
        onTap: () {
          _getSubscriptionEvent();
        },
        child: CustomSvg(
          path: IMG.search.val,
          height: DBL.sixteen.val,
          width: DBL.sixteen.val,
        ),
      ),
    );
  }

  void _getSubscriptionEvent() {
    _subscriptionBloc.add(SubscriptionEvent.getSubscription(
        userId: userId,
        page: _page.toString(),
        limit: _limit.toString(),
        searchTerm: _searchController.text.trim(),
        subscriptionType: _subscriptionBloc.filterId == 0
            ? null
            : _subscriptionBloc.filterId.toString()));
  }

  CustomDropdown<int> _statusDropDown(BuildContext context) {
    return CustomDropdown<int>(
      onChange: (int value, int index) {
        debugPrint('value $value');
        debugPrint('index $index');
        _page = 1;
        _subscriptionBloc.filterId = index;
        _subscriptionBloc.add(SubscriptionEvent.getSubscription(
            userId: userId,
            page: _page.toString(),
            limit: _limit.toString(),
            searchTerm: _searchController.text.trim(),
            subscriptionType: _subscriptionBloc.filterId == 0
                ? null
                : _subscriptionBloc.filterId.toString()));
      },
      dropdownButtonStyle: DropdownButtonStyle(
        mainAxisAlignment: MainAxisAlignment.start,
        width: DBL.oneEighty.val,
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
        AppString.all.val,
        AppString.monthly.val,
        AppString.semiAnnually.val,
        AppString.annually.val,
      ]
          .asMap()
          .entries
          .map(
            (item) => DropdownItem<int>(
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
        AppString.subscriptionType.val,
        style: TS().gRoboto(
            fontWeight: FW.w500.val,
            fontSize: FS.font15.val,
            color: AppColor.columColor2.val),
      ),
    );
  }

  _paginationView() {
    _totalItems = _subscriptionBloc.paginationList[0].totals!.toInt();
    final int totalPages = (_totalItems / _limit).ceil();
    return PaginationView(
        page: _page,
        totalPages: totalPages,
        end: _end,
        totalItems: _totalItems,
        start: _start,
        onNextPressed: () {
          if (_page < totalPages) {
            _page = _page + 1;
            _getSubscriptionEvent();
            updateData();
          }
        },
        onItemPressed: (i) {
          _page = i;
          _getSubscriptionEvent();
          updateData();
        },
        onPreviousPressed: () {
          if (_page > 1) {
            _page = _page - 1;
            _getSubscriptionEvent();
            updateData();
          }
        });
  }

  _usersTable() {
    return CSelectionArea(
      child: CDataTable2(
        minWidth: 1200,
        dividerThickness: .3,
        headingRowHeight: DBL.fiftyFive.val,
        dataRowHeight: DBL.sixty.val,
        columns: [
          DataColumn2(
            //size: ColumnSize.S,
            fixedWidth: DBL.fifty.val,
            label: _columnsView(
                text: AppString.slNo.val, fontWeight: FontWeight.bold),
          ),
          DataColumn2(
            //size: ColumnSize.L,
            // fixedWidth: DBL.hundred.val,
            label: _columnsView(
                text: AppString.careRecipientName.val,
                fontWeight: FontWeight.bold),
          ),
          DataColumn2(
            //size: ColumnSize.L,
            /* fixedWidth: Responsive.isWeb(context)
                ? MediaQuery.of(context).size.width / 8
                : DBL.hundred.val,*/
            label: _columnsView(
                text: AppString.startDateTime.val, fontWeight: FontWeight.bold),
          ),
          DataColumn2(
            //size: ColumnSize.L,
            /* fixedWidth: Responsive.isWeb(context)
                ? MediaQuery.of(context).size.width / 8
                : DBL.hundred.val,*/
            label: _columnsView(
                text: AppString.endDateAndTime.val,
                fontWeight: FontWeight.bold),
          ),
          // DataColumn2(
          //   //size: ColumnSize.L,
          //   // fixedWidth: DBL.hundred.val,
          //   label: _columnsView(
          //       text: AppString.email.val, fontWeight: FontWeight.bold),
          // ),
          DataColumn2(
            //size: ColumnSize.L,
            //fixedWidth: DBL.hundred.val,
            label: _columnsView(
                text: AppString.subscription.val, fontWeight: FontWeight.bold),
          ),
          DataColumn2(
            label: const CustomText(""),
          ),
        ],
        rows: _subscriptionBloc.subscriptionList.asMap().entries.map((e) {
          setIndex(e.key);
          var item = e.value;
          return DataRow2(
            cells: [
              DataCell(_rowsView(
                text: pageIndex.toString(),
              )),
              DataCell(_rowsView(
                text: '${item.name?.firstName} ${item.name?.lastName}',
              )),
              DataCell(_rowsView(
                  text: Utility.serviceDate(
                DateTime.parse(item.subscriptionDetails?.startedAt ?? "")
                    .toLocal(),
              ))),
              DataCell(_rowsView(
                text: Utility.serviceDate(
                  DateTime.parse(item.subscriptionDetails?.expiry ?? "")
                      .toLocal(),
                ),
              )),
              // DataCell(_rowsView(text: item.email ?? "")),
              DataCell(_rowsView(
                  text: item.subscriptionDetails?.type == '1'
                      ? 'Monthly'
                      : item.subscriptionDetails?.type == '2'
                          ? 'Semi Annual'
                          : "Annually")),

              // DataCell(_statusBox(item.status)),
              DataCell(Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return CustomAlertDialogWidget(
                              heading: AppString.subscriptionDetails.val,
                              child: SizedBox(
                                  height: MediaQuery.of(context).size.height,
                                  width: MediaQuery.of(context).size.width,
                                  child: SubscriptionDetailScreen(item: item)),
                            );
                          },
                        );
                        // autoTabRouter!.navigate(SupportTicketsDetailRoute(
                        //     complaintId: item.id ?? ""));
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
                  CustomSizedBox(
                    width: DBL.twentyThree.val,
                  ),
                  // InkWell(
                  //     onTap: () {},
                  //     child: CustomSvg(
                  //       path: IMG.refresh.val,
                  //       height: Responsive.isWeb(context)
                  //           ? DBL.fifteen.val
                  //           : DBL.twelve.val,
                  //       width: Responsive.isWeb(context)
                  //           ? DBL.twenty.val
                  //           : DBL.eighteen.val,
                  //     )),
                  CustomSizedBox(
                    width: DBL.twentyThree.val,
                  ),
                  // InkWell(
                  //     onTap: () {},
                  //     child: CustomSvg(
                  //       path: IMG.edit.val,
                  //       height: Responsive.isWeb(context)
                  //           ? DBL.fifteen.val
                  //           : DBL.twelve.val,
                  //       width: Responsive.isWeb(context)
                  //           ? DBL.fifteen.val
                  //           : DBL.twelve.val,
                  //     )),
                ],
              )),
            ],
          );
        }).toList(),
      ),
    );
  }

  Widget _rowsView({
    String? text,
  }) {
    return CustomText(
      '$text',
      softWrap: true,
      style: TS().gRoboto(
          fontSize: Responsive.isWeb(context)
              ? DBL.thirteenPointFive.val
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
      textAlign: TextAlign.start,
    );
  }

  setIndex(int index) {
    if (_page == 1) {
      pageIndex = index + 1;
    } else {
      pageIndex = ((_page * _limit) - 10) + index + 1;
    }
  }

  void updateData() {
    if (_page == 1) {
      _start = 0;
      _end = _subscriptionBloc.subscriptionList.length < _limit
          ? _subscriptionBloc.subscriptionList.length
          : _limit;
      debugPrint("end $_end");
      debugPrint("length ${_subscriptionBloc.subscriptionList.length}");
      debugPrint("limit $_limit");
    } else {
      _start = (_page * _limit) - 10;
      _end = _start + _subscriptionBloc.subscriptionList.length;
      debugPrint("end $_end");
      debugPrint("length ${_subscriptionBloc.subscriptionList.length}");
      debugPrint("limit $_limit");
    }
  }

  bool isXs(context) => MediaQuery.of(context).size.width <= 560;
}
