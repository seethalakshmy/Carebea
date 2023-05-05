import 'package:admin_580_tech/core/color.dart';
import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/core/image.dart';
import 'package:admin_580_tech/core/properties.dart';
import 'package:admin_580_tech/core/responsive.dart';
import 'package:admin_580_tech/core/string.dart';
import 'package:admin_580_tech/core/string_extension.dart';
import 'package:admin_580_tech/core/text_styles.dart';
import 'package:admin_580_tech/core/theme.dart';
import 'package:admin_580_tech/presenation/caregivers/widgets/header_view.dart';
import 'package:admin_580_tech/presenation/widget/cached_image.dart';
import 'package:admin_580_tech/presenation/widget/custom_card.dart';
import 'package:admin_580_tech/presenation/widget/custom_column.dart';
import 'package:admin_580_tech/presenation/widget/custom_container.dart';
import 'package:admin_580_tech/presenation/widget/custom_data_table_2.dart';
import 'package:admin_580_tech/presenation/widget/custom_row.dart';
import 'package:admin_580_tech/presenation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presenation/widget/custom_wrap.dart';
import 'package:admin_580_tech/presenation/widget/empty_view.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterx/flutterx.dart';
import 'package:shimmer/shimmer.dart';

import '../../application/bloc/caregivers/caregivers_bloc.dart';
import '../../domain/caregivers/care_givers_response.dart';
import '../../infrastructure/caregivers/caregivers_repository.dart';
import '../widget/custom_expanded.dart';
import '../widget/custom_text.dart';
import '../widget/error_view.dart';

class CareGiversPage extends StatefulWidget {
  const CareGiversPage({Key? key}) : super(key: key);

  @override
  State<CareGiversPage> createState() => _CareGiversPageState();
}

class _CareGiversPageState extends State<CareGiversPage> {
  late CareGiversBloc _dataTableBloc;

  List<Caregivers> mCareGiverList = [];
  List<int> shimmerList = List.generate(10, (index) => (index));
  int totalPages = 1;
  final int _dropValue = 10;
  int _page = 1;
  int pageIndex = 0;

  @override
  void initState() {
    super.initState();
    _dataTableBloc = CareGiversBloc(CareGiversRepository());
  }

  @override
  Widget build(BuildContext context) {
    Widget? view;
    return CustomColumn(
      children: [
        const HeaderView(),
        CustomSizedBox(height: DBL.twenty.val),
        BlocProvider(
          create: (context) => _dataTableBloc
            ..add(CareGiversEvent.getCareGivers(
                page: INT.one.val, limit: INT.ten.val)),
          child: _bodyView(view),
        ),
      ],
    );
  }

  CustomCard _bodyView(Widget? view) {
    return CustomCard(
      shape: PR().roundedRectangleBorder(DBL.eighteen.val),
      elevation: DBL.seven.val,
      child: CustomContainer(
        padding: const EdgeInsets.all(20),
        child: BlocBuilder<CareGiversBloc, CareGiversState>(
          builder: (context, state) {
            state.when(loading: () {
              view = loaderView();
            }, success: (CaregiversResponse? value) {
              view = _caregiversView(context, value);
            }, error: (String? msg, bool? isClientError) {
              view = ErrorView(
                errorMessage: msg,
                isClientError: isClientError,
              );
            });
            return view!;
          },
        ),
      ),
    );
  }

