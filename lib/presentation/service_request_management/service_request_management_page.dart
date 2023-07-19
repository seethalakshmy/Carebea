import 'package:admin_580_tech/presentation/widget/header_view.dart';
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
import 'models/service_request_model.dart';

class ServiceRequestManagementPage extends StatefulWidget {
  const ServiceRequestManagementPage({Key? key}) : super(key: key);

  @override
  State<ServiceRequestManagementPage> createState() =>
      _ServiceRequestManagementPageState();
}

class _ServiceRequestManagementPageState
    extends State<ServiceRequestManagementPage> {
  late ServiceRequestManagementBloc _serviceRequestManagementBloc;
  List<ServiceRequestModel> serviceList = [
    ServiceRequestModel(
        "009876",
        "#ID120",
        "Aleena George",
        "#ID123",
        "John George",
        "Tier 2",
        "04/26/2023  at 10:00am",
        "04/26/2023  at 10:00pm",
        "2",
        "\$200",
        "\$34",
        "\$15",
        "\$0",
        "client"),
  ];

  final int _limit = 10;
  int _tabType = 1;

  @override
  void initState() {
    super.initState();
    _serviceRequestManagementBloc = ServiceRequestManagementBloc();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ServiceRequestManagementBloc>(
      create: (context) => _serviceRequestManagementBloc,
      child: Column(
        children: [
          HeaderView(
            title: AppString.serviceRequestManagement.val,
          ),
          CustomSizedBox(height: DBL.fifty.val),
          BlocBuilder<ServiceRequestManagementBloc,
              ServiceRequestManagementState>(
            builder: (context, state) {
              return Column(
                children: [
                  _tabView(state),
                  const SizedBox(height: 20,),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: _statusDropDown(context),
                    ),
                  ),
                  const SizedBox(height: 30,),
                  _cardView(state, context)
                ],
              );
            },
          )
        ],
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
      child: CustomContainer(
        padding: EdgeInsets.all(DBL.twenty.val),
        child: CustomSizedBox(
          height: (_limit + 1) * 48,
          child: _requestsTable(),
        ),
      ),
    );
  }

  _requestsTable() {
    return CSelectionArea(
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
            fixedWidth: DBL.ninetyFive.val,
            label: _columnsView(
                text: AppString.serviceId.val, fontWeight: FontWeight.bold),
          ),
          DataColumn2(
            fixedWidth: DBL.twoHundred.val,
            label: _columnsView(
                text: AppString.decisionMakerIdAndName.val,
                fontWeight: FontWeight.bold),
          ),
          DataColumn2(
            size: ColumnSize.L,
            fixedWidth: DBL.twoHundred.val,
            label: _columnsView(
                text: AppString.clientIdAndName.val,
                fontWeight: FontWeight.bold),
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
                  text: AppString.serviceFee.val, fontWeight: FontWeight.bold),
            ),
          if (_tabType == 2)
            DataColumn2(
              size: ColumnSize.L,
              fixedWidth: 100,
              label: _columnsView(
                  text: AppString.extraFee.val, fontWeight: FontWeight.bold),
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
                  text: AppString.refund.val, fontWeight: FontWeight.bold),
            ),
          if (_tabType == 3)
            DataColumn2(
              size: ColumnSize.L,
              fixedWidth: 150,
              label: _columnsView(
                  text: AppString.cancelledBy.val, fontWeight: FontWeight.bold),
            ),
          DataColumn2(
            // size: ColumnSize.L,
            fixedWidth: Responsive.isWeb(context)
                ? MediaQuery.of(context).size.width * .1
                : DBL.oneSeventy.val,
            label: const CustomText(""),
          ),
        ],
        rows: serviceList.asMap().entries.map((e) {
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
                text: "${item.decisionMakerId} - ${item.decisionMakerName}",
              )),
              DataCell(_rowsView(
                text: "${item.clientName} - ${item.clientId}",
              )),
              DataCell(_rowsView(
                text: item.service,
              )),
              DataCell(_rowsView(
                text: item.startDateAndTime,
              )),
              DataCell(_rowsView(
                text: item.endDateAndTime,
              )),
              if (_tabType == 1)
                DataCell(_rowsView(
                  text: item.noOfMatchingShown,
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
                  text: item.cancelledBy,
                )),
              DataCell(
                InkWell(
                    onTap: () {},
                    child: CustomSvg(
                      path: IMG.edit.val,
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

  CustomDropdown<int> _statusDropDown(BuildContext context) {
    return CustomDropdown<int>(
      onChange: (int value, int index) => CustomLog.log(value.toString()),
      dropdownButtonStyle: DropdownButtonStyle(
        mainAxisAlignment: MainAxisAlignment.start,
        width: 220,
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
        "",
        style: TS().gRoboto(
            fontWeight: FW.w500.val,
            fontSize: FS.font15.val,
            color: AppColor.columColor2.val),
      ),
    );
  }
}
