import 'package:admin_580_tech/application/bloc/caregiver_detail/caregiver_detail_bloc.dart';
import 'package:admin_580_tech/domain/caregiver_detail/model/caregiver_detail_response.dart';
import 'package:admin_580_tech/presentation/widget/custom_padding.dart';
import 'package:admin_580_tech/presentation/widget/table_actions.dart';
import 'package:admin_580_tech/presentation/widget/table_column_view.dart';
import 'package:admin_580_tech/presentation/widget/table_loader_view.dart';
import 'package:admin_580_tech/presentation/widget/table_row_image_view.dart';
import 'package:admin_580_tech/presentation/widget/table_row_view.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

import '../../../core/enum.dart';
import '../../widget/custom_card.dart';
import '../../widget/custom_container.dart';
import '../../widget/custom_data_table_2.dart';
import '../../widget/custom_selection_area.dart';
import '../../widget/custom_sizedbox.dart';
import '../../widget/custom_text.dart';
import '../../widget/empty_view.dart';
import '../../widget/error_view.dart';
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
                    child: _servicesTable(),
                  ),
                ],
              ),
            ),
          )
        : const EmptyView(title: "No Services found!");
  }

  _servicesTable() {
    return CSelectionArea(
      child: CDataTable2(
        minWidth: 950,
        dividerThickness: .3,
        headingRowHeight: 48,
        dataRowHeight: 60,
        columns: [
          DataColumn2(
            size: ColumnSize.S,
            fixedWidth: 80,
            label: TableColumnView(
              name: AppString.id.val,
            ),
          ),
          DataColumn2(
            size: ColumnSize.L,
            label: TableColumnView(name: AppString.client.val),
          ),
          DataColumn2(
            size: ColumnSize.S,
            label: TableColumnView(
              name: AppString.service.val,
            ),
          ),
          DataColumn2(
            size: ColumnSize.L,
            label: TableColumnView(
              name: AppString.startDateTime.val,
            ),
          ),
          DataColumn2(
            size: ColumnSize.L,
            label: TableColumnView(
              name: AppString.endDateTime.val,
            ),
          ),
          DataColumn2(
            size: ColumnSize.M,
            label: TableColumnView(
              name: AppString.totalServiceFee.val,
            ),
          ),
          DataColumn2(
            fixedWidth: 150,
            label: TableColumnView(
              name: AppString.status.val,
            ),
          ),
          const DataColumn2(
            size: ColumnSize.M,
            label: CustomText3(""),
          ),
        ],
        rows: services.asMap().entries.map((e) {
          getIndex(e.key);
          var item = e.value;
          return DataRow2(
            cells: [
              DataCell(TableRowView(
                name: getIndex(e.key).toString(),
              )),
              DataCell(TableRowImageView(
                  name: "${item.client?.firstName} ${item.client?.lastName}",
                  imageUrl: item.client?.profile ?? "")),
              DataCell(TableRowView(name: item.serviceName ?? "")),
              DataCell(TableRowView(name: item.startDateTime ?? "")),
              DataCell(TableRowView(name: item.endDateTime ?? "")),
              DataCell(TableRowView(name: item.totalServiceFee ?? "")),
              DataCell(TableStatusBox(
                status: item.status ?? 0,
              )),
              DataCell(TableActions(
                isEdit: false,
                isView: true,
                onViewTap: () {},
              )),
            ],
          );
        }).toList(),
      ),
    );
  }

  int getIndex(int index) {
    return index + 1;
  }
}