  loaderView() {
    return CustomSizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CustomText3(
                Strings.recent.trim(),
                style: TS().style(
                  fontSize: FS.font18.val,
                  fontWeight: FW.bold.val,
                ),
              ),
              CustomSizedBox(height: DBL.ten.val),
              CustomSizedBox(
                  height: 950,
                  child: Shimmer.fromColors(
                    baseColor: Colors.grey[400]!,
                    highlightColor: Colors.grey[300]!,
                    child: CDataTable2(
                      minWidth: 950,
                      dividerThickness: 1.0,
                      headingRowHeight: 48,
                      dataRowHeight: 48,
                      columns: [
                        DataColumn2(
                          size: ColumnSize.S,
                          label: _columnsView(
                              text: Strings.id, fontWeight: FontWeight.bold),
                        ),
                        DataColumn2(
                          size: ColumnSize.L,
                          label: _columnsView(
                              text: Strings.name, fontWeight: FontWeight.bold),
                        ),
                        DataColumn2(
                          size: ColumnSize.L,
                          label: _columnsView(
                              text: Strings.emailID,
                              fontWeight: FontWeight.bold),
                        ),
                        DataColumn2(
                          size: ColumnSize.L,
                          label: _columnsView(
                              text: Strings.phoneNo.capitalize(),
                              fontWeight: FontWeight.bold),
                        ),
                        DataColumn2(
                          size: ColumnSize.M,
                          label: _columnsView(
                              text: Strings.status,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                      rows: shimmerList.asMap().entries.map((e) {
                        setIndex(e.key);
                        return DataRow2(
                          cells: [
                            DataCell(_rowsView(text: pageIndex.toString())),
                            DataCell(_rowsView(text: " ")),
                            DataCell(_rowsView(text: " ")),
                            DataCell(_rowsView(text: " ")),
                            DataCell(_statusBox(
                                ColorConst.successDark, " " ?? "No status")),
                          ],
                        );
                      }).toList(),
                    ),
                  ))
            ]));
  }

