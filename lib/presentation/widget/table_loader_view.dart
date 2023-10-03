import 'package:admin_580_tech/presentation/widget/table_column_view.dart';
import 'package:admin_580_tech/presentation/widget/table_row_view.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../core/enum.dart';
import 'custom_data_table_2.dart';
import 'custom_sizedbox.dart';

class TableLoaderView extends StatelessWidget {
  const TableLoaderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<int> shimmerList = List.generate(10, (index) => (index));
    return CustomSizedBox(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CustomSizedBox(height: DBL.ten.val),
                CustomSizedBox(
                    height: DBL.nineFifty.val,
                    child: Shimmer.fromColors(
                      baseColor: AppColor.rowBackgroundColor.val,
                      highlightColor: AppColor.lightGrey.val,
                      child: _buildDataTable(shimmerList),
                    ))
              ]),
        ));
  }

  CDataTable2 _buildDataTable(List<int> shimmerList) {
    return CDataTable2(
      minWidth: DBL.nineFifty.val,
      dividerThickness: DBL.one.val,
      headingRowHeight: DBL.fortyEight.val,
      dataRowHeight: DBL.fortyEight.val,
      columns: [
        DataColumn2(size: ColumnSize.S, label: _buildTableColumnView()),
        DataColumn2(size: ColumnSize.S, label: _buildTableColumnView()),
        DataColumn2(size: ColumnSize.L, label: _buildTableColumnView()),
        DataColumn2(size: ColumnSize.L, label: _buildTableColumnView()),
        DataColumn2(size: ColumnSize.L, label: _buildTableColumnView()),
        DataColumn2(size: ColumnSize.L, label: _buildTableColumnView()),
        DataColumn2(size: ColumnSize.L, label: _buildTableColumnView()),
      ],
      rows: shimmerList.asMap().entries.map((e) {
        return DataRow2(
          cells: [
            DataCell(_buildTableRowView()),
            DataCell(_buildTableRowView()),
            DataCell(_buildTableRowView()),
            DataCell(_buildTableRowView()),
            DataCell(_buildTableRowView()),
            DataCell(_buildTableRowView()),
            DataCell(_buildTableRowView()),
          ],
        );
      }).toList(),
    );
  }

  TableRowView _buildTableRowView() => const TableRowView(text: "");

  TableColumnView _buildTableColumnView() {
    return const TableColumnView(
      text: "",
    );
  }
}
