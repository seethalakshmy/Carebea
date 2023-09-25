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
import '../../domain/caregivers/model/types.dart';
import '../../domain/service_request_management/model/service_request_response.dart';
import '../../infrastructure/service_request_management/service_request_management_repository.dart';
import '../caregivers/widgets/tab_item.dart';
import '../widget/custom_card.dart';
import '../widget/custom_container.dart';
import '../widget/custom_data_table_2.dart';
import '../widget/custom_dropdown.dart';
import '../widget/custom_listview_builder.dart';
import '../widget/custom_selection_area.dart';
import '../widget/custom_sizedbox.dart';
import '../widget/custom_svg.dart';
import '../widget/custom_text.dart';
import '../widget/custom_text_field.dart';
import '../widget/empty_view.dart';
import '../widget/error_view.dart';
import '../widget/table_loader_view.dart';
import 'widgets/service_details_dialog.dart';

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
  int _tabType = 1;
  final ServiceRequestManagementBloc _serviceRequestBloc =
      ServiceRequestManagementBloc(ServiceRequestManagementRepository());
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    Types initialType =
        Types(id: 1, title: AppString.pendingServices.val, isSelected: true);
    context
        .read<ServiceRequestManagementBloc>()
        .add(ServiceRequestManagementEvent.isSelectedTab(initialType));
    _serviceRequestBloc.add(const ServiceRequestManagementEvent.getFilters());
  }

  @override
  void dispose() {
    _searchController.dispose();
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
        BlocBuilder<ServiceRequestManagementBloc,
            ServiceRequestManagementState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _tabView(state),
                const SizedBox(height: 20),
                Responsive.isWeb(context)
                    ? Row(
                        children: [
                          _dateFilterDropDown(context),
                          const CustomSizedBox(width: 20),
                          _statusDropDown(context),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: CTextField(
                                  onSubmitted: (val) {
                                    _serviceRequestBloc.searchQuery = val;
                                    //  _serviceRequestBloc.add(ServiceRequestManagementEvent.isSelectedTab(type));
                                  },
                                  width: Responsive.isWeb(context)
                                      ? DBL.threeFifteen.val
                                      : DBL.twoForty.val,
                                  height: DBL.forty.val,
                                  controller: _searchController,
                                  hintText: AppString.search.val,
                                  hintStyle: TS().gRoboto(
                                      fontSize: FS.font15.val,
                                      fontWeight: FW.w500.val),
                                  suffixIcon: CustomSvg(
                                    path: IMG.search.val,
                                    height: 16,
                                    width: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    : Wrap(
                        crossAxisAlignment: WrapCrossAlignment.start,
                        alignment: WrapAlignment.start,
                        runAlignment: WrapAlignment.start,
                        spacing: 20,
                        runSpacing: 10,
                        children: [
                          _dateFilterDropDown(context),
                          _statusDropDown(context),
                          CTextField(
                            onSubmitted: (val) {
                              _serviceRequestBloc.searchQuery = val;
                              //  _serviceRequestBloc.add(ServiceRequestManagementEvent.isSelectedTab(type));
                            },
                            width: Responsive.isWeb(context)
                                ? DBL.threeFifteen.val
                                : DBL.twoForty.val,
                            height: DBL.forty.val,
                            controller: _searchController,
                            hintText: AppString.search.val,
                            hintStyle: TS().gRoboto(
                                fontSize: FS.font15.val,
                                fontWeight: FW.w500.val),
                            suffixIcon: CustomSvg(
                              path: IMG.search.val,
                              height: 16,
                              width: 16,
                            ),
                          ),
                        ],
                      ),
                const SizedBox(height: 30),
                _cardView(state, context)
              ],
            );
          },
        )
      ],
    );
  }

  CustomDropdown<int> _dateFilterDropDown(BuildContext context) {
    return CustomDropdown<int>(
      onChange: (int value, int index) {
        CustomLog.log(value.toString());
        _serviceRequestBloc.filterId = value;
        /*_serviceRequestBloc
            .add(ServiceRequestManagementEvent.isSelectedTab(type));*/
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

  CustomContainer _tabView(ServiceRequestManagementState state) {
    return CustomContainer(
        height: DBL.fifty.val,
        child: CustomListViewBuilder(
            itemCount: state.types.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              Types item = state.types[index];
              return TabItem(
                item: item,
                onTap: () {
                  _tabType = item.id!;
                  context
                      .read<ServiceRequestManagementBloc>()
                      .add(ServiceRequestManagementEvent.isSelectedTab(item));
                },
              );
            }));
  }

  CustomCard _cardView(
      ServiceRequestManagementState state, BuildContext context) {
    return CustomCard(
      shape: PR().roundedRectangleBorder(DBL.five.val),
      elevation: DBL.seven.val,
      child: state.isLoading!
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
    );
  }

  _requestsTable(ServiceRequestManagementState state) {
    return state.services.isEmpty
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
                      text: AppString.decisionMakerName.val,
                      fontWeight: FontWeight.bold),
                ),
                DataColumn2(
                  size: ColumnSize.L,
                  fixedWidth: DBL.twoHundred.val,
                  label: _columnsView(
                      text: AppString.clientName.val,
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
                  fixedWidth: DBL.eighty.val,
                  label: _columnsView(
                      text: AppString.service.val, fontWeight: FontWeight.bold),
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
                if (_tabType == 1)
                  DataColumn2(
                    size: ColumnSize.L,
                    fixedWidth: 150,
                    label: _columnsView(
                        text: AppString.noOfMatchingIsShown.val,
                        fontWeight: FontWeight.bold),
                  ),
                if (_tabType != 1)
                  DataColumn2(
                    size: ColumnSize.L,
                    fixedWidth: 100,
                    label: _columnsView(
                        text: AppString.serviceFee.val,
                        fontWeight: FontWeight.bold),
                  ),
                if (_tabType == 2)
                  DataColumn2(
                    size: ColumnSize.L,
                    fixedWidth: 100,
                    label: _columnsView(
                        text: AppString.extraFee.val,
                        fontWeight: FontWeight.bold),
                  ),
                if (_tabType == 2)
                  DataColumn2(
                    size: ColumnSize.L,
                    fixedWidth: 100,
                    label: _columnsView(
                        text: AppString.tip.val, fontWeight: FontWeight.bold),
                  ),
                if (_tabType == 2)
                  DataColumn2(
                    size: ColumnSize.L,
                    fixedWidth: 100,
                    label: _columnsView(
                        text: AppString.refund.val,
                        fontWeight: FontWeight.bold),
                  ),
                if (_tabType == 3)
                  DataColumn2(
                    size: ColumnSize.L,
                    fixedWidth: 150,
                    label: _columnsView(
                        text: AppString.cancelledBy.val,
                        fontWeight: FontWeight.bold),
                  ),
                DataColumn2(
                  // size: ColumnSize.L,
                  fixedWidth: Responsive.isWeb(context)
                      ? MediaQuery.of(context).size.width * .1
                      : DBL.oneSeventy.val,
                  label: const CustomText(""),
                ),
              ],
              rows: state.services.asMap().entries.map((e) {
                var item = e.value;
                return DataRow2(
                  cells: [
                    DataCell(_rowsView(
                      text: (e.key + 1).toString(),
                    )),
                    DataCell(_rowsView(
                      text: item.serviceId.toString(),
                    )),
                    DataCell(_rowsView(
                      text:
                          "${item.decisionMaker?.firstName} ${item.decisionMaker?.lastName}",
                    )),
                    DataCell(_rowsView(
                      text:
                          "${item.client?.firstName} ${item.client?.lastName}",
                    )),
                    DataCell(_rowsView(
                      text:
                          "${item.careGiver?.firstName} ${item.careGiver?.lastName}",
                    )),
                    DataCell(_rowsView(
                      text: item.service,
                    )),
                    DataCell(_rowsView(
                      text: item.startDateTime,
                    )),
                    DataCell(_rowsView(
                      text: item.endDateTime,
                    )),
                    if (_tabType == 1)
                      DataCell(_rowsView(
                        text: item.noOfMatching,
                      )),
                    if (_tabType != 1)
                      DataCell(_rowsView(
                        text: item.serviceFee,
                      )),
                    if (_tabType == 2)
                      DataCell(_rowsView(
                        text: item.extraFee,
                      )),
                    if (_tabType == 2)
                      DataCell(_rowsView(
                        text: item.tip,
                      )),
                    if (_tabType == 2)
                      DataCell(_rowsView(
                        text: item.refund,
                      )),
                    if (_tabType == 3)
                      DataCell(_rowsView(
                        text: item.cancelledBy ?? "", //no tag from api
                      )),
                    DataCell(
                      InkWell(
                          onTap: () {
                            //autoTabRouter?.navigate(ServiceDetailsRoute(id: item.id));

                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return ServiceDetailsDialog(
                                    service: item,
                                    title: getTitle(_tabType),
                                  );
                                });
                          },
                          child: CustomSvg(
                            path: IMG.eye.val,
                            width: DBL.twelve.val,
                            height: DBL.twelve.val,
                          )),
                    ),
                  ],
                );
              }).toList(),
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

  _statusDropDown(BuildContext context) {
    return _tabType == 1
        ? CustomDropdown<int>(
            onChange: (int value, int index) {
              // _serviceBloc.add(
              //     ServiceRequestManagementEvent.getServiceList(selectedType,
              //         filterId: value));
            },
            dropdownButtonStyle: DropdownButtonStyle(
              mainAxisAlignment: MainAxisAlignment.start,
              width: 220,
              height: Responsive.isMobile(context)
                  ? DBL.fortyFive.val
                  : DBL.forty.val,
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
                            fontWeight: FW.w500.val,
                            fontSize: FS.font15.val,
                            color: AppColor.columColor2.val),
                      ),
                    ),
                  ),
                )
                .toList(),
            child: CustomText(
              AppString.serviceTypeHint.val,
              style: TS().gRoboto(
                  fontWeight: FW.w500.val,
                  fontSize: FS.font15.val,
                  color: AppColor.columColor2.val),
            ),
          )
        : CustomSizedBox.shrink();
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
