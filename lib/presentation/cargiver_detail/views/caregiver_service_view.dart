import 'package:admin_580_tech/application/bloc/caregiver_detail/caregiver_detail_bloc.dart';
import 'package:admin_580_tech/domain/caregiver_detail/model/caregiver_detail_response.dart';
import 'package:admin_580_tech/presentation/widget/custom_padding.dart';
import 'package:admin_580_tech/presentation/widget/profile_info.dart';
import 'package:admin_580_tech/presentation/widget/service_detail_canceled_view.dart';
import 'package:admin_580_tech/presentation/widget/service_detail_caregiver_view.dart';
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

import '../../../core/enum.dart';
import '../../../core/text_styles.dart';
import '../../widget/custom_alert_dialog_widget.dart';
import '../../widget/custom_card.dart';
import '../../widget/custom_container.dart';
import '../../widget/custom_data_table_2.dart';
import '../../widget/custom_selection_area.dart';
import '../../widget/custom_sizedbox.dart';
import '../../widget/custom_svg.dart';
import '../../widget/custom_text.dart';
import '../../widget/empty_view.dart';
import '../../widget/error_view.dart';
import '../../widget/service_detail_transaction_view.dart';
import '../../widget/service_details_service_list_view.dart';
import '../../widget/table_actions_view.dart';
import '../../widget/table_status_box.dart';

class CareGiverServiceView extends StatelessWidget {
  const CareGiverServiceView(
      {required this.state, required this.services, Key? key})
      : super(key: key);
  final CareGiverDetailState state;
  final List<Services> services;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      elevation: DBL.seven.val,
      child: CustomContainer(
          child: state.isLoading
              ? const TableLoaderView()
              : state.isError
                  ? ErrorView(isClientError: false, errorMessage: state.error)
                  : _serviceView(context, services)),
    );
  }

  _serviceView(BuildContext context, List<Services> services) {
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
                ],
              ),
            ),
          )
        : const EmptyView(title: "No Services found!");
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
              AppString.service.val,
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
          getIndex(e.key);
          var item = e.value;
          return DataRow2(
            cells: [
              DataCell(TableRowView(
                text: getIndex(e.key).toString(),
              )),
              DataCell(TableRowImageView(
                  name: "${item.client?.firstName} ${item.client?.lastName}",
                  imageUrl: item.client?.profile ?? "")),
              DataCell(_tableRowView(item.serviceName??"" )),
              DataCell(_tableRowView( item.startDateTime ?? "")),
              DataCell(_tableRowView( item.endDateTime ?? "")),
              DataCell(_tableRowView(item.totalServiceFee ?? "")),
              DataCell(TableStatusBox(
                status: item.status ?? 0,
              )),
              DataCell(TableActions(
                isEdit: false,
                isView: true,
                onViewTap: () {
                  _serviceDetailPopUp(context, item.status ?? 0);
                },
              )),
            ],
          );
        }).toList(),
      ),
    );
  }

  TableRowView _tableRowView(String name) => TableRowView(text:name);

  TableColumnView _tableColumnView(String name) {
    return TableColumnView(
      text: name,
      isUnderTab: true,
    );
  }

  int getIndex(int index) {
    return index + 1;
  }

  _serviceDetailPopUp(BuildContext context, int status) {
    showGeneralDialog(
      context: context,
      pageBuilder: (BuildContext buildContext, Animation animation,
          Animation secondaryAnimation) {
        return CustomAlertDialogWidget(
          height: MediaQuery.of(context).size.height * .9,
          width: double.infinity,
          heading: AppString.completedServiceRequest.val,
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
                              status !=1?ProfileInfo():CustomSizedBox.shrink(),
                            CustomSizedBox(height:  status ==1 ?DBL.zero.val:DBL.twenty.val ,),
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
                               if( status != 1)ProfileInfo(),
                                if( status != 1)CustomSizedBox(height: DBL.twenty.val,),
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

  Column _rightView(int status) {
    return Column(
      children: [
        if (status == 1)
          ServiceDetailReportsView(
            suspectedOtherIssue: "loreum ipsum",
            reportedOtherIssue: "loreum ipsum",
            suspectedIssues: const ["refused to eat", "poor living conditions", "suspected alcohol abuse"],
            reportedIssues: ["refused to eat", "poor living conditions", "suspected alcohol abuse"],
          ),
        // CustomSizedBox(
        //   height: DBL.nine.val,
        // ),
        ServiceDetailServiceListView(
          status: status,
          completedServices: ["Assist w/Wake up", "Assist w/Showering","Assist w/Wake up"],
          inCompletedReason: "loreum ipsum",
          inCompletedServices: ["Assist w/Wake up", "Assist w/Showering","Assist w/Wake up"],
          serviceNeeded:["Assist w/Wake up", "Assist w/Showering","Assist w/Wake up"],
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
       status ==1?ProfileInfo():CustomSizedBox.shrink(),
        CustomSizedBox(
          height: status ==1?DBL.twenty.val:DBL.zero.val,
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
              rating: 3, feeBack: "loreum ipsum dolor conshdhgdud hdhry hdhrb jdhhdhdk djd"),
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

  bool isLg(BuildContext context) => MediaQuery.of(context).size.width <= 976;
}
