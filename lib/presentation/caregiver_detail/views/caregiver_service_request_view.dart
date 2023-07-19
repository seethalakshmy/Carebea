import 'package:admin_580_tech/application/bloc/caregiver_detail/caregiver_detail_bloc.dart';
import 'package:admin_580_tech/core/string_extension.dart';
import 'package:admin_580_tech/domain/caregiver_detail/model/caregiver_service_request_list_response.dart';
import 'package:admin_580_tech/presentation/widget/custom_button.dart';
import 'package:admin_580_tech/presentation/widget/custom_padding.dart';
import 'package:admin_580_tech/presentation/widget/profile_info.dart';
import 'package:admin_580_tech/presentation/widget/service_request_left_view.dart';
import 'package:admin_580_tech/presentation/widget/table_column_view.dart';
import 'package:admin_580_tech/presentation/widget/table_loader_view.dart';
import 'package:admin_580_tech/presentation/widget/table_row_view.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/enum.dart';
import '../../../core/text_styles.dart';
import '../../widget/custom_alert_dialog_widget.dart';
import '../../widget/custom_card.dart';
import '../../widget/custom_container.dart';
import '../../widget/custom_data_table_2.dart';
import '../../widget/custom_selection_area.dart';
import '../../widget/custom_sizedbox.dart';
import '../../widget/custom_text.dart';
import '../../widget/empty_view.dart';
import '../../widget/error_view.dart';
import '../../widget/pagination_view.dart';
import '../../widget/service_details_service_list_view.dart';
import '../../widget/table_actions_view.dart';

class CareGiverServiceRequestView extends StatefulWidget {
  const CareGiverServiceRequestView(
      {required this.bloc, required this.userId, Key? key})
      : super(key: key);
  final CaregiverDetailBloc bloc;
  final String userId;

  @override
  State<CareGiverServiceRequestView> createState() =>
      _CareGiverServiceRequestViewState();
}

