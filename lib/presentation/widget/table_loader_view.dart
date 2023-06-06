
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../core/enum.dart';
import '../../core/text_styles.dart';
import 'custom_data_table_2.dart';
import 'custom_sizedbox.dart';
import 'custom_text.dart';

class TableLoaderView extends StatelessWidget {

  const TableLoaderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<int> shimmerList = List.generate(10, (index) => (index));
    return CustomSizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CustomSizedBox(height: DBL.ten.val),
              CustomSizedBox(
                  height: 950,
                  child: Shimmer.fromColors(
                    baseColor: AppColor.rowBackgroundColor.val,
                    highlightColor: AppColor.rowBackgroundColor.val,
                    child: CDataTable2(
                      minWidth: 950,
                      dividerThickness: 1.0,
                      headingRowHeight: 48,
                      dataRowHeight: 48,
                      columns: [
                        DataColumn2(
                          size: ColumnSize.S,
                          label: _columnsView(
                            text: AppString.slNo.val,
                          ),
                        ),
                        DataColumn2(
                          size: ColumnSize.S,
                          label: _columnsView(
                            text: AppString.id.val,
                          ),
                        ),
                        DataColumn2(
                          size: ColumnSize.L,
                          label: _columnsView(
                            text: AppString.name.val,
                          ),
                        ),
                        DataColumn2(
                          size: ColumnSize.L,
                          // fixedWidth: 500,
                          label: _columnsView(
                            text: AppString.emailAddress.val,
                          ),
                        ),
                        DataColumn2(
                          size: ColumnSize.L,
                          label: _columnsView(text: AppString.phoneNumber.val),
                        ),
                        DataColumn2(
                          size: ColumnSize.L,
                          label: _columnsView(text: AppString.role.val),
                        ),
                        DataColumn2(
                          size: ColumnSize.L,
                          label: _columnsView(
                            text: AppString.status.val,
                          ),
                        ),
                      ],
                      rows: shimmerList.asMap().entries.map((e) {
                      int  pageIndex = e.key + 1;
                        return DataRow2(
                          cells: [
                            DataCell(_rowsView(text: pageIndex.toString())),
                            DataCell(_rowsView(text: " ")),
                            DataCell(_rowsView(text: " ")),
                            DataCell(_rowsView(text: " ")),
                            DataCell(_rowsView(text: " ")),
                            DataCell(_rowsView(text: " ")),
                            DataCell(_rowsView(text: " ")),
                          ],
                        );
                      }).toList(),
                    ),
                  ))
            ]));
  }

  Widget _rowsView(
      {
    String? text,
  }) {
    return CustomText3(
      '$text',
      softWrap: true,
      style: TS().gRoboto(
          fontSize:DBL.thirteenPointFive.val,
          fontWeight: FW.w400.val,
          color: AppColor.rowColor.val),
      textAlign: TextAlign.start,
    );
  }
  Widget _columnsView(
      {String? text, FontWeight? fontWeight = FontWeight.w600}) {
    return CustomText3(
      '$text',
      softWrap: true,
      style: TS().gRoboto(
          fontSize:
         DBL.fourteen.val,
          fontWeight: fontWeight,
          color: AppColor.columColor.val),
      textAlign: TextAlign.center,
    );
  }

}