  _caregiversView(BuildContext context, CaregiversResponse? value) {
    if (value?.status ?? false) {
      if (value?.data?.caregivers != null &&
          value!.data!.caregivers!.isNotEmpty) {
        totalPages = value.data!.pagination!.totals ?? 1;
        mCareGiverList.clear();
        mCareGiverList.addAll(value.data?.caregivers ?? []);
      }
    }

    return mCareGiverList.isNotEmpty
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CustomText3(
                Strings.recent.trim(),
                style: TS().style(
                  fontSize: FS.font18.val,
                  fontWeight: FW.bold.val,
                ),
              ),
              CustomSizedBox(height: DBL.ten.val),
              CustomSizedBox(
                height: totalPages < _dropValue
                    ? (totalPages * 48)
                    : (_dropValue + 1) * 48,
                child: _caregiversTable(),
              ),
              CustomSizedBox(height: DBL.twenty.val),
              Responsive.isMobile(context)
                  ? CustomColumn(
                      children: _paginationView(),
                    )
                  : CustomRow(
                      mainAxisAlignment: EMainAxisAlignment.end.val,
                      children: _paginationView(),
                    )
            ],
          )
        : const EmptyView(title: "No caregivers found!");
  }

  CDataTable2 _caregiversTable() {
    return CDataTable2(
      minWidth: 950,
      dividerThickness: 1.0,
      headingRowHeight: 48,
      dataRowHeight: 48,
      columns: [
        DataColumn2(
          size: ColumnSize.S,
          label: _columnsView(text: Strings.id, fontWeight: FontWeight.bold),
        ),
        DataColumn2(
          size: ColumnSize.L,
          label: _columnsView(text: Strings.name, fontWeight: FontWeight.bold),
        ),
        DataColumn2(
          size: ColumnSize.L,
          label:
              _columnsView(text: Strings.emailID, fontWeight: FontWeight.bold),
        ),
        DataColumn2(
          size: ColumnSize.L,
          label: _columnsView(
              text: Strings.phoneNo.capitalize(), fontWeight: FontWeight.bold),
        ),
        DataColumn2(
          size: ColumnSize.M,
          label:
              _columnsView(text: Strings.status, fontWeight: FontWeight.bold),
        ),
      ],
      rows: mCareGiverList.asMap().entries.map((e) {
        setIndex(e.key);
        var item = e.value;
        return DataRow2(
          cells: [
            DataCell(_rowsView(text: pageIndex.toString())),
            DataCell(_tableRowImage(
                "${item.name?.firstName} ${item.name?.lastName}",
                item.profile ?? "")),
            DataCell(_rowsView(text: item.email ?? "")),
            DataCell(_rowsView(text: item.mobile)),
            DataCell(_statusBox(
                ColorConst.successDark, item.onBoardingStatus ?? "No status")),
          ],
        );
      }).toList(),
    );
  }

  List<Widget> _paginationView() {
    return [
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: CustomRow(
          mainAxisAlignment: EMainAxisAlignment.center.val,
          children: [
            FxButton(
              onPressed: () {
                if (_page > 1) {
                  _page = _page - 1;
                  _dataTableBloc.add(CareGiversEvent.getCareGivers(
                      page: _page, limit: INT.ten.val));
                }
              },
              text: 'Previous',
              borderRadius: 0.0,
              borderWidth: 0.0,
              color: ColorConst.white,
              textColor: isDark
                  ? null
                  : Theme.of(context).colorScheme.onPrimaryContainer,
            ),
            CWrap(
              children: List.generate(
                (totalPages / _dropValue).ceil(),
                (index) {
                  int pageIndex = index + 1;
                  return FxButton(
                    text: pageIndex.toString(),
                    borderRadius: 0.0,
                    minWidth: 16.0,
                    color: _page == pageIndex
                        ? isDark
                            ? Theme.of(context).colorScheme.inversePrimary
                            : Theme.of(context).colorScheme.onPrimaryContainer
                        : ColorConst.white,
                    textColor: _page == pageIndex
                        ? ColorConst.white
                        : isDark
                            ? null
                            : Theme.of(context).colorScheme.onPrimaryContainer,
                    borderWidth: 0.0,
                    onPressed: () {
                      _page = pageIndex;

                      _dataTableBloc.add(CareGiversEvent.getCareGivers(
                          page: _page, limit: INT.ten.val));
                    },
                  );
                },
              ),
            ),
            FxButton(
              onPressed: () {
                if (_page <= (totalPages / _dropValue).ceil() - 1) {
                  _page = _page + 1;
                  _dataTableBloc.add(CareGiversEvent.getCareGivers(
                      page: _page, limit: INT.ten.val));
                }
              },
              text: Strings.next,
              borderRadius: 0.0,
              borderWidth: 0.0,
              color: ColorConst.white,
              textColor: isDark
                  ? null
                  : Theme.of(context).colorScheme.onPrimaryContainer,
            ),
          ],
        ),
      )
    ];
  }

  Widget _rowsView({
    String? text,
  }) {
    return CustomText3(
      '$text',
      softWrap: true,
      style: TS().style(fontSize: DBL.thirteen.val, fontWeight: FW.w500.val),
      textAlign: TA.center.val,
    );
  }

  Widget _columnsView(
      {String? text, FontWeight? fontWeight = FontWeight.w700}) {
    return CustomText3(
      '$text',
      softWrap: true,
      style: TS().style(fontSize: DBL.fifteen.val, fontWeight: FW.w700.val),
      textAlign: TA.center.val,
    );
  }

  Widget _tableRowImage(String text, String imgUrl) {
    return CustomRow(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: CachedImage(
              height: DBL.thirty.val, width: DBL.thirty.val, imgUrl: imgUrl),
        ),
        CustomSizedBox(width: DBL.ten.val),
        CExpanded(
          child: CustomText3(
            text,
            style:
                TS().style(fontSize: DBL.thirteen.val, fontWeight: FW.w500.val),
          ),
        ),
      ],
    );
  }

  Widget _statusBox(
    Color? color,
    String text,
  ) {
    return CustomText3(
      text,
      style: TS().style(
        fontWeight: FW.w700.val,
        color: color,
      ),
    );
  }

  setIndex(int index) {
    if (_page == 1) {
      pageIndex = index + 1;
    } else {
      pageIndex = ((_page * _dropValue) - 10) + index + 1;
    }
  }
}
