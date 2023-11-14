import 'package:admin_580_tech/core/string_extension.dart';
import 'package:admin_580_tech/domain/service_request_management/model/service_request_list_response_model.dart';
import 'package:admin_580_tech/presentation/service_request_management/widgets/service_details_alert.dart';
import 'package:admin_580_tech/presentation/widget/header_view.dart';
import 'package:auto_route/auto_route.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/bloc/service_request_management/service_request_management_bloc.dart';
import '../../core/custom_debugger.dart';
import '../../core/enum.dart';
import '../../core/properties.dart';
import '../../core/responsive.dart';
import '../../core/text_styles.dart';
import '../../core/utility.dart';
import '../../domain/caregivers/model/types.dart';
import '../../domain/service_request_management/model/service_request_response.dart';
import '../../infrastructure/service_request_management/service_request_management_repository.dart';
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
import '../widget/pagination_view.dart';
import '../widget/table_loader_view.dart';

@RoutePage()
class ServiceRequestManagementPage extends StatefulWidget {
  const ServiceRequestManagementPage({Key? key}) : super(key: key);

  @override
  State<ServiceRequestManagementPage> createState() =>
      _ServiceRequestManagementPageState();
}

class _ServiceRequestManagementPageState
    extends State<ServiceRequestManagementPage> {
  List<ServiceList> serviceList = [];

  final int _limit = 10;
  int pageIndex = 0;
  int _start = 0;
  int _end = 10;
  int _page = 1;
  final ServiceRequestManagementBloc _serviceRequestBloc =
      ServiceRequestManagementBloc(ServiceRequestManagementRepository());
  final TextEditingController _searchController = TextEditingController();
  TextEditingController fromDateController = TextEditingController();
  TextEditingController toDateController = TextEditingController();
  Types items =
      Types(id: 1, title: AppString.pendingServices.val, isSelected: true);

  @override
  void initState() {
    super.initState();
    _serviceRequestBloc.add(const ServiceRequestManagementEvent.getFilters());
    _serviceRequestBloc
        .add(const ServiceRequestManagementEvent.getServiceStatus());
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
    return Column(
      children: [
        HeaderView(
          title: AppString.serviceRequestManagement.val,
        ),
        CustomSizedBox(height: DBL.fifty.val),
        BlocProvider(
          create: (context) => _serviceRequestBloc
            ..add(ServiceRequestManagementEvent.getServiceRequests(
                context: context, page: _page, limit: _limit)),
          child: BlocBuilder<ServiceRequestManagementBloc,
              ServiceRequestManagementState>(
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  /*_tabView(state),
                const SizedBox(height: 20),*/
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.start,
                    alignment: WrapAlignment.start,
                    runAlignment: WrapAlignment.center,
                    spacing: 20,
                    runSpacing: 10,
                    children: [
                      /*state.isLoading ?? false
                        ? _shimmerForFilterWidgets()
                        : _dateFilterDropDown(context),*/
                      // _bookingStatusDropDown(context),
                      state.isLoading ?? false
                          ? _shimmerForFilterWidgets()
                          : _serviceStatusDropDown(context),
                      state.isLoading ?? false
                          ? _shimmerForFilterWidgets()
                          : _buildDatePicker(state, fromDateController,
                              AppString.startDate.val, () {
                              _selectFromDate(context, state);
                            }),
                      state.isLoading ?? false
                          ? _shimmerForFilterWidgets()
                          : _buildDatePicker(
                              state, toDateController, AppString.endDate.val,
                              () {
                              _selectToDate(context, state);
                            }),
                      state.isLoading ?? false
                          ? _shimmerForFilterWidgets()
                          : _searchWidget(context),
                      state.isLoading ?? false
                          ? _shimmerForFilterWidgets(width: DBL.oneTwenty.val)
                          : _clearAllFiltersButtonWidget()
                    ],
                  ),
                  const SizedBox(height: 30),
                  _cardView(state, context),
                ],
              );
            },
          ),
        )
      ],
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

  CTextField _buildDatePicker(ServiceRequestManagementState state,
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

  _clearAllFiltersButtonWidget() {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: CustomSizedBox(
        height: 46,
        child: CustomButton(
          onPressed: () {
            _page = 1;
            _searchController.clear();
            fromDateController.clear();
            toDateController.clear();
            _serviceRequestBloc.statusFilterId = 0;
            _serviceRequestBloc
                .add(const ServiceRequestManagementEvent.getServiceStatus());
            _serviceRequestBloc.add(
                ServiceRequestManagementEvent.getServiceRequests(
                    context: context, page: _page, limit: _limit));
          },
          text: AppString.clearFilters.val,
        ),
      ),
    );
  }

  Future<void> _selectFromDate(
      BuildContext context, ServiceRequestManagementState state) async {
    final DateTime now = DateTime.now();
    showDatePicker(
      context: context,
      initialDate: _serviceRequestBloc.selectedToDateTime ?? state.selectedDate,
      firstDate: now.subtract(const Duration(days: 365)),
      lastDate: now.add(const Duration(days: 365)),
    ).then((value) {
      if (value != null) {
        _serviceRequestBloc.selectedFromDate =
            value.toString().parseWithFormat(dateFormat: AppString.ddMMYYY.val);
        print("selecteddd from date : ${_serviceRequestBloc.selectedFromDate}");
        _serviceRequestBloc.selectedFromDateTime = value;
        if (_serviceRequestBloc.selectedFromDate.isNotEmpty &&
            _serviceRequestBloc.selectedToDate.isNotEmpty) {
          _page = 1;
          _serviceRequestBloc.add(
              ServiceRequestManagementEvent.getServiceRequests(
                  searchTerm: _serviceRequestBloc.searchQuery,
                  statusFilterId: _serviceRequestBloc.statusFilterId,
                  context: context,
                  page: _page,
                  limit: _limit,
                  fromDate: _serviceRequestBloc.selectedFromDate,
                  toDate: _serviceRequestBloc.selectedToDate));
        }
        fromDateController.text =
            value.toString().parseWithFormat(dateFormat: AppString.mmDDYYY.val);
        FocusScope.of(context).unfocus();
      }
    });
  }

  Future<void> _selectToDate(
      BuildContext context, ServiceRequestManagementState state) async {
    final DateTime now = DateTime.now();
    showDatePicker(
      context: context,
      initialDate: state.selectedDate,
      firstDate: state.selectedDate,
      lastDate: now.add(const Duration(days: 365)),
    ).then((value) {
      if (value != null) {
        _serviceRequestBloc.selectedToDateTime = value;
        _serviceRequestBloc.selectedToDate =
            value.toString().parseWithFormat(dateFormat: AppString.ddMMYYY.val);
        print("selecteddd to date : ${_serviceRequestBloc.selectedToDate}");
        if (_serviceRequestBloc.selectedFromDate.isNotEmpty &&
            _serviceRequestBloc.selectedToDate.isNotEmpty) {
          _page = 1;
          _serviceRequestBloc.add(
              ServiceRequestManagementEvent.getServiceRequests(
                  context: context,
                  statusFilterId: _serviceRequestBloc.statusFilterId == 0
                      ? null
                      : _serviceRequestBloc.statusFilterId,
                  searchTerm: _serviceRequestBloc.searchQuery,
                  page: _page,
                  limit: _limit,
                  fromDate: _serviceRequestBloc.selectedFromDate,
                  toDate: _serviceRequestBloc.selectedToDate));
        }
        toDateController.text =
            value.toString().parseWithFormat(dateFormat: AppString.mmDDYYY.val);
        FocusScope.of(context).unfocus();
      }
    });
  }

  CTextField _searchWidget(BuildContext context) {
    return CTextField(
      onSubmitted: (val) {
        print("item inside search submit : ${items.title}");
        _serviceRequestBloc.searchQuery = val;
        _page = 1;
        _serviceRequestBloc.add(
            ServiceRequestManagementEvent.getServiceRequests(
                statusFilterId: _serviceRequestBloc.statusFilterId == 0
                    ? null
                    : _serviceRequestBloc.statusFilterId,
                fromDate: _serviceRequestBloc.selectedFromDate,
                toDate: _serviceRequestBloc.selectedToDate,
                context: context,
                page: _page,
                limit: _limit,
                searchTerm: _serviceRequestBloc.searchQuery));
      },
      width: DBL.twoTen.val,
      height: DBL.fortySeven.val,
      controller: _searchController,
      hintText: AppString.search.val,
      hintStyle: TS().gRoboto(
          fontSize: FS.font14.val,
          fontWeight: FW.w400.val,
          color: AppColor.columColor2.val),
      textColor: AppColor.columColor2.val,
      suffixIcon: CustomSvg(
        path: IMG.search.val,
        height: 16,
        width: 16,
      ),
    );
  }

  CustomDropdown<int> _dateFilterDropDown(BuildContext context) {
    return CustomDropdown<int>(
      onChange: (int value, int index) {
        CustomLog.log(value.toString());
        _serviceRequestBloc.filterId = value;
      },
      dropdownButtonStyle: DropdownButtonStyle(
        mainAxisAlignment: MainAxisAlignment.start,
        width: DBL.twoTen.val,
        height: DBL.fortySeven.val,
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
      items: _serviceRequestBloc.filterList
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
                      fontWeight: FW.w400.val,
                      fontSize: FS.font14.val,
                      color: AppColor.columColor2.val),
                ),
              ),
            ),
          )
          .toList(),
      child: CustomText(
        AppString.dateFilter.val,
        style: TS().gRoboto(
            fontWeight: FW.w400.val,
            fontSize: FS.font14.val,
            color: AppColor.columColor2.val),
      ),
    );
  }

  CustomCard _cardView(
      ServiceRequestManagementState state, BuildContext context) {
    return CustomCard(
        shape: PR().roundedRectangleBorder(DBL.five.val),
        elevation: DBL.seven.val,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            state.isListLoading ?? false
                ? const TableLoaderView()
                : state.error != ""
                    ? ErrorView(isClientError: false, errorMessage: state.error)
                    : CustomContainer(
                        padding: EdgeInsets.all(DBL.twenty.val),
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
              child: _paginationView(),
            )
          ],
        ));
  }

  _requestsTable(ServiceRequestManagementState state) {
    return _serviceRequestBloc.serviceRequestsList.isEmpty
        ? EmptyView(title: AppString.noServiceRequestsFound.val)
        : CSelectionArea(
            child: CDataTable2(
              minWidth: 2000,
              dividerThickness: .3,
              headingRowHeight: DBL.fortyEight.val,
              dataRowHeight: DBL.sixty.val,
              columns: [
                DataColumn2(
                  size: ColumnSize.S,
                  fixedWidth: 50,
                  label: _columnsView(
                      text: AppString.slNo.val, fontWeight: FontWeight.bold),
                ),
                DataColumn2(
                  size: ColumnSize.S,
                  fixedWidth: DBL.oneFifty.val,
                  label: _columnsView(
                      text: AppString.serviceId.val,
                      fontWeight: FontWeight.bold),
                ),
                DataColumn2(
                  fixedWidth: DBL.twoHundred.val,
                  label: _columnsView(
                      text: AppString.clientName.val,
                      fontWeight: FontWeight.bold),
                ),
                DataColumn2(
                  size: ColumnSize.L,
                  fixedWidth: DBL.twoHundred.val,
                  label: _columnsView(
                      text: AppString.careRecipient.val,
                      fontWeight: FontWeight.bold),
                ),
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
                DataColumn2(
                  size: ColumnSize.L,
                  fixedWidth: 150,
                  label: _columnsView(
                      text: AppString.serviceFee.val,
                      fontWeight: FontWeight.bold),
                ),
                if (_serviceRequestBloc.statusFilterId == 0 ||
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
                  ),
                DataColumn2(
                  size: ColumnSize.L,
                  fixedWidth: 150,
                  label: _columnsView(
                      text: AppString.status.val, fontWeight: FontWeight.bold),
                ),
                DataColumn2(
                  // size: ColumnSize.L,
                  fixedWidth: Responsive.isWeb(context)
                      ? MediaQuery.of(context).size.width * .1
                      : DBL.oneSeventy.val,
                  label: const CustomText(""),
                ),
              ],
              rows: _serviceRequestBloc.serviceRequestsList
                  .asMap()
                  .entries
                  .map((e) {
                setIndex(e.key);

                var item = e.value;
                return DataRow2(
                  onTap: () {
                    _getServiceDetails(item, state);
                  },
                  cells: [
                    DataCell(_rowsView(
                      text: pageIndex.toString(),
                    )),
                    DataCell(_rowsView(
                      text: item.serviceId.toString(),
                    )),
                    DataCell(_rowsView(
                      text: item.decisionMakerName ?? "",
                    )),
                    DataCell(_rowsView(
                      text: item.clientName ?? "",
                    )),
                    DataCell(_rowsView(
                      text: item.caregiverName ?? "",
                    )),
                    DataCell(_rowsView(
                      text: _serviceRequestBloc
                          .generateFormattedDate(item.startDate ?? ""),
                    )),
                    DataCell(_rowsView(
                      text: _serviceRequestBloc
                          .generateFormattedDate(item.endDate ?? ""),
                    )),
                    DataCell(_rowsView(
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
                      )),
                    DataCell(
                        _rowsView(text: item.serviceStatus, isStatus: true)),
                    DataCell(InkWell(
                        onTap: () {
                          //autoTabRouter?.navigate(ServiceDetailsRoute(id: item.id));
                          _getServiceDetails(item, state);
                        },
                        child: CustomSvg(
                          path: IMG.eye.val,
                          width: DBL.twelve.val,
                          height: DBL.twelve.val,
                        ))),
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

  void _getServiceDetails(
      ServiceRequests item, ServiceRequestManagementState state) {
    _serviceRequestBloc.add(ServiceRequestManagementEvent.getServiceDetails(
        context: context, serviceId: item.id ?? ""));
    debugPrint('hell${state.isDetailsLoading}');

    showDialog(
        context: context,
        builder: (BuildContext context) {
          debugPrint('checking service status ${item.serviceStatus}');
          return CustomAlertDialogWidget(
            heading: "${item.serviceStatus} Service Request",
            child: ServiceDetailsAlert(
              title: item.serviceStatus ?? "",
              serviceBloc: _serviceRequestBloc,
            ),
          );
        });
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

  Widget _rowsView({String? text, bool? isStatus}) {
    return Container(
      padding: const EdgeInsets.all(7),
      decoration: isStatus ?? false
          ? BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: _generateColor(text ?? ""))
          : const BoxDecoration(),
      child: CustomText(
        '$text',
        softWrap: true,
        overflow: TextOverflow.ellipsis,
        style: TS().gRoboto(
            fontSize: Responsive.isWeb(context)
                ? DBL.thirteenPointFive.val
                : DBL.twelve.val,
            fontWeight: FW.w400.val,
            color:
                isStatus ?? false ? AppColor.white.val : AppColor.rowColor.val),
        textAlign: TextAlign.start,
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

  _bookingStatusDropDown(BuildContext context) {
    return CustomDropdown<int>(
      onChange: (int value, int index) {
        // _serviceBloc.add(
        //     ServiceRequestManagementEvent.getServiceList(selectedType,
        //         filterId: value));
      },
      dropdownButtonStyle: DropdownButtonStyle(
        mainAxisAlignment: MainAxisAlignment.start,
        width: DBL.twoTen.val,
        height: DBL.fortySeven.val,
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
      items: [AppString.normalServiceRequest.val, AppString.rebooking.val]
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
                      fontWeight: FW.w400.val,
                      fontSize: FS.font14.val,
                      color: AppColor.columColor2.val),
                ),
              ),
            ),
          )
          .toList(),
      child: CustomText(
        AppString.serviceTypeHint.val,
        style: TS().gRoboto(
            fontWeight: FW.w400.val,
            fontSize: FS.font14.val,
            color: AppColor.columColor2.val),
      ),
    );
  }

  _serviceStatusDropDown(BuildContext context) {
    return CustomDropdown<int>(
      onChange: (int value, int index) {
        _serviceRequestBloc.statusFilterId = value;
        _page = 1;
        _serviceRequestBloc.add(
            ServiceRequestManagementEvent.getServiceRequests(
                context: context,
                page: _page,
                fromDate: _serviceRequestBloc.selectedFromDate,
                toDate: _serviceRequestBloc.selectedToDate,
                searchTerm: _serviceRequestBloc.searchQuery,
                limit: _limit,
                statusFilterId: _serviceRequestBloc.statusFilterId == 0
                    ? null
                    : _serviceRequestBloc.statusFilterId));
      },
      dropdownButtonStyle: DropdownButtonStyle(
        mainAxisAlignment: MainAxisAlignment.start,
        width: DBL.twoTen.val,
        height: DBL.fortySeven.val,
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
      items: _serviceRequestBloc.serviceStatusList
          .asMap()
          .entries
          .map(
            (item) => DropdownItem<int>(
              value: item.value.id!.toInt(),
              child: Padding(
                padding: EdgeInsets.all(DBL.eight.val),
                child: Text(
                  item.value.name ?? "",
                  style: TS().gRoboto(
                      fontWeight: FW.w400.val,
                      fontSize: FS.font14.val,
                      color: AppColor.columColor2.val),
                ),
              ),
            ),
          )
          .toList(),
      child: CustomText(
        AppString.serviceStatusHint.val,
        style: TS().gRoboto(
            fontWeight: FW.w400.val,
            fontSize: FS.font14.val,
            color: AppColor.columColor2.val),
      ),
    );
  }

  _paginationView() {
    final int totalPages = (_serviceRequestBloc.totalItems / _limit).ceil();
    return PaginationView(
        page: _page,
        totalPages: totalPages,
        end: _end,
        totalItems: _serviceRequestBloc.totalItems,
        start: _start,
        onNextPressed: () {
          if (_page < totalPages) {
            _page = _page + 1;
            _serviceRequestBloc.add(
                ServiceRequestManagementEvent.getServiceRequests(
                    context: context,
                    page: _page,
                    limit: _limit,
                    searchTerm: _serviceRequestBloc.searchQuery,
                    statusFilterId: _serviceRequestBloc.statusFilterId,
                    fromDate: _serviceRequestBloc.selectedFromDate,
                    toDate: _serviceRequestBloc.selectedToDate));
            updateData();
          }
        },
        onItemPressed: (i) {
          _page = i;
          _serviceRequestBloc.add(
              ServiceRequestManagementEvent.getServiceRequests(
                  context: context,
                  page: _page,
                  limit: _limit,
                  searchTerm: _serviceRequestBloc.searchQuery,
                  statusFilterId: _serviceRequestBloc.statusFilterId,
                  fromDate: _serviceRequestBloc.selectedFromDate,
                  toDate: _serviceRequestBloc.selectedToDate));
          updateData();
        },
        onPreviousPressed: () {
          if (_page > 1) {
            _page = _page - 1;
            _serviceRequestBloc.add(
                ServiceRequestManagementEvent.getServiceRequests(
                    context: context,
                    page: _page,
                    limit: _limit,
                    searchTerm: _serviceRequestBloc.searchQuery,
                    statusFilterId: _serviceRequestBloc.statusFilterId,
                    fromDate: _serviceRequestBloc.selectedFromDate,
                    toDate: _serviceRequestBloc.selectedToDate));
            updateData();
          }
        });
  }

  void updateData() {
    if (_page == 1) {
      _start = 0;
      _end = _serviceRequestBloc.serviceRequestsList.length < _limit
          ? _serviceRequestBloc.serviceRequestsList.length
          : _limit;
    } else {
      _start = (_page * _limit) - 10;
      _end = _start + _serviceRequestBloc.serviceRequestsList.length;
    }
  }
}

String getTitle(int tabType) {
  if (tabType == 1) {
    return AppString.pending.val;
  } else if (tabType == 2) {
    return AppString.completed.val;
  } else if (tabType == 3) {
    return AppString.canceled.val;
  } else if (tabType == 4) {
    return AppString.upcoming.val;
  } else {
    return AppString.onGoing.val;
  }
}
