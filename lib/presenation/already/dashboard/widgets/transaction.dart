
import 'package:admin_580_tech/core/color.dart';
import 'package:admin_580_tech/core/image.dart';
import 'package:admin_580_tech/core/string.dart';
import 'package:admin_580_tech/core/text.dart';
import 'package:admin_580_tech/core/theme.dart';
import 'package:admin_580_tech/presenation/widget/already/datatable.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';


class Transaction extends StatefulWidget {
  const Transaction({Key? key}) : super(key: key);

  @override
  State<Transaction> createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: ColorConst.primary.withOpacity(0.5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
      ),
      elevation: 7,
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ConstText.lightText(
              text: Strings.latestOrder,
              fontWeight: FontWeight.bold,
            ),
            FxBox.h10,
            ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: (56.0 * 10) + 72.0),
              child: DataTable3(
                showCheckboxColumn: false,
                showBottomBorder: true,
                columnSpacing: 20.0,
                minWidth: 728.0,
                dataRowHeight: 56.0,
                headingRowHeight: 64.0,
                border: TableBorder(
                  bottom: BorderSide(
                    width: 1,
                    color: isDark
                        ? ColorConst.white.withOpacity(0.25)
                        : Colors.grey.shade200,
                  ),
                  horizontalInside: BorderSide(
                    width: 1,
                    color: isDark
                        ? ColorConst.white.withOpacity(0.25)
                        : Colors.grey.shade50,
                  ),
                ),
                columns: [
                  DataColumn2(
                    label: _tableHeader(Strings.id),
                    size: ColumnSize.S,
                  ),
                  DataColumn2(
                    label: _tableHeader(Strings.name),
                    size: ColumnSize.L,
                  ),
                  DataColumn2(
                    label: _tableHeader(Strings.product),
                    size: ColumnSize.M,
                  ),
                  DataColumn2(
                    label: _tableHeader(Strings.orderDate),
                    size: ColumnSize.L,
                  ),
                  DataColumn2(
                    label: _tableHeader(Strings.amount),
                    size: ColumnSize.M,
                  ),
                  DataColumn2(
                    label: _tableHeader(Strings.deliveryStatus),
                    size: ColumnSize.L,
                  ),
                  DataColumn2(
                    label: _tableHeader(''),
                    size: ColumnSize.S,
                  ),
                ],
                rows: [
                  DataRow(
                    onSelectChanged: (value) {},
                    cells: [
                      DataCell(_tableHeader('1')),
                      DataCell(_tableRowImage('Jane Deo')),
                      DataCell(_tableHeader(Strings.website)),
                      DataCell(_tableHeader('November 15, 2022')),
                      DataCell(_tableHeader('\$90')),
                      DataCell(_statusBox(ColorConst.successDark, 'Delivered')),
                      DataCell(_editButton()),
                    ],
                  ),
                  DataRow(
                    onSelectChanged: (value) {},
                    cells: [
                      DataCell(_tableHeader('2')),
                      DataCell(_tableRowImage('Joe Blow')),
                      DataCell(_tableHeader(Strings.mobileApp)),
                      DataCell(_tableHeader('November 17, 2022')),
                      DataCell(_tableHeader('\$127')),
                      DataCell(_statusBox(ColorConst.warningDark, 'Pending')),
                      DataCell(_editButton()),
                    ],
                  ),
                  DataRow(
                    onSelectChanged: (value) {},
                    cells: [
                      DataCell(_tableHeader('3')),
                      DataCell(_tableRowImage('Jhon Wick')),
                      DataCell(_tableHeader(Strings.website)),
                      DataCell(_tableHeader('November 3, 2022')),
                      DataCell(_tableHeader('\$107')),
                      DataCell(_statusBox(ColorConst.successDark, 'Delivered')),
                      DataCell(_editButton()),
                    ],
                  ),
                  DataRow(
                    onSelectChanged: (value) {},
                    cells: [
                      DataCell(_tableHeader('4')),
                      DataCell(_tableRowImage('Joe Wick')),
                      DataCell(_tableHeader(Strings.desktopApp)),
                      DataCell(_tableHeader('November 18, 2022')),
                      DataCell(_tableHeader('\$109')),
                      DataCell(_statusBox(ColorConst.errorDark, 'Cancel')),
                      DataCell(_editButton()),
                    ],
                  ),
                  DataRow(
                    onSelectChanged: (value) {},
                    cells: [
                      DataCell(_tableHeader('5')),
                      DataCell(_tableRowImage('Jane Blow')),
                      DataCell(_tableHeader(Strings.desktopApp)),
                      DataCell(_tableHeader('November 12, 2022')),
                      DataCell(_tableHeader('\$120')),
                      DataCell(_statusBox(ColorConst.successDark, 'Delivered')),
                      DataCell(_editButton()),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _tableHeader(String text) {
    return ConstText.lightText(
      text: text,
      fontWeight: FontWeight.w700,
    );
  }

  Widget _tableRowImage(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const CircleAvatar(
          maxRadius: 15,
          backgroundImage: AssetImage(Images.profileImage),
        ),
        FxBox.w10,
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }

  Widget _statusBox(
    Color? color,
    String text,
  ) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.w700,
        color: color,
      ),
    );
  }

  Widget _editButton() {
    return IconButton(
      onPressed: () {},
      icon: const Icon(Icons.mode_edit_rounded),
    );
  }
}
