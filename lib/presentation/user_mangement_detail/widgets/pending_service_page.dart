import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/bloc/user_management_detail/user_management_detail_bloc.dart';
import '../../../core/enum.dart';
import '../../../core/properties.dart';
import '../../../core/responsive.dart';
import '../../../core/text_styles.dart';
import '../../../core/utility.dart';
import '../../../domain/user_management_detail/model/pending_service_response.dart';
import '../../../infrastructure/shared_preference/shared_preff_util.dart';
import '../../../infrastructure/user_management_detail/user_management_detail_repository.dart';
import '../../widget/custom_card.dart';
import '../../widget/custom_container.dart';
import '../../widget/custom_data_table_2.dart';
import '../../widget/custom_selection_area.dart';
import '../../widget/custom_sizedbox.dart';
import '../../widget/custom_text.dart';
import '../../widget/empty_view.dart';
import '../../widget/error_view.dart';
import '../../widget/pagination_view.dart';
import '../../widget/table_loader_view.dart';

@RoutePage()
class PendingServiceView extends StatefulWidget {
  PendingServiceView({
    Key? key,
    required this.clientId,
  }) : super(key: key);

  String clientId;

  @override
  State<PendingServiceView> createState() => _PendingServiceViewState();
}

class _PendingServiceViewState extends State<PendingServiceView> {
  List<ServicesList> serviceList = [];

