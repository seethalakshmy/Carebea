import 'package:admin_580_tech/core/enum.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

class CDataTable2 extends StatelessWidget {
  const CDataTable2({
    Key? key,
    required this.columns,
    required this.rows,
    this.minWidth,
    this.dividerThickness,
    this.headingRowHeight,
    this.dataRowHeight,
    this.sortArrowBuilder,
    this.sortColumnIndex,
    this.sortAscending,
  }) : super(key: key);
  final double? minWidth;
  final double? dividerThickness;
  final double? headingRowHeight;
  final double? dataRowHeight;
  final List<DataColumn2> columns;
  final List<DataRow2> rows;
  final Widget? Function(bool, bool)? sortArrowBuilder;
  final int? sortColumnIndex;
  final bool? sortAscending;

  @override
  Widget build(BuildContext context) {
    return DataTable2(
        scrollController: null,
        columnSpacing: 20,
        sortArrowIcon: Icons.cabin,
        sortArrowBuilder: sortArrowBuilder,
        sortColumnIndex: sortColumnIndex,
        sortAscending: sortAscending ?? true,
        minWidth: minWidth,
        dividerThickness: dividerThickness,
        headingRowHeight: headingRowHeight,
        dataRowHeight: dataRowHeight,
        showBottomBorder: true,
        border: TableBorder(
          horizontalInside: BorderSide(
            color: AppColor.dividerColor.val,
            width: .1,
          ),
        ),
        columns: columns,
        headingRowColor:
            MaterialStateProperty.all(AppColor.rowBackgroundColor.val),
        rows: rows);
  }
}
