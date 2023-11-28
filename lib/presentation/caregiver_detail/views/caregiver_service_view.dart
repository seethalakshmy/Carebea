import 'package:admin_580_tech/application/bloc/caregiver_detail/caregiver_detail_bloc.dart';
import 'package:admin_580_tech/presentation/widget/custom_padding.dart';
import 'package:admin_580_tech/presentation/widget/profile_info.dart';
import 'package:admin_580_tech/presentation/widget/service_detail_canceled_view.dart';
import 'package:admin_580_tech/presentation/widget/service_detail_staus_view.dart';
import 'package:admin_580_tech/presentation/widget/service_details_date_view.dart';
import 'package:admin_580_tech/presentation/widget/service_details_rating_view.dart';
import 'package:admin_580_tech/presentation/widget/service_details_reports_view.dart';
import 'package:admin_580_tech/presentation/widget/table_column_view.dart';
import 'package:admin_580_tech/presentation/widget/table_loader_view.dart';
import 'package:admin_580_tech/presentation/widget/table_row_image_view.dart';
import 'package:admin_580_tech/presentation/widget/table_row_view.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/bloc/service_request_management/service_request_management_bloc.dart';
import '../../../core/enum.dart';
import '../../../core/string_extension.dart';
import '../../../core/utility.dart';
import '../../../domain/caregiver_detail/model/caregiver_service_list_response.dart';
import '../../../main.dart';
import '../../service_request_management/widgets/service_details_alert.dart';
import '../../user_mangement_detail/widgets/service_status.dart';
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
import '../../widget/service_detail_transaction_view.dart';
import '../../widget/service_details_service_list_view.dart';
import '../../widget/table_actions_view.dart';

class CareGiverServiceView extends StatefulWidget {
  const CareGiverServiceView(
      {required this.bloc, Key? key, required this.userId})
      : super(key: key);
  final CaregiverDetailBloc bloc;
  final String userId;

  @override
  State<CareGiverServiceView> createState() => _CareGiverServiceViewState();
}

class _CareGiverServiceViewState extends State<CareGiverServiceView> {
  int _totalItems = 1;
  final int _limit = 10;
  int _page = 1;
  List<Services> services = [];
  int _start = 0;
  int _end = 10;
  int _pageIndex = 0;

