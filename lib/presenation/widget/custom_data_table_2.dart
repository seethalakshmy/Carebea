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
  }) : super(key: key);
  final double? minWidth;
  final double? dividerThickness;
  final double? headingRowHeight;
  final double? dataRowHeight;
  final List<DataColumn2> columns;
  final List<DataRow2> rows;

  @override
  Widget build(BuildContext context) {
    return DataTable2(
        minWidth: minWidth,
        dividerThickness: dividerThickness,
        headingRowHeight: headingRowHeight,
        dataRowHeight: dataRowHeight,
        columns: columns,
        rows: rows);
  }
}