  final int _limit = 10;
  int pageIndex = 0;
  int _start = 0;
  int _end = 10;
  int _page = 1;
  final UserManagementDetailBloc _userManagementDetailBloc =
      UserManagementDetailBloc(UserManagementDetailRepository());
  final TextEditingController _searchController = TextEditingController();
  TextEditingController fromDateController = TextEditingController();
  TextEditingController toDateController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _searchController.dispose();
    fromDateController.dispose();
    toDateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          BlocProvider(
            create: (context) => _userManagementDetailBloc,
            child: Builder(builder: (context) {
              _userManagementDetailBloc.add(
                  UserManagementDetailEvent.getPendingServices(
                      userId: SharedPreffUtil().getAdminId,
                      profileId: widget.clientId,
                      page: _page.toString(),
                      limit: _limit.toString()));
              return BlocBuilder<UserManagementDetailBloc,
                  UserManagementDetailState>(
                bloc: _userManagementDetailBloc,
                builder: (context, state) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /*_tabView(state),
                    const SizedBox(height: 20),*/
                      // Wrap(
                      //   crossAxisAlignment: WrapCrossAlignment.start,
                      //   alignment: WrapAlignment.start,
                      //   runAlignment: WrapAlignment.center,
                      //   spacing: 20,
                      //   runSpacing: 10,
                      //   children: [
                      //     /*state.isLoading ?? false
                      //       ? _shimmerForFilterWidgets()
                      //       : _dateFilterDropDown(context),*/
                      //     // _bookingStatusDropDown(context),
                      //     state.isLoading ?? false
                      //         ? _shimmerForFilterWidgets()
                      //         : _serviceStatusDropDown(context),
                      //     state.isLoading ?? false
                      //         ? _shimmerForFilterWidgets()
                      //         : _buildDatePicker(state, fromDateController,
                      //         AppString.startDate.val, () {
                      //           _selectFromDate(context, state);
                      //         }),
                      //     state.isLoading ?? false
                      //         ? _shimmerForFilterWidgets()
                      //         : _buildDatePicker(
                      //         state, toDateController, AppString.endDate.val,
                      //             () {
                      //           _serviceRequestBloc.selectedFromDate != "" ||
                      //               fromDateController.text.isNotEmpty
                      //               ? _selectToDate(context, state)
                      //               : CSnackBar.showError(context,
                      //               msg: 'Please select a startDate');
                      //         }),
                      //     state.isLoading ?? false
                      //         ? _shimmerForFilterWidgets()
                      //         : _searchWidget(context),
                      //     state.isLoading ?? false
                      //         ? _shimmerForFilterWidgets(width: DBL.oneTwenty.val)
                      //         : _clearAllFiltersButtonWidget()
                      //   ],
                      // ),
                      const SizedBox(height: 30),
                      _cardView(state, context),
                    ],
                  );
                },
              );
            }),
          )
        ],
      ),
    );
  }

  // CustomShimmerWidget _shimmerForFilterWidgets({double? width}) {
  //   return CustomShimmerWidget.rectangular(
  //     height: DBL.fortySeven.val,
  //     width: width ?? DBL.twoTen.val,
  //     baseColor: AppColor.rowBackgroundColor.val,
  //     highlightColor: AppColor.lightGrey.val,
  //   );
  // }

  // CTextField _buildDatePicker(ServiceRequestManagementState state,
  //     TextEditingController controller, String hintText, Function() onTap) {
  //   return CTextField(
  //     width: DBL.twoTen.val,
  //     height: DBL.fortySeven.val,
  //     hintStyle: TS().gRoboto(
  //         fontWeight: FW.w400.val,
  //         fontSize: FS.font14.val,
  //         color: AppColor.columColor2.val),
  //     textColor: AppColor.columColor2.val,
  //     hintText: hintText,
  //     isReadOnly: true,
  //     controller: controller,
  //     validator: (value) {
  //       if (value!.isEmpty) {
  //         return AppString.emptyDate.val;
  //       }
  //       return null;
  //     },
  //     onTap: onTap,
  //     onChanged: (val) {},
  //     textInputAction: TextInputAction.next,
  //     keyBoardType: TextInputType.text,
  //     suffixIcon: CustomSvg(
  //       width: DBL.twentyFive.val,
  //       height: DBL.twentyFive.val,
  //       path: IMG.calenderOutLine.val,
  //     ),
  //   );
  // }

  // _clearAllFiltersButtonWidget() {
  //   return Padding(
  //     padding: const EdgeInsets.only(right: 20.0),
  //     child: CustomSizedBox(
  //       height: 46,
  //       child: CustomButton(
  //         onPressed: () {
  //           _page = 1;
  //           _searchController.clear();
  //           fromDateController.clear();
  //           toDateController.clear();
  //           _serviceRequestBloc.selectedFromDate = '';
  //           _serviceRequestBloc.selectedToDate = '';
  //           _serviceRequestBloc.statusFilterId = 0;
  //           _serviceRequestBloc
  //               .add(const ServiceRequestManagementEvent.getServiceStatus());
  //           _serviceRequestBloc.add(
  //               ServiceRequestManagementEvent.getServiceRequests(
  //                   context: context,
  //                   page: _page,
  //                   limit: _limit,
  //                   clientId: widget.clientId));
  //           debugPrint("date test ${fromDateController.text}");
  //         },
  //         text: AppString.clear.val,
  //       ),
  //     ),
  //   );
  // }

  // Future<void> _selectFromDate(
  //     BuildContext context, ServiceRequestManagementState state) async {
  //   debugPrint("date check ${_serviceRequestBloc.selectedToDateTime}");
  //   final DateTime now = DateTime.now();
  //   showDatePicker(
  //       context: context,
  //       initialDate: _serviceRequestBloc.selectedToDateTime ?? now,
  //       firstDate: _serviceRequestBloc.selectedToDateTime
  //           ?.subtract(const Duration(days: 1825)) ??
  //           DateTime(DateTime.now().year - 5),
  //       lastDate: _serviceRequestBloc.selectedToDateTime ??
  //           DateTime(DateTime.now().year + 5))
  //       .then((value) {
  //     if (value != null) {
  //       _serviceRequestBloc.selectedFromDate =
  //           value.toString().parseWithFormat(dateFormat: AppString.ddMMYYY.val);
  //       print("selecteddd from date : ${_serviceRequestBloc.selectedFromDate}");
  //       _serviceRequestBloc.selectedFromDateTime = value;
  //       if (_serviceRequestBloc.selectedFromDate.isNotEmpty &&
  //           _serviceRequestBloc.selectedToDate.isNotEmpty) {
  //         _page = 1;
  //         _serviceRequestBloc.add(
  //             ServiceRequestManagementEvent.getServiceRequests(
  //                 searchTerm: _searchController.text,
  //                 statusFilterId: _serviceRequestBloc.statusFilterId,
  //                 context: context,
  //                 page: _page,
  //                 limit: _limit,
  //                 fromDate: _serviceRequestBloc.selectedFromDate,
  //                 toDate: _serviceRequestBloc.selectedToDate,
  //                 clientId: widget.clientId));
  //       }
  //       fromDateController.text =
  //           value.toString().parseWithFormat(dateFormat: AppString.ddMMYYY.val);
  //       FocusScope.of(context).unfocus();
  //     }
  //   });
  // }
  //
  // Future<void> _selectToDate(
  //     BuildContext context, ServiceRequestManagementState state) async {
  //   final DateTime now = DateTime.now();
  //   showDatePicker(
  //       context: context,
  //       initialDate:
  //       _serviceRequestBloc.selectedToDateTime ?? state.selectedDate,
  //       firstDate: _serviceRequestBloc.selectedFromDateTime,
  //       lastDate: DateTime(DateTime.now().year + 5))
  //       .then((value) {
  //     if (value != null) {
  //       _serviceRequestBloc.selectedToDateTime = value;
  //       _serviceRequestBloc.selectedToDate =
  //           value.toString().parseWithFormat(dateFormat: AppString.ddMMYYY.val);
  //       print("selecteddd to date : ${_serviceRequestBloc.selectedToDate}");
  //       if (_serviceRequestBloc.selectedFromDate.isNotEmpty &&
  //           _serviceRequestBloc.selectedToDate.isNotEmpty) {
  //         _page = 1;
  //         _serviceRequestBloc.add(
  //             ServiceRequestManagementEvent.getServiceRequests(
  //                 context: context,
  //                 statusFilterId: _serviceRequestBloc.statusFilterId == 0
  //                     ? null
  //                     : _serviceRequestBloc.statusFilterId,
  //                 searchTerm: _searchController.text,
  //                 page: _page,
  //                 limit: _limit,
  //                 fromDate: _serviceRequestBloc.selectedFromDate,
  //                 toDate: _serviceRequestBloc.selectedToDate,
  //                 clientId: widget.clientId));
  //       }
  //       toDateController.text =
  //           value.toString().parseWithFormat(dateFormat: AppString.ddMMYYY.val);
  //       FocusScope.of(context).unfocus();
  //       debugPrint("toDatesss ${toDateController.text}");
  //       debugPrint("date check ${_serviceRequestBloc.selectedToDateTime}");
  //     }
  //   });
  // }
  //
  // CTextField _searchWidget(BuildContext context) {
  //   return CTextField(
  //     onSubmitted: (val) {
  //       print("item inside search submit : ${items.title}");
  //       _serviceRequestBloc.searchQuery = val;
  //       _page = 1;
  //       _serviceRequestBloc.add(
  //           ServiceRequestManagementEvent.getServiceRequests(
  //               statusFilterId: _serviceRequestBloc.statusFilterId == 0
  //                   ? null
  //                   : _serviceRequestBloc.statusFilterId,
  //               fromDate: _serviceRequestBloc.selectedFromDate,
  //               toDate: _serviceRequestBloc.selectedToDate,
  //               context: context,
  //               page: _page,
  //               limit: _limit,
  //               searchTerm: _searchController.text,
  //               clientId: widget.clientId));
  //     },
  //     onChanged: (String value) {
  //       _serviceRequestBloc.add(
  //           ServiceRequestManagementEvent.getServiceRequests(
  //               statusFilterId: _serviceRequestBloc.statusFilterId == 0
  //                   ? null
  //                   : _serviceRequestBloc.statusFilterId,
  //               fromDate: _serviceRequestBloc.selectedFromDate,
  //               toDate: _serviceRequestBloc.selectedToDate,
  //               context: context,
  //               page: _page,
  //               limit: _limit,
  //               searchTerm: _searchController.text,
  //               clientId: widget.clientId));
  //     },
  //     width: DBL.twoTen.val,
  //     height: DBL.fortySeven.val,
  //     controller: _searchController,
  //     hintText: AppString.search.val,
  //     hintStyle: TS().gRoboto(
  //         fontSize: FS.font14.val,
  //         fontWeight: FW.w400.val,
  //         color: AppColor.columColor2.val),
  //     textColor: AppColor.columColor2.val,
  //     suffixIcon: CustomSvg(
  //       path: IMG.search.val,
  //       height: 16,
  //       width: 16,
  //     ),
  //   );
  // }

  CustomCard _cardView(UserManagementDetailState state, BuildContext context) {
    log("list is ${state.pendingServiceList.length}", name: "TEST");
    return CustomCard(
        shape: PR().roundedRectangleBorder(DBL.five.val),
        elevation: DBL.seven.val,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            state.isLoading ?? false
                ? const TableLoaderView()
                : state.isError
                    ? ErrorView(isClientError: false, errorMessage: state.error)
                    : CustomContainer(
                        child: CustomSizedBox(
                          height: (_limit + 1) * 48,
                          child: _requestsTable(state),
                        ),
                      ),
            Padding(
              padding: EdgeInsets.only(
                  left: DBL.twenty.val,
                  right: DBL.twenty.val,
                  top: DBL.ten.val,
                  bottom: DBL.twenty.val),
              child: state.pendingServiceList.isNotEmpty
                  ? _paginationView()
                  : const SizedBox.shrink(),
            )
          ],
        ));
  }

  _requestsTable(UserManagementDetailState state) {
    return _userManagementDetailBloc.state.pendingServiceList.isEmpty
        ? EmptyView(title: AppString.noServiceRequestsFound.val)
        : CSelectionArea(
            child: CDataTable2(
              minWidth: DBL.nineFifty.val,
              dividerThickness: .3,
              headingRowHeight: DBL.fortyEight.val,
              dataRowHeight: DBL.sixty.val,
              columns: [
                DataColumn2(
                  size: ColumnSize.L,
                  fixedWidth: DBL.twoHundred.val,
                  label: _columnsView(
                      text: AppString.slNo.val, fontWeight: FontWeight.bold),
                ),
                DataColumn2(
                  size: ColumnSize.L,
                  fixedWidth: DBL.twoHundred.val,
                  label: _columnsView(
                      text: AppString.serviceId.val,
                      fontWeight: FontWeight.bold),
                ),
                DataColumn2(
                  size: ColumnSize.L,
                  fixedWidth: DBL.twoHundred.val,
                  label: _columnsView(
                      text: AppString.clientName.val,
                      fontWeight: FontWeight.bold),
                ),
                // DataColumn2(
                //   size: ColumnSize.L,
                //   fixedWidth: DBL.twoHundred.val,
                //   label: _columnsView(
                //       text: AppString.careRecipient.val,
                //       fontWeight: FontWeight.bold),
                // ),
                DataColumn2(
                  size: ColumnSize.L,
                  fixedWidth: DBL.twoHundred.val,
                  label: _columnsView(
                      text: AppString.caName.val, fontWeight: FontWeight.bold),
                ),
                DataColumn2(
                  size: ColumnSize.L,
                  fixedWidth: DBL.twoHundred.val,
                  label: _columnsView(
                      text: AppString.startDateAndTime.val,
                      fontWeight: FontWeight.bold),
                ),
                DataColumn2(
                  size: ColumnSize.L,
                  fixedWidth: DBL.twoHundred.val,
                  label: _columnsView(
                      text: AppString.endDateAndTime.val,
                      fontWeight: FontWeight.bold),
                ),
                /*  DataColumn2(
                size: ColumnSize.L,
                fixedWidth: 150,
                label: _columnsView(
                    text: AppString.serviceFee.val,
                    fontWeight: FontWeight.bold),
              ),*/
                /*if (_serviceRequestBloc.statusFilterId == 0 ||
                  _serviceRequestBloc.statusFilterId == 6)
                DataColumn2(
                  size: ColumnSize.L,
                  fixedWidth: 100,
                  label: _columnsView(
                      text: AppString.refund.val,
                      fontWeight: FontWeight.bold),
                ),
              if (_serviceRequestBloc.statusFilterId == 0 ||
                  _serviceRequestBloc.statusFilterId == 6)
                DataColumn2(
                  size: ColumnSize.L,
                  fixedWidth: 100,
                  label: _columnsView(
                      text: AppString.canceledBy.val,
                      fontWeight: FontWeight.bold),
                ),*/
                //bug num 67494
                // DataColumn2(
                //   size: ColumnSize.S,
                //   fixedWidth: 150,
                //   label: _columnsView(
                //       text: AppString.status.val, fontWeight: FontWeight.bold),
                // ),
                // DataColumn2(
                //   size: ColumnSize.S,
                //   fixedWidth: Responsive.isWeb(context)
                //       ? MediaQuery.of(context).size.width * .1
                //       : DBL.oneSeventy.val,
                //   label: const CustomText(""),
                // ),
              ],
              rows: _userManagementDetailBloc.state.pendingServiceList
                  .asMap()
                  .entries
                  .map((e) {
                setIndex(e.key);

                var item = e.value;
                return DataRow2(
                  // onTap: () {
                  //   _getServiceDetails(item, state);
                  // },
                  cells: [
                    DataCell(_rowsView(
                      text: pageIndex.toString(),
                    )),
                    DataCell(_rowsView(
                      text: item.serviceId.toString(),
                    )),
                    DataCell(_rowsView(
                      text: item.clientName ?? "",
                    )),
                    // DataCell(_rowsView(
                    //   text: item.clientName ?? "",
                    // )),
                    DataCell(_rowsView(
                      text: item.careGiverName ?? "",
                    )),
                    DataCell(_rowsView(
                      text: Utility.generateFormattedDate(
                          DateTime.parse(item.startDate ?? "")
                              .toLocal()
                              .toString()),
                    )),
                    DataCell(_rowsView(
                      text: Utility.generateFormattedDate(
                          DateTime.parse(item.endDate ?? "")
                              .toLocal()
                              .toString()),
                    )),
                    /*DataCell(_rowsView(
                    text:
                        '\$ ${Utility.formatAmount(double.tryParse(item.serviceFee.toString() ?? "0.0") ?? 0.0)}',
                  )),
                  if (_serviceRequestBloc.statusFilterId == 0 ||
                      _serviceRequestBloc.statusFilterId == 6)
                    DataCell(_rowsView(
                      text: item.refundStatus != null
                          ? '\$ ${item.refundStatus}'
                          : "-",
                    )),
                  if (_serviceRequestBloc.statusFilterId == 0 ||
                      _serviceRequestBloc.statusFilterId == 6)
                    DataCell(_rowsView(
                      text: item.cancelledBy == "" || item.cancelledBy == null
                          ? "-"
                          : item.cancelledBy ?? "",
                    )),*/
                    // DataCell(
                    //     _rowsView(text: item.serviceStatus, isStatus: true)),
                    // DataCell(InkWell(
                    //     onTap: () {
                    //       //autoTabRouter?.navigate(ServiceDetailsRoute(id: item.id));
                    //       _getServiceDetails(item, state);
                    //     },
                    //     child: CustomSvg(
                    //       path: IMG.eye.val,
                    //       width: DBL.twelve.val,
                    //       height: DBL.twelve.val,
                    //     ))),
                  ],
                );
              }).toList(),
            ),
          );
  }

  setIndex(int index) {
    if (_page == 1) {
      pageIndex = index + 1;
    } else {
      pageIndex = ((_page * _limit) - 10) + index + 1;
    }
  }

  // void _getServiceDetails(
  //     ServiceRequests item, ServiceRequestManagementState state) {
  //   _serviceRequestBloc.add(ServiceRequestManagementEvent.getServiceDetails(
  //       context: context, serviceId: item.id ?? ""));
  //   debugPrint('hell${state.isDetailsLoading}');
  //
  //   showDialog(
  //       context: context,
  //       builder: (BuildContext context) {
  //         debugPrint('checking service status ${item.serviceStatus}');
  //         return CustomAlertDialogWidget(
  //           heading: "${item.serviceStatus} Service Request",
  //           child: ServiceDetailsAlert(
  //             title: item.serviceStatus ?? "",
  //             serviceBloc: _serviceRequestBloc,
  //             canceledBy: item.cancelledBy ?? "",
  //           ),
  //         );
  //       });
  // }

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

  Widget _rowsView({String? text, bool? isStatus}) {
    return Container(
      padding: const EdgeInsets.all(7),
      decoration: isStatus ?? false
          ? BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: _generateColor(text ?? ""))
          : const BoxDecoration(),
      child: Tooltip(
        message: text,
        child: CustomText(
          '$text',
          softWrap: true,
          overflow: TextOverflow.ellipsis,
          style: TS().gRoboto(
              fontSize: Responsive.isWeb(context)
                  ? DBL.thirteenPointFive.val
                  : DBL.twelve.val,
              fontWeight: FW.w400.val,
              color: isStatus ?? false
                  ? AppColor.white.val
                  : AppColor.rowColor.val),
          textAlign: TextAlign.start,
        ),
      ),
    );
  }

  Color _generateColor(String text) {
    if (text.toLowerCase().trim() == "upcoming") {
      return AppColor.amber.val;
    } else if (text.toLowerCase().trim() == "ongoing") {
      return AppColor.blue.val;
    } else if (text.toLowerCase().trim() == "completed") {
      return AppColor.green.val;
    } else {
      return AppColor.red.val;
    }
  }

  // _bookingStatusDropDown(BuildContext context) {
  //   return CustomDropdown<int>(
  //     onChange: (int value, int index) {
  //       // _serviceBloc.add(
  //       //     ServiceRequestManagementEvent.getServiceList(selectedType,
  //       //         filterId: value));
  //     },
  //     dropdownButtonStyle: DropdownButtonStyle(
  //       mainAxisAlignment: MainAxisAlignment.start,
  //       width: DBL.twoTen.val,
  //       height: DBL.fortySeven.val,
  //       elevation: DBL.zero.val,
  //       padding: EdgeInsets.only(left: DBL.fifteen.val),
  //       backgroundColor: Colors.white,
  //       primaryColor: AppColor.white.val,
  //     ),
  //     dropdownStyle: DropdownStyle(
  //       borderRadius: BorderRadius.circular(DBL.zero.val),
  //       elevation: 2,
  //       color: AppColor.white.val,
  //       padding: EdgeInsets.all(DBL.five.val),
  //     ),
  //     items: [AppString.normalServiceRequest.val, AppString.rebooking.val]
  //         .asMap()
  //         .entries
  //         .map(
  //           (item) => DropdownItem<int>(
  //         value: item.key + 1,
  //         child: Padding(
  //           padding: EdgeInsets.all(DBL.eight.val),
  //           child: Text(
  //             item.value,
  //             style: TS().gRoboto(
  //                 fontWeight: FW.w400.val,
  //                 fontSize: FS.font14.val,
  //                 color: AppColor.columColor2.val),
  //           ),
  //         ),
  //       ),
  //     )
  //         .toList(),
  //     child: CustomText(
  //       AppString.serviceTypeHint.val,
  //       style: TS().gRoboto(
  //           fontWeight: FW.w400.val,
  //           fontSize: FS.font14.val,
  //           color: AppColor.columColor2.val),
  //     ),
  //   );
  // }

  // _serviceStatusDropDown(BuildContext context) {
  //   return CustomDropdown<int>(
  //     onChange: (int value, int index) {
  //       _serviceRequestBloc.statusFilterId = value;
  //       _page = 1;
  //       _serviceRequestBloc.add(
  //           ServiceRequestManagementEvent.getServiceRequests(
  //               context: context,
  //               page: _page,
  //               fromDate: _serviceRequestBloc.selectedFromDate,
  //               toDate: _serviceRequestBloc.selectedToDate,
  //               searchTerm: _searchController.text,
  //               limit: _limit,
  //               statusFilterId: _serviceRequestBloc.statusFilterId == 0
  //                   ? null
  //                   : _serviceRequestBloc.statusFilterId,
  //               clientId: widget.clientId));
  //     },
  //     dropdownButtonStyle: DropdownButtonStyle(
  //       mainAxisAlignment: MainAxisAlignment.start,
  //       width: DBL.twoTen.val,
  //       height: DBL.fortySeven.val,
  //       elevation: DBL.zero.val,
  //       padding: EdgeInsets.only(left: DBL.fifteen.val),
  //       backgroundColor: Colors.white,
  //       primaryColor: AppColor.white.val,
  //     ),
  //     dropdownStyle: DropdownStyle(
  //       borderRadius: BorderRadius.circular(DBL.zero.val),
  //       elevation: 2,
  //       color: AppColor.white.val,
  //       padding: EdgeInsets.all(DBL.five.val),
  //     ),
  //     items: _serviceRequestBloc.serviceStatusList
  //         .asMap()
  //         .entries
  //         .map(
  //           (item) => DropdownItem<int>(
  //         value: item.value.id!.toInt(),
  //         child: Padding(
  //           padding: EdgeInsets.all(DBL.eight.val),
  //           child: Text(
  //             item.value.name ?? "",
  //             style: TS().gRoboto(
  //                 fontWeight: FW.w400.val,
  //                 fontSize: FS.font14.val,
  //                 color: AppColor.columColor2.val),
  //           ),
  //         ),
  //       ),
  //     )
  //         .toList(),
  //     child: CustomText(
  //       AppString.serviceStatusHint.val,
  //       style: TS().gRoboto(
  //           fontWeight: FW.w400.val,
  //           fontSize: FS.font14.val,
  //           color: AppColor.columColor2.val),
  //     ),
  //   );
  // }

  _paginationView() {
    final int totalPages =
        (_userManagementDetailBloc.totalItems / _limit).ceil();
    return BlocBuilder<UserManagementDetailBloc, UserManagementDetailState>(
      builder: (context, state) {
        if (_page == 1) {
          _start = 0;
          _end =
              _userManagementDetailBloc.state.pendingServiceList.length < _limit
                  ? _userManagementDetailBloc.state.pendingServiceList.length
                  : _limit;
          debugPrint("end $_end");

          debugPrint("limit $_limit");
        } else {
          _start = (_page * _limit) - 10;
          _end = _start +
              _userManagementDetailBloc.state.pendingServiceList.length;

          debugPrint("end $_end");

          debugPrint("limit $_limit");
        }
        // log("state is ${st}");
        return PaginationView(
            page: _page,
            totalPages: totalPages,
            end: _end,
            totalItems: _userManagementDetailBloc.totalItems,
            start: _start,
            onNextPressed: () {
              if (_page < totalPages) {
                _page = _page + 1;
                _userManagementDetailBloc.add(
                    UserManagementDetailEvent.getPendingServices(
                        userId: SharedPreffUtil().getAdminId,
                        profileId: widget.clientId,
                        page: _page.toString(),
                        limit: _limit.toString()));

                updateData();
              }
            },
            onItemPressed: (i) {
              _page = i;
              _userManagementDetailBloc.add(
                  UserManagementDetailEvent.getPendingServices(
                      userId: SharedPreffUtil().getAdminId,
                      profileId: widget.clientId,
                      page: _page.toString(),
                      limit: _limit.toString()));
              updateData();
            },
            onPreviousPressed: () {
              if (_page > 1) {
                _page = _page - 1;
                _userManagementDetailBloc.add(
                    UserManagementDetailEvent.getPendingServices(
                        userId: SharedPreffUtil().getAdminId,
                        profileId: widget.clientId,
                        page: _page.toString(),
                        limit: _limit.toString()));
                updateData();
              }
            });
      },
    );
  }

  void updateData() {
    if (_page == 1) {
      _start = 0;
      _end = _userManagementDetailBloc.state.pendingServiceList.length < _limit
          ? _userManagementDetailBloc.state.pendingServiceList.length
          : _limit;
      debugPrint("end $_end");

      debugPrint("limit $_limit");
    } else {
      _start = (_page * _limit) - 10;
      _end = _start + _userManagementDetailBloc.state.pendingServiceList.length;

      debugPrint("end $_end");

      debugPrint("limit $_limit");
    }
  }
}

// String getTitle(int tabType) {
//   if (tabType == 1) {
//     return AppString.pending.val;
//   } else if (tabType == 2) {
//     return AppString.completed.val;
//   } else if (tabType == 3) {
//     return AppString.canceled.val;
//   } else if (tabType == 4) {
//     return AppString.upcoming.val;
//   } else {
//     return AppString.onGoing.val;
//   }
// }