class _CareGiverServiceRequestViewState
    extends State<CareGiverServiceRequestView> {
  List<String> mPets = ["Cat", "Dog", "Rabbit"];
  int _totalItems = 1;
  final int _limit = 10;
  int _page = 1;
  int _pageIndex = 0;
  List<ServiceRequested> serviceRequested = [];
  int _start = 0;
  int _end = 10;

  @override
  void initState() {
    super.initState();
    _getCareGiverServiceRequests();
  }

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      elevation: DBL.seven.val,
      child: BlocBuilder<CaregiverDetailBloc, CareGiverDetailState>(
        builder: (context, state) {
          CareGiverServiceRequestListResponse? value =
              state.serviceRequestListResponse;
          if (value?.status ?? false) {
            serviceRequested.clear();
            if (value?.data?.serviceRequested != null &&
                value!.data!.serviceRequested!.isNotEmpty) {
              _totalItems = value.data?.totalCount ?? 1;
              serviceRequested.addAll(value.data?.serviceRequested ?? []);
              _updateData();
            }
          }
          return CustomContainer(
              child: state.isLoadingServiceRequest
                  ? const TableLoaderView()
                  : state.isError
                      ? ErrorView(
                          isClientError: false,
                          errorMessage: state.error,
                          isUnderTab: true,
                        )
                      : _serviceRequestView(context));
        },
      ),
    );
  }

  _serviceRequestView(
    BuildContext context,
  ) {
    return serviceRequested.isNotEmpty
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
                    child: _servicesTable(context),
                  ),
                  CustomSizedBox(height: DBL.twenty.val),
                  if (_totalItems > 10) _paginationView()
                ],
              ),
            ),
          )
        : const EmptyView(
            title: "No Services Request found!",
            isUnderTab: true,
          );
  }

  _servicesTable(BuildContext context) {
    return CSelectionArea(
      child: CDataTable2(
        minWidth: DBL.nineFifty.val,
        dividerThickness: DBL.pointThree.val,
        headingRowHeight: DBL.fortyEight.val,
        dataRowHeight: DBL.sixty.val,
        columns: [
          DataColumn2(
            size: ColumnSize.S,
            fixedWidth: DBL.sixty.val,
            label: _tableColumnView(
              AppString.slNo.val,
            ),
          ),
          DataColumn2(
            size: ColumnSize.L,
            label: _tableColumnView(AppString.clientName.val),
          ),
          DataColumn2(
            size: ColumnSize.L,
            label: _tableColumnView(
              AppString.serviceRequestID.val,
            ),
          ),
          DataColumn2(
            size: ColumnSize.M,
            label: _tableColumnView(
              AppString.serviceNeeded.val,
            ),
          ),
          DataColumn2(
            size: ColumnSize.L,
            label: _tableColumnView(
              AppString.requestedStartDateTime.val,
            ),
          ),
          DataColumn2(
            size: ColumnSize.L,
            label: _tableColumnView(
              AppString.requestedEndDateTime.val,
            ),
          ),
          // DataColumn2(
          DataColumn2(
            size: ColumnSize.L,
            label: _tableColumnView(
              AppString.status.val,
            ),
          ),
          const DataColumn2(
            size: ColumnSize.S,
            label: CustomText(""),
          ),
        ],
        rows: serviceRequested.asMap().entries.map((e) {
          var item = e.value;
          _setIndex(e.key);
          return DataRow2(
            cells: [
              DataCell(TableRowView(
                text: _pageIndex.toString(),
              )),
              DataCell(
                  TableRowView(text: "${item.firstName} ${item.lastName}")),
              DataCell(TableRowView(text: item.serviceId ?? "")),
              DataCell(TableRowView(text: item.servicesNeeded ?? "")),
              DataCell(TableRowView(
                  text: item.startDateTime?.parseWithFormat() ?? "")),
              DataCell(TableRowView(
                  text: item.endDateTime?.parseWithFormat() ?? "")),
              DataCell(TableRowView(text: item.status ?? "")),
              DataCell(TableActions(
                isEdit: false,
                isView: true,
                onViewTap: () {
                  _serviceRequestPopUp(context);
                },
              )),
            ],
          );
        }).toList(),
      ),
    );
  }

  _setIndex(int index) {
    if (_page == 1) {
      _pageIndex = index + 1;
    } else {
      _pageIndex = ((_page * _limit) - 10) + index + 1;
    }
  }

  TableColumnView _tableColumnView(String name) {
    return TableColumnView(
      text: name,
      isUnderTab: true,
    );
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
            _getCareGiverServiceRequests();
          }
        },
        onItemPressed: (i) {
          _page = i;
          _getCareGiverServiceRequests();
        },
        onPreviousPressed: () {
          if (_page > 1) {
            _page = _page - 1;
            _getCareGiverServiceRequests();
          }
        });
  }

  _getCareGiverServiceRequests() {
    widget.bloc.add(CareGiverDetailEvent.getCareGiverServiceRequestList(
      userId: widget.userId,
      page: _page,
      limit: _limit,
    ));
  }

  void _updateData() {
    if (_page == 1) {
      _start = 0;
      _end =
          serviceRequested.length < _limit ? serviceRequested.length : _limit;
    } else {
      _start = (_page * _limit) - 10;
      _end = _start + serviceRequested.length;
    }
  }

  _serviceRequestPopUp(
    BuildContext context,
  ) {
    showGeneralDialog(
      context: context,
      pageBuilder: (BuildContext buildContext, Animation animation,
          Animation secondaryAnimation) {
        return CustomAlertDialogWidget(
          height: MediaQuery.of(context).size.height * .9,
          width: double.infinity,
          heading: AppString.newServiceRequest.val,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: DBL.twentyFive.val,
            ),
            child: Builder(
              builder: (context) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomSizedBox(height: DBL.thirty.val),
                  _topView(),
                  CustomSizedBox(
                    height: DBL.twenty.val,
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        _leftView(),
                        CustomSizedBox(
                          height: DBL.nine.val,
                        ),
                        _bottomView(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  ServiceRequestLeftView _leftView() {
    return ServiceRequestLeftView(
      isAdvanceDirective: "yes",
      isHavePets: "yes",
      isSmoking: "yes",
      requestedEndDateTime: "March 5 2023 at 10.00 pm",
      requestedStartDateTime: "March 5 2023 at 5.00 pm",
      serviceRequestID: "#SER12345",
      mPets: mPets,
    );
  }

  _topView() {
    return LayoutBuilder(builder: (context, constraint) {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: ConstrainedBox(
          constraints: BoxConstraints(minWidth: constraint.maxWidth),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ProfileInfo(),
              CustomSizedBox(
                height: DBL.twenty.val,
              ),
              CustomButton(
                color: AppColor.primaryColor.val,
                borderRadius: DBL.three.val,
                padding: EdgeInsets.symmetric(
                    vertical: DBL.twelve.val, horizontal: DBL.twentyFive.val),
                onPressed: () {},
                text: "Profile Details",
                textStyle: TS().gRoboto(fontWeight: FW.w500.val),
              )
            ],
          ),
        ),
      );
    });
  }

  _bottomView() {
    return ServiceDetailServiceListView(
      status: 3,
      completedServices: const [],
      inCompletedReason: "",
      inCompletedServices: const [],
      serviceNeeded: [
        "Assist w/wake up",
        "Assist w/Showering",
        "Assist w/wake up",
        "Assist w/Showering"
      ],
    );
  }

  bool isLg(BuildContext context) => MediaQuery.of(context).size.width <= 976;
}