  @override
  void initState() {
    super.initState();
    _getCareGiverServices();
  }

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      elevation: DBL.seven.val,
      child: BlocBuilder<CaregiverDetailBloc, CareGiverDetailState>(
        builder: (context, state) {
          CareGiverServiceListResponse? value = state.serviceListResponse;
          if (value?.status ?? false) {
            services.clear();
            if (value?.data?.services != null &&
                value!.data!.services!.isNotEmpty) {
              _totalItems = value.data?.totalCount ?? 1;
              services.addAll(value.data?.services ?? []);
              _updateData();
            }
            print('serLeng:: ${services.length}');
          }
          return CustomContainer(
              child: state.isLoadingServices
                  ? const TableLoaderView()
                  : state.isError
                      ? ErrorView(
                          isClientError: false, errorMessage: state.error)
                      : _serviceView(
                          context,
                        ));
        },
      ),
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
            _getCareGiverServices();
          }
        },
        onItemPressed: (i) {
          _page = i;
          _getCareGiverServices();
        },
        onPreviousPressed: () {
          if (_page > 1) {
            _page = _page - 1;
            _getCareGiverServices();
          }
        });
  }

  _getCareGiverServices() {
    widget.bloc.add(CareGiverDetailEvent.getCareGiverServiceList(
      userId: widget.userId,
      page: _page,
      limit: _limit,
      adminId: widget.userId,
    ));
  }

  _serviceView(BuildContext context) {
    return services.isNotEmpty
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
            title: "No Services found!",
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
            fixedWidth: DBL.eighty.val,
            label: _tableColumnView(AppString.id.val),
          ),
          DataColumn2(
            size: ColumnSize.L,
            label: _tableColumnView(AppString.client.val),
          ),
          DataColumn2(
            size: ColumnSize.S,
            label: _tableColumnView(
              AppString.serviceId.val,
            ),
          ),
          DataColumn2(
            size: ColumnSize.L,
            label: _tableColumnView(
              AppString.startDateStartTime.val,
            ),
          ),
          DataColumn2(
            size: ColumnSize.L,
            label: _tableColumnView(
              AppString.endDateEndTime.val,
            ),
          ),
          DataColumn2(
            size: ColumnSize.M,
            label: _tableColumnView(
              AppString.totalServiceFee.val,
            ),
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
        rows: services.asMap().entries.map((e) {
          _setIndex(e.key);
          var item = e.value;

          return DataRow2(
            cells: [
              DataCell(TableRowView(
                text: _pageIndex.toString(),
              )),
              DataCell(TableRowImageView(
                  name: "${item.client?.firstName} ${item.client?.lastName}",
                  imageUrl: item.client?.profile ?? "")),
              DataCell(_tableRowView(item.service ?? "")),
              DataCell(
                  _tableRowView(item.startDateTime?.parseWithFormat() ?? "")),
              DataCell(
                  _tableRowView(item.endDateTime?.parseWithFormat() ?? "")),
              DataCell(_tableRowView(
                  '\$${Utility.formatAmount(double.tryParse(item.totalServiceFee?.replaceAll('\$', "") ?? "0.0") ?? 0.0)}')),
              DataCell(ClientStatusWidget(
                serviceStatus: item.status,
              )
                  //     TableStatusBox(
                  //   status: item.status ?? 0,
                  // )
                  ),
              DataCell(
                TableActions(
                  isEdit: false,
                  isView: true,
                  onViewTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        context.read<ServiceRequestManagementBloc>().add(
                            ServiceRequestManagementEvent.getServiceDetails(
                                context: context, serviceId: item.id ?? ''));
                        debugPrint('item status ${item.status}');
                        return CustomAlertDialogWidget(
                          heading: item.status == 2
                              ? 'Upcoming'
                              : item.status == 3
                                  ? 'Ongoing'
                                  : item.status == 5
                                      ? 'Completed'
                                      : 'Canceled',
                          child: ServiceDetailsAlert(
                            title: item.status == 2
                                ? 'Upcoming'
                                : item.status == 3
                                    ? 'Ongoing'
                                    : item.status == 5
                                        ? 'Completed'
                                        : 'Canceled',
                            serviceBloc: serviceRequestManagementBloc,
                          ),
                        );
                      },
                    );
                    // _getServiceDetails();
                    // _serviceDetailPopUp(context, item.status ?? 0);
                  },
                ),
              ),
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

  _setIndex(int index) {
    if (_page == 1) {
      _pageIndex = index + 1;
    } else {
      _pageIndex = ((_page * _limit) - 10) + index + 1;
    }
  }

  _serviceDetailPopUp(BuildContext context, int status) {
    showGeneralDialog(
      barrierDismissible: true,
      barrierLabel: "",
      context: context,
      pageBuilder: (BuildContext buildContext, Animation animation,
          Animation secondaryAnimation) {
        return CustomAlertDialogWidget(
          height: MediaQuery.of(context).size.height * .9,
          width: double.infinity,
          heading: getTitle(status),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: DBL.twentyFive.val,
            ),
            child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Builder(
                  builder: (context) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomSizedBox(height: DBL.thirty.val),
                      !isLg(context)
                          ? Column(
                              children: [
                                status != 1
                                    ? const ProfileInfo()
                                    : CustomSizedBox.shrink(),
                                CustomSizedBox(
                                  height: status == 1
                                      ? DBL.zero.val
                                      : DBL.twenty.val,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: _leftView(status),
                                    ),
                                    CustomSizedBox(
                                      width: DBL.fifty.val,
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: _rightView(status),
                                    )
                                  ],
                                ),
                              ],
                            )
                          : Column(
                              children: [
                                if (status != 1) const ProfileInfo(),
                                if (status != 1)
                                  CustomSizedBox(
                                    height: DBL.twenty.val,
                                  ),
                                _leftView(status),
                                _rightView(status),
                              ],
                            )
                    ],
                  ),
                )),
          ),
        );
      },
    );
  }

  void _updateData() {
    if (_page == 1) {
      _start = 0;
      _end = services.length < _limit ? services.length : _limit;
    } else {
      _start = (_page * _limit) - 10;
      _end = _start + services.length;
    }
  }

  Column _rightView(int status) {
    return Column(
      children: [
        if (status == 1)
          ServiceDetailReportsView(
            suspectedOtherIssue: "loreum ipsum",
            reportedOtherIssue: "loreum ipsum",
            suspectedIssues: const [
              "refused to eat",
              "poor living conditions",
              "suspected alcohol abuse"
            ],
            reportedIssues: [
              "refused to eat",
              "poor living conditions",
              "suspected alcohol abuse"
            ],
          ),
        // CustomSizedBox(
        //   height: DBL.nine.val,
        // ),
        ServiceDetailServiceListView(
          status: status,
          completedServices: [
            "Assist w/Wake up",
            "Assist w/Showering",
            "Assist w/Wake up"
          ],
          inCompletedReason: "loreum ipsum",
          inCompletedServices: [
            "Assist w/Wake up",
            "Assist w/Showering",
            "Assist w/Wake up"
          ],
          serviceNeeded: [
            "Assist w/Wake up",
            "Assist w/Showering",
            "Assist w/Wake up"
          ],
        ),
        CustomSizedBox(
          height: DBL.thirty.val,
        )
      ],
    );
  }

  Column _leftView(int status) {
    return Column(
      children: [
        status == 1 ? const ProfileInfo() : CustomSizedBox.shrink(),
        CustomSizedBox(
          height: status == 1 ? DBL.twenty.val : DBL.zero.val,
        ),
        ServiceDetailStatusView(
          bookingLeft: "6 days left",
          status: status,
          serviceId: "#1232",
          cancelReason: "lorem ipsum dolor sit skjdjhd hhdhshdgd",
        ),
        CustomSizedBox(
          height: DBL.nine.val,
        ),
        ServiceDetailDateView(
            startDateTime: "March 5 2023 at 5.00 pm",
            endDateTime: "March 5 2023 at 5.00 pm",
            location: "495 Grove Street Apartment #20 Newyork,NY 10014, USA"),
        CustomSizedBox(
          height: DBL.nine.val,
        ),
        if (status == 1)
          ServiceDetailRatingView(
              rating: 3,
              feeBack:
                  "loreum ipsum dolor conshdhgdud hdhry hdhrb jdhhdhdk djd"),
        CustomSizedBox(
          height: DBL.nine.val,
        ),
        ServiceDetailTransactionView(
          serviceFee: '\$73',
          transactionId: "36346287372782",
        ),
        CustomSizedBox(
          height: DBL.nine.val,
        ),
        if (status == 2)
          ServiceDetailCanceledView(
              refundStatus: "Completed", canceledBy: "Me"),
        CustomSizedBox(
          height: DBL.thirty.val,
        )
      ],
    );
  }

  String getTitle(int status) {
    if (status == Status.completed.val) {
      return AppString.completedServiceRequest.val;
    } else if (status == Status.canceled.val) {
      return AppString.canceledServiceRequest.val;
    } else if (status == Status.ongoing.val) {
      return AppString.onGoingServiceRequest.val;
    } else if (status == Status.upcoming.val) {
      return AppString.upcomingServiceRequest.val;
    }
    return "";
  }

  bool isLg(BuildContext context) => MediaQuery.of(context).size.width <= 976;
}
